package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.TransactionRecords;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.servicedemo.vo.TransactionRequest;
import com.citi.training.groupb.servicedemo.vo.TransactionSummary;
import com.citi.training.groupb.servicedemo.vo.TransactionView;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
public interface TransactionRecordsService extends IService<TransactionRecords> {
    int insertOneTransaction(TransactionRequest transactionRequest);

    List<TransactionView> getTransactionInTime(String timeGap);

    TransactionSummary getTransactionSummaryInTime(String timeGap);
}
