package com.citi.training.groupb.serviceprovider.service;

import com.citi.training.groupb.serviceprovider.entity.Salesman;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-30
 */
public interface SalesmanService extends IService<Salesman> {

    List<Salesman> selectByID(Integer ID);

    List<Salesman> selectByName(String salesmanName);
}
