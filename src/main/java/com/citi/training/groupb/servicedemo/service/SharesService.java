package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.Shares;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.servicedemo.vo.SharesPrice;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
public interface SharesService extends IService<Shares> {
    List<Shares> getShareByRIC(String shareRIC);

    List<Shares> getShareByTicker(String ticker);

    SharesPrice getPriceByRic(String ric);
}
