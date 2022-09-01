package com.citi.training.groupb.serviceprovider.service;

import com.citi.training.groupb.serviceprovider.entity.Shares;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.serviceprovider.vo.response.SharesPrice;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
public interface SharesService extends IService<Shares> {

    SharesPrice getPriceByRic(String ric);
}
