package com.citi.training.groupb.servicedemo.mapper;

import com.citi.training.groupb.servicedemo.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
    List<User> selectByUserName(String userName);
}
