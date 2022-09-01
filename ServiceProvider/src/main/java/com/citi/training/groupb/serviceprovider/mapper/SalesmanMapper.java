package com.citi.training.groupb.serviceprovider.mapper;

import com.citi.training.groupb.serviceprovider.entity.Salesman;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-30
 */
@Mapper
public interface SalesmanMapper extends BaseMapper<Salesman> {
    Salesman selectByName(String salesmanName);

    Salesman selectFirstSalesman();
}
