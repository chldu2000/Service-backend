package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.User;
import com.citi.training.groupb.servicedemo.mapper.UserMapper;
import com.citi.training.groupb.servicedemo.service.UserService;
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
 * @since 2022-06-25
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    private final UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public List<User> getUserByID(String userID) {
        List<User> userList = new ArrayList<>();
        userList.add(userMapper.selectById(userID));
        return userList;
    }

    @Override
    public List<User> getUserByName(String userName) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("user_name", userName);
        return userMapper.selectList(wrapper);
    }
}
