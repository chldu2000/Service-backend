package com.citi.training.groupb.servicedemo.service.impl;

import com.citi.training.groupb.servicedemo.entity.TransactionRecords;
import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.mapper.TransactionRecordsMapper;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

    public TransactionRecordsServiceImpl(TransactionRecordsMapper transactionRecordsMapper) {
        this.transactionRecordsMapper = transactionRecordsMapper;
    }

    @Override
    public boolean insertOneTransaction(TransactionView transactionView) {
        // operation
        return true;
    }
}
