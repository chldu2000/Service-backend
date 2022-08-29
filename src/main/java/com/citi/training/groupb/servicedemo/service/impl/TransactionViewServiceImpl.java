package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.mapper.TransactionViewMapper;
import com.citi.training.groupb.servicedemo.service.TransactionViewService;
import com.citi.training.groupb.servicedemo.vo.TransactionSummary;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * VIEW 服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-25
 */
@Service
public class TransactionViewServiceImpl extends ServiceImpl<TransactionViewMapper, TransactionView> implements TransactionViewService {
    TransactionViewMapper transactionViewMapper;

    public TransactionViewServiceImpl(TransactionViewMapper transactionViewMapper) {
        this.transactionViewMapper = transactionViewMapper;
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
                return transactionViewMapper.selectAll();
            }
        }
        String start_date = dateFormat.format(calendar.getTime());
        return transactionViewMapper.selectBeforeDate(start_date);
    }

    @Override
    public TransactionSummary getTransactionSummaryInTime(String timeGap) {
        List<TransactionView> list = getTransactionInTime(timeGap);
        TransactionSummary summary = new TransactionSummary(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, list);
        summary.setList(list);

        for (TransactionView transaction : list) {
            Double totalPrice = transaction.getPrice() * transaction.getSize();
            Double totalNotional = transaction.getNotionalUsd() * transaction.getSize();
            if (transaction.getClientSide() == 0) {
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
