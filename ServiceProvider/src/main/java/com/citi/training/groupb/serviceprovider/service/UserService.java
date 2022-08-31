package com.citi.training.groupb.serviceprovider.service;

import com.citi.training.groupb.serviceprovider.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
public interface UserService extends IService<User> {
    List<User> getUserByID(String userID);

    List<User> getUserByName(String userName);
}
