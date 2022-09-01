package com.citi.training.groupb.serviceprovider.mapper;

import com.citi.training.groupb.serviceprovider.entity.ExchangeRate;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 * 汇率表 Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-39-25
 */
@Mapper
public interface ExchangeRateMapper extends BaseMapper<ExchangeRate> {
    ExchangeRate selectByCurrencyName(String currencyName);
}
