package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.ExchangeRate;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 汇率表 服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-39-25
 */
public interface ExchangeRateService extends IService<ExchangeRate> {
    List<ExchangeRate> getExchangeRateByID(String currencyID);

    List<ExchangeRate> getExchangeRateByName(String currencyName);
}
