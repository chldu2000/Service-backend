package com.citi.training.groupb.serviceprovider.service;

import com.citi.training.groupb.serviceprovider.entity.SharesHistory;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.serviceprovider.vo.response.DailySummary;

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
    void insertHistory(String date);

    DailySummary getSummaryOfToday();

    List<DailySummary> getSummaryInTime(String timeGap);
}
