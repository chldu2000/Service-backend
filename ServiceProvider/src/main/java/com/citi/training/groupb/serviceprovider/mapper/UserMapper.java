package com.citi.training.groupb.serviceprovider.mapper;

import com.citi.training.groupb.serviceprovider.entity.User;
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
    User selectByUserName(String userName);

    User selectByLoginName(String loginName);

    User selectFirstUser();
}
