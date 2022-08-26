package com.citi.training.groupb.servicedemo.service.impl;

import com.citi.training.groupb.servicedemo.entity.TransactionRecords;
import com.citi.training.groupb.servicedemo.mapper.TransactionRecordsMapper;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-26-25
 */
@Service
public class TransactionRecordsServiceImpl extends ServiceImpl<TransactionRecordsMapper, TransactionRecords> implements TransactionRecordsService {

}
