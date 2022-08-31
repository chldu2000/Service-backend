package com.citi.training.groupb.serviceprovider.service.impl;

import com.citi.training.groupb.serviceprovider.entity.ExchangeRate;
import com.citi.training.groupb.serviceprovider.mapper.ExchangeRateMapper;
import com.citi.training.groupb.serviceprovider.service.ExchangeRateService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 汇率表 服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-39-25
 */
@Service
public class ExchangeRateServiceImpl extends ServiceImpl<ExchangeRateMapper, ExchangeRate> implements ExchangeRateService {
    private final ExchangeRateMapper exchangeRateMapper;

    public ExchangeRateServiceImpl(ExchangeRateMapper exchangeRateMapper) {
        this.exchangeRateMapper = exchangeRateMapper;
    }

    @Override
    public List<ExchangeRate> getExchangeRateByID(String currencyID) {
        List<ExchangeRate> exchangeRateList = new ArrayList<>();
        exchangeRateList.add(exchangeRateMapper.selectById(currencyID));
        return exchangeRateList;
    }

    @Override
    public List<ExchangeRate> getExchangeRateByName(String currencyName) {
        return exchangeRateMapper.selectByCurrencyName(currencyName);
    }
}
