package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.SharesHistory;
import com.citi.training.groupb.servicedemo.entity.TransactionRecords;
import com.citi.training.groupb.servicedemo.mapper.SharesHistoryMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.mapper.TransactionRecordsMapper;
import com.citi.training.groupb.servicedemo.service.SharesHistoryService;
import com.citi.training.groupb.servicedemo.vo.DailySummary;
import com.citi.training.groupb.servicedemo.vo.TransactionView;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
    private final SharesHistoryMapper sharesHistoryMapper;

    private final TransactionRecordsMapper transactionRecordsMapper;

    public SharesHistoryServiceImpl(SharesHistoryMapper sharesHistoryMapper, TransactionRecordsMapper transactionRecordsMapper) {
        this.sharesHistoryMapper = sharesHistoryMapper;
        this.transactionRecordsMapper = transactionRecordsMapper;
    }

    @Override
    public List<DailySummary> getSummaryInTime(String timeGap) {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        switch (timeGap) {
            case "1D" -> {
                // "shares_history" of "today" in database may be null, use transactions (1)
                String dateDisplay = dateFormat.format(calendar.getTime());
                calendar.add(Calendar.DATE, -1);
                String startDate = dateFormat.format(calendar.getTime());
                List<TransactionView> list = transactionRecordsMapper.selectAfterDate(startDate);
                DailySummary summary = new DailySummary(dateDisplay, 0.0, 0.0, 0.0);
                for (TransactionView record : list) {
                    Double totalNotional = record.getNotionalUsd() * record.getSize();
                    if (record.getClientSide() == 1) {
                        summary.setBuy(summary.getBuy() + totalNotional);
                    } else {
                        summary.setSell(summary.getSell() + totalNotional);
                    }
                }
                summary.setCumulativeNet(summary.getBuy() - summary.getSell());
                List<DailySummary> res = new ArrayList<>();
                res.add(summary);
                return res;
            }
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
        // due to (1), maybe we should append summary today to the end of this list
        return sharesHistoryMapper.selectDailySummary(start_date);
    }
}
