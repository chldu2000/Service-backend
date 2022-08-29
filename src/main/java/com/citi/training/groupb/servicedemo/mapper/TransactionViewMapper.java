package com.citi.training.groupb.servicedemo.mapper;

import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 * VIEW Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-25
 */
@Mapper
public interface TransactionViewMapper extends BaseMapper<TransactionView> {

    List<TransactionView> selectAll();

    List<TransactionView> selectBeforeDate(String date);
}
