package com.citi.training.groupb.servicedemo.service.impl;

import com.citi.training.groupb.servicedemo.entity.Shares;
import com.citi.training.groupb.servicedemo.mapper.SharesMapper;
import com.citi.training.groupb.servicedemo.service.SharesService;
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
public class SharesServiceImpl extends ServiceImpl<SharesMapper, Shares> implements SharesService {

}
