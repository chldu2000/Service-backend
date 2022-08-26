package com.citi.training.groupb.servicedemo.service;

import com.citi.training.groupb.servicedemo.entity.Salesman;
import com.baomidou.mybatisplus.extension.service.IService;
import com.citi.training.groupb.servicedemo.mapper.SalesmanMapper;

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

    List<Salesman> getSalesmanByID(Integer ID);

    List<Salesman> getSalesmanByName(String salesmanName);
}
