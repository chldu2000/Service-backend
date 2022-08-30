//package com.citi.training.groupb.servicedemo.service.impl;
//
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
//import com.citi.training.groupb.servicedemo.entity.User;
//import com.citi.training.groupb.servicedemo.mapper.UserMapper;
//import com.citi.training.groupb.servicedemo.service.UserService;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * <p>
// *  服务实现类
// * </p>
// *
// * @author Charlie Du
// * @since 2022-06-25
// */
//@Service
//public class UserDetailsServiceImpl implements UserDetailsService {
//    private final UserMapper userMapper;
//
//    public UserDetailsServiceImpl(UserMapper userMapper) {
//        this.userMapper = userMapper;
//    }
//
//    @Override
//    public UserDetails loadUserByUsername(String userName) {
//        QueryWrapper<User> wrapper = new QueryWrapper<>();
//        wrapper.eq("login_name", userName);
//        List<User> users = userMapper.selectList(wrapper);
//        if (users.size() == 0){
//            return null;
//        }
//        return new org.springframework.security.core.userdetails.User(users.get(0).getLoginName(), users.get(0).getLoginPassword(), getAuthority());
//    }
//
//    private List<SimpleGrantedAuthority> getAuthority() {
//        return List.of(new SimpleGrantedAuthority("ROLE_USER"));
//    }
//}
