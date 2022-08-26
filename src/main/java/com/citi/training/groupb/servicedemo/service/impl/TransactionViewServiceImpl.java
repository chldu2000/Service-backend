package com.citi.training.groupb.servicedemo.service.impl;

import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.mapper.TransactionViewMapper;
import com.citi.training.groupb.servicedemo.service.TransactionViewService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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
    public void insertOneTransaction(TransactionView transactionView) {

    }
}
