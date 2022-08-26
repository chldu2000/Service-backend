package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.mapper.TransactionViewMapper;
import com.citi.training.groupb.servicedemo.service.TransactionViewService;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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

    public List<TransactionView> getAllTransaction() {
        return transactionViewMapper.selectAll();
    }

    @Override
    public List<TransactionView> getTransactionInDays(String timeGap) {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        switch (timeGap) {
            case "1D" -> calendar.add(Calendar.DATE, 0);
            case "1W" -> calendar.add(Calendar.DATE, -6);
            case "2W" -> calendar.add(Calendar.DATE, -13);
            case "1M" -> calendar.add(Calendar.MONTH, -1);
            case "3M" -> calendar.add(Calendar.MONTH, -3);
            case "6M" -> calendar.add(Calendar.MONTH, -6);
            case "1Y" -> calendar.add(Calendar.YEAR, -1);
            default -> {
                return getAllTransaction();
            }
        }
        String start_date = dateFormat.format(calendar.getTime());
        return transactionViewMapper.selectBeforeDate(start_date);
    }

    @Override
    public void insertOneTransaction(TransactionView transactionView) {

    }
}
