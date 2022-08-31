package com.citi.training.groupb.serviceprovider.service.impl;

import com.citi.training.groupb.serviceprovider.entity.Salesman;
import com.citi.training.groupb.serviceprovider.mapper.SalesmanMapper;
import com.citi.training.groupb.serviceprovider.service.SalesmanService;
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

    public List<Salesman> selectByID(Integer ID) {
        List<Salesman> salesmanList = new ArrayList<>();
        salesmanList.add(salesmanMapper.selectById(ID));
        return salesmanList;
    }

    @Override
    public List<Salesman> selectByName(String salesmanName) {
        return salesmanMapper.selectByName(salesmanName);
    }
}
