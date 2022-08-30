package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.SharesHistory;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.servicedemo.vo.DailySummary;

import java.util.List;

/**
 * <p>
 * 股票记录表（日结） 服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-29
 */
public interface SharesHistoryService extends IService<SharesHistory> {
    List<DailySummary> getSummaryInTime(String timeGap);
}
