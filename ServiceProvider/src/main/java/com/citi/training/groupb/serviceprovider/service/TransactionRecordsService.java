package com.citi.training.groupb.serviceprovider.service;

import com.citi.training.groupb.serviceprovider.entity.TransactionRecords;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.serviceprovider.vo.NLPTransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.TransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.TransactionSummary;
import com.citi.training.groupb.serviceprovider.vo.TransactionView;

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

    int insertOneNLPTransaction(NLPTransactionRequest transactionRequest);

    List<TransactionView> getTransactionInTime(String timeGap);

    TransactionSummary getTransactionSummaryInTime(String timeGap);

}
