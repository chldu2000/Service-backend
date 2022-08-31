package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.*;
import com.citi.training.groupb.servicedemo.mapper.*;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.vo.SharesNumUpdate;
import com.citi.training.groupb.servicedemo.vo.TransactionRequest;
import com.citi.training.groupb.servicedemo.vo.TransactionSummary;
import com.citi.training.groupb.servicedemo.vo.TransactionView;
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
        List<User> targetUser = userMapper.selectByUserName(transactionRequest.getClientName());
        // query share with ric if ric is not null
        Shares targetShare = (transactionRequest.getRic() == null || transactionRequest.getRic().isBlank()) ?
            sharesMapper.selectByName(transactionRequest.getTicker()) :
            sharesMapper.selectById(transactionRequest.getRic());
        // query currency with currency name
        List<ExchangeRate> targetExchangeRate = exchangeRateMapper.selectByCurrencyName(transactionRequest.getCurrency());
        // query salesman with name
        List<Salesman> targetSalesman = salesmanMapper.selectByName(transactionRequest.getSalesperson());
        // all information above should not be null
        if (targetUser.isEmpty()) {
            return 1;
        } else if (targetShare == null) {
            return 2;
        } else if (targetExchangeRate.isEmpty()) {
            return 3;
        } else if (targetSalesman.isEmpty()) {
            return 4;
        } else if (targetShare.getSharesFlag() == 0) {
            // target share should be trade-able
            return 5;
        }
        // shares hold by "targetUser" should be less than "trade_limit"
        Long sharesHold = transactionRecordsMapper.selectHoldByUser(targetShare.getRic(), targetUser.get(0).getUserId());
        sharesHold = sharesHold == null ? 0 : sharesHold;
        Long sizeToTrade = transactionRequest.getSize().longValue() * (transactionRequest.getClientSide().equals("buy") ? 1 : -1);
        if (sharesHold + sizeToTrade > targetShare.getTradeLimit() || sharesHold + sizeToTrade < 0 || targetShare.getSharesNum() - sizeToTrade < 1) {
            return 6;
        }
        // optional: compare "ticker" input with "shares_name" in targetShare
        // Update shares_num
        sharesMapper.updateSharesNum(new SharesNumUpdate(targetShare.getRic(), targetShare.getSharesNum() - sizeToTrade));
        // any other checkup?
        TransactionRecords newRecord = new TransactionRecords();
        newRecord.setRic(transactionRequest.getRic());
        newRecord.setUserId(targetUser.get(0).getUserId());
        newRecord.setTransactionSize(transactionRequest.getSize());
        newRecord.setTransactionTime(LocalDateTime.now());
        newRecord.setSalesmanId(targetSalesman.get(0).getSalesmanId());
        newRecord.setCurrencyId(targetExchangeRate.get(0).getCurrencyId());
        newRecord.setTransactionPrice(transactionRequest.getPrice());
        newRecord.setTransactionFlag(transactionRequest.getClientSide());
        newRecord.setSharesHold(sizeToTrade + sharesHold);
        newRecord.setIssuerSector(transactionRequest.getIssuerSector());
        newRecord.setTransactionMode(transactionRequest.getHtPt());
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
        TransactionSummary summary = new TransactionSummary(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, list);
        summary.setList(list);

        for (TransactionView transaction : list) {
            Double totalPrice = transaction.getPrice() * transaction.getSize();
            Double totalNotional = transaction.getNotionalUsd() * transaction.getSize();
            if (transaction.getClientSide().equals("sell")) {
                // different transactions may user different currency...
                // so TotalSell and TotalBuy may be wrong...?
                summary.setTotalSell(summary.getTotalSell() + totalPrice);
                summary.setSellNotional(summary.getSellNotional() + totalNotional);
            } else {
                summary.setTotalBuy(summary.getTotalBuy() + totalPrice);
                summary.setBuyNotional(summary.getBuyNotional() + totalNotional);
            }
        }
        summary.setQuantity(summary.getTotalBuy() - summary.getTotalSell());
        summary.setNetNotional(summary.getBuyNotional() - summary.getSellNotional());
        return summary;
    }
}
