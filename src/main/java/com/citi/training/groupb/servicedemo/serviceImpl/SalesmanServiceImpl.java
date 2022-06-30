package com.citi.training.groupb.servicedemo.serviceImpl;

import com.citi.training.groupb.servicedemo.entity.Salesman;
import com.citi.training.groupb.servicedemo.mapper.SalesmanMapper;
import com.citi.training.groupb.servicedemo.service.SalesmanService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-30
 */
@Service
public class SalesmanServiceImpl extends ServiceImpl<SalesmanMapper, Salesman> implements SalesmanService {

}
