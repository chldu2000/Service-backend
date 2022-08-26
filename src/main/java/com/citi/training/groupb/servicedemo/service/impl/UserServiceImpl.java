package com.citi.training.groupb.servicedemo.service.impl;

import com.citi.training.groupb.servicedemo.entity.User;
import com.citi.training.groupb.servicedemo.mapper.UserMapper;
import com.citi.training.groupb.servicedemo.service.UserService;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
