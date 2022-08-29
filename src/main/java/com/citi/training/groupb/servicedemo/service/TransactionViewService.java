package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * VIEW 服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-25
 */
public interface TransactionViewService extends IService<TransactionView> {
    List<TransactionView> getAllTransaction();

    List<TransactionView> getTransactionInTime(String timeGap);

}
