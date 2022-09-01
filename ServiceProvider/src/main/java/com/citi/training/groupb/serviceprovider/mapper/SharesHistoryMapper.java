package com.citi.training.groupb.serviceprovider.mapper;

import com.citi.training.groupb.serviceprovider.entity.SharesHistory;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.citi.training.groupb.serviceprovider.vo.response.DailySummary;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 * 股票记录表（日结） Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-29
 */
@Mapper
public interface SharesHistoryMapper extends BaseMapper<SharesHistory> {
    List<DailySummary> selectDailySummary(String startTime);

    List<DailySummary> selectAll();
}
