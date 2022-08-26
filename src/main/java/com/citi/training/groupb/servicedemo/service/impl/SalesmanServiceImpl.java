package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.Salesman;
import com.citi.training.groupb.servicedemo.mapper.SalesmanMapper;
import com.citi.training.groupb.servicedemo.service.SalesmanService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    private final SalesmanMapper salesmanMapper;

    public SalesmanServiceImpl(SalesmanMapper salesmanMapper) {
        this.salesmanMapper = salesmanMapper;
    }

    public List<Salesman> getSalesmanByID(Integer ID) {
        List<Salesman> salesmanList = new ArrayList<>();
        salesmanList.add(salesmanMapper.selectById(ID));
        return salesmanList;
    }

    @Override
    public List<Salesman> getSalesmanByName(String salesmanName) {
        QueryWrapper<Salesman> wrapper = new QueryWrapper<>();
        wrapper.eq("salesman_name", salesmanName);
        return salesmanMapper.selectList(wrapper);
    }
}
