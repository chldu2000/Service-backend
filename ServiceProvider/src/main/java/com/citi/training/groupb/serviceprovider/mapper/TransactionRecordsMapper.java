package com.citi.training.groupb.serviceprovider.mapper;

import com.citi.training.groupb.serviceprovider.entity.TransactionRecords;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.citi.training.groupb.serviceprovider.vo.response.TransactionView;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Mapper
public interface TransactionRecordsMapper extends BaseMapper<TransactionRecords> {
    Long selectHoldByUser(String ric, String userId);

    List<TransactionView> selectAll();

    List<TransactionView> selectAfterDate(String startTime);

    Double selectLatestPrice(String ric, String date);

    Long selectTradeSize(String ric, String date, String side);
}
