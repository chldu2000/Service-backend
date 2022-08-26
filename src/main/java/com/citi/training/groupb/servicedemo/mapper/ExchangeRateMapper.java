package com.citi.training.groupb.servicedemo.mapper;

import com.citi.training.groupb.servicedemo.entity.ExchangeRate;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

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

}
