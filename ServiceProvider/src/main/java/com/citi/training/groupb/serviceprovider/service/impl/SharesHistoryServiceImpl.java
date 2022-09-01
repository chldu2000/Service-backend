package com.citi.training.groupb.serviceprovider.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.serviceprovider.entity.ExchangeRate;
import com.citi.training.groupb.serviceprovider.entity.Shares;
import com.citi.training.groupb.serviceprovider.entity.SharesHistory;
import com.citi.training.groupb.serviceprovider.mapper.ExchangeRateMapper;
import com.citi.training.groupb.serviceprovider.mapper.SharesHistoryMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.serviceprovider.mapper.SharesMapper;
import com.citi.training.groupb.serviceprovider.mapper.TransactionRecordsMapper;
import com.citi.training.groupb.serviceprovider.service.SharesHistoryService;
import com.citi.training.groupb.serviceprovider.vo.response.DailySummary;
import com.citi.training.groupb.serviceprovider.vo.response.TransactionView;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;

/**
 * <p>
 * 股票记录表（日结） 服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-29
 */
@Service
public class SharesHistoryServiceImpl extends ServiceImpl<SharesHistoryMapper, SharesHistory> implements SharesHistoryService {
    private final SharesMapper sharesMapper;

    private final SharesHistoryMapper sharesHistoryMapper;

    private final TransactionRecordsMapper transactionRecordsMapper;

    private final ExchangeRateMapper exchangeRateMapper;

    public SharesHistoryServiceImpl(SharesMapper sharesMapper, SharesHistoryMapper sharesHistoryMapper, TransactionRecordsMapper transactionRecordsMapper, ExchangeRateMapper exchangeRateMapper) {
        this.sharesMapper = sharesMapper;
        this.sharesHistoryMapper = sharesHistoryMapper;
        this.transactionRecordsMapper = transactionRecordsMapper;
        this.exchangeRateMapper = exchangeRateMapper;
    }

    @Override
    public void insertHistory(String date) {

        List<Shares> sharesList = sharesMapper.selectList(new QueryWrapper<>());
        for (Shares shares : sharesList) {
            SharesHistory history = new SharesHistory(null, shares.getRic(), 0.0, (long)0, (long)0, LocalDate.parse(date));

            // use USD in closing price
            ExchangeRate rate = exchangeRateMapper.selectById(shares.getCurrencyId());
            Double closingPrice = transactionRecordsMapper.selectLatestPrice(shares.getRic(), date);
            history.setClosingPrice((closingPrice == null ? shares.getSharesPrice() : closingPrice) * rate.getCurrencyRate());

            Long inSize = transactionRecordsMapper.selectTradeSize(shares.getRic(), date, "buy");
            Long outSize = transactionRecordsMapper.selectTradeSize(shares.getRic(), date, "sell");
            history.setTransactionIn(inSize == null ? 0 : inSize);
            history.setTransactionOut(outSize == null ? 0 : outSize);

            sharesHistoryMapper.insert(history);
        }
    }

    @Override
    public DailySummary getSummaryOfToday() {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String dateDisplay = dateFormat.format(calendar.getTime());
        calendar.add(Calendar.DATE, -1);
        String startDate = dateFormat.format(calendar.getTime());

        List<TransactionView> list = transactionRecordsMapper.selectAfterDate(startDate);
        DailySummary summary = new DailySummary(dateDisplay, 0.0, 0.0, 0.0);
        for (TransactionView record : list) {
            Double totalNotional = record.getNotionalUsd() * record.getSize();
            if (record.getClientSide().equals("buy")) {
                summary.setBuy(summary.getBuy() + totalNotional);
            } else {
                summary.setSell(summary.getSell() + totalNotional);
            }
        }
        summary.setCumulativeNet(summary.getBuy() - summary.getSell());
        return summary;
    }

    @Override
    public List<DailySummary> getSummaryInTime(String timeGap) {
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
                return sharesHistoryMapper.selectAll();
            }
        }
        String start_date = dateFormat.format(calendar.getTime());
        // table shares_history will not include summary of today, add it to the end of list
        // use price in table shares to calculate totalBuy and totalSell
        List<DailySummary> summaries = sharesHistoryMapper.selectDailySummary(start_date);
        summaries.add(getSummaryOfToday());
        return summaries;
    }
}
