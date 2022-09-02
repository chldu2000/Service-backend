package com.citi.training.groupb.serviceprovider.service.impl;

import com.citi.training.groupb.serviceprovider.entity.*;
import com.citi.training.groupb.serviceprovider.mapper.*;
import com.citi.training.groupb.serviceprovider.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.serviceprovider.vo.request.NLPTransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.request.SharesNumUpdate;
import com.citi.training.groupb.serviceprovider.vo.request.TransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.response.TransactionSummary;
import com.citi.training.groupb.serviceprovider.vo.response.TransactionView;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Service
public class TransactionRecordsServiceImpl extends ServiceImpl<TransactionRecordsMapper, TransactionRecords> implements TransactionRecordsService {
    private final TransactionRecordsMapper transactionRecordsMapper;
    private final UserMapper userMapper;
    private final SharesMapper sharesMapper;
    private final ExchangeRateMapper exchangeRateMapper;
    private final SalesmanMapper salesmanMapper;

    public TransactionRecordsServiceImpl(TransactionRecordsMapper transactionRecordsMapper, UserMapper userMapper, SharesMapper sharesMapper, ExchangeRateMapper exchangeRateMapper, SalesmanMapper salesmanMapper) {
        this.transactionRecordsMapper = transactionRecordsMapper;
        this.userMapper = userMapper;
        this.sharesMapper = sharesMapper;
        this.exchangeRateMapper = exchangeRateMapper;
        this.salesmanMapper = salesmanMapper;
    }

    @Override
    public int insertOneTransaction(TransactionRequest transactionRequest) {
        // query user with username
        User targetUser = userMapper.selectByUserName(transactionRequest.getClientName());
        // query share with ric or ticker (shares_name)
        Shares targetShare = (transactionRequest.getRic() == null || transactionRequest.getRic().isBlank()) ?
                sharesMapper.selectByName(transactionRequest.getTicker()) :
                sharesMapper.selectById(transactionRequest.getRic());
        // query currency with currency name
        ExchangeRate targetExchangeRate = exchangeRateMapper.selectByCurrencyName(transactionRequest.getCurrency());
        // query salesman with name
        Salesman targetSalesman = salesmanMapper.selectByName(transactionRequest.getSalesperson());
        // all information above should not be null
        if (targetUser == null) {
            return 1;
        } else if (targetShare == null) {
            return 2;
        } else if (targetExchangeRate == null) {
            return 3;
        } else if (targetSalesman == null) {
            return 4;
        } else if (targetShare.getSharesFlag() == 0) {
            // target share should be trade-able
            return 5;
        } else if (transactionRequest.getSize() == null || transactionRequest.getSize() < 1) {
            return 6;
        } else if (transactionRequest.getIssuerSector() == null || transactionRequest.getIssuerSector().isBlank()) {
            return 7;
        }
        // shares hold by "targetUser" should be less than "trade_limit"
        Long sharesHold = transactionRecordsMapper.selectHoldByUser(targetShare.getRic(), targetUser.getUserId());
        sharesHold = sharesHold == null ? 0 : sharesHold;
        Long sizeToTrade = transactionRequest.getSize().longValue() * (transactionRequest.getClientSide().equals("buy") ? 1 : -1);
        if (sharesHold + sizeToTrade > targetShare.getTradeLimit() || sharesHold + sizeToTrade < 0 || targetShare.getSharesNum() - sizeToTrade < 1) {
            return 8;
        }
        // optional: compare "ticker" input with "shares_name" in targetShare
        // Update shares_num
        sharesMapper.updateSharesNum(new SharesNumUpdate(targetShare.getRic(), targetShare.getSharesNum() - sizeToTrade));
        // any other checkup?
        TransactionRecords newRecord = new TransactionRecords(
                null,
                transactionRequest.getRic(),
                targetUser.getUserId(),
                transactionRequest.getSize(),
                LocalDateTime.now(),
                targetSalesman.getSalesmanId(),
                targetExchangeRate.getCurrencyId(),
                transactionRequest.getPrice(),
                transactionRequest.getClientSide(),
                sizeToTrade + sharesHold,
                transactionRequest.getIssuerSector(),
                transactionRequest.getHtPt()
        );
        transactionRecordsMapper.insert(newRecord);
        return 0;
    }

    @Override
    public int insertOneNLPTransaction(NLPTransactionRequest transactionRequest) {
        Shares targetShare = sharesMapper.selectByName(transactionRequest.getTicker());
        if (targetShare == null) {
            return 1;
        } else if (transactionRequest.getSize() == null || transactionRequest.getSize() < 1) {
            return 2;
        }
        // set default user
        User targetUser = userMapper.selectFirstUser();
        // get shares_hold by default user, calculate sizeToTrade
        Long sharesHold = transactionRecordsMapper.selectHoldByUser(targetShare.getRic(), targetUser.getUserId());
        sharesHold = sharesHold == null ? 0 : sharesHold;
        Long sizeToTrade = transactionRequest.getSize().longValue() * (transactionRequest.getClientSide().equals("buy") ? 1 : -1);
        if (sharesHold + sizeToTrade > targetShare.getTradeLimit() || sharesHold + sizeToTrade < 0 || targetShare.getSharesNum() - sizeToTrade < 1) {
            return 3;
        }
        // set default salesman
        Salesman targetSalesman = salesmanMapper.selectFirstSalesman();
        // generate a new transaction record
        TransactionRecords newRecord = new TransactionRecords(
                null,
                targetShare.getRic(),
                targetUser.getUserId(),
                transactionRequest.getSize(),
                LocalDateTime.now(),
                targetSalesman.getSalesmanId(),
                targetShare.getCurrencyId(),
                targetShare.getSharesPrice(),
                transactionRequest.getClientSide(),
                sizeToTrade + sharesHold,
                "DefaultSector",
                0
        );
        transactionRecordsMapper.insert(newRecord);
        return 0;
    }

    @Override
    public List<TransactionView> getTransactionInTime(String timeGap) {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        switch (timeGap) {
            case "1D" -> calendar.add(Calendar.DATE, -1);
            case "1W" -> calendar.add(Calendar.DATE, -7);
            case "2W" -> calendar.add(Calendar.DATE, -14);
            case "1M" -> calendar.add(Calendar.MONTH, -1);
            case "3M" -> calendar.add(Calendar.MONTH, -3);
            case "6M" -> calendar.add(Calendar.MONTH, -6);
            case "1Y" -> calendar.add(Calendar.YEAR, -1);
            case "YTD" -> calendar.set(calendar.get(Calendar.YEAR), Calendar.JANUARY, 1);
            default -> {
                return transactionRecordsMapper.selectAll();
            }
        }
        String start_date = dateFormat.format(calendar.getTime());
        return transactionRecordsMapper.selectAfterDate(start_date);
    }

    @Override
    public TransactionSummary getTransactionSummaryInTime(String timeGap) {
        List<TransactionView> list = getTransactionInTime(timeGap);
        TransactionSummary summary = new TransactionSummary(0, 0, 0, 0.0, 0.0, 0.0, list);
        summary.setList(list);

        for (TransactionView transaction : list) {
            Integer transactionSize = transaction.getSize();
            // Double totalPrice = transaction.getPrice() * transaction.getSize();
            Double totalNotional = transaction.getNotionalUsd() * transaction.getSize();
            if (transaction.getClientSide().equals("sell")) {
                // different transactions may user different currency...
                // so TotalSell and TotalBuy may be wrong...?
                summary.setTotalSell(summary.getTotalSell() + transactionSize);
                summary.setSellNotional(summary.getSellNotional() + totalNotional);
            } else {
                summary.setTotalBuy(summary.getTotalBuy() + transactionSize);
                summary.setBuyNotional(summary.getBuyNotional() + totalNotional);
            }
        }
        summary.setQuantity(summary.getTotalBuy() - summary.getTotalSell());
        summary.setNetNotional(summary.getBuyNotional() - summary.getSellNotional());
        return summary;
    }
}
