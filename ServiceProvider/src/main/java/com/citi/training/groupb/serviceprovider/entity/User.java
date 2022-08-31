package com.citi.training.groupb.serviceprovider.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Getter
@Setter
@TableName("user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("user_id")
    private String userId;

    @TableField("user_name")
    private String userName;

    @TableField("login_name")
    private String loginName;

    @TableField("login_password")
    private String loginPassword;

    @TableField("logon_time")
    private LocalDateTime logonTime;

    @TableField("flag")
    private Integer flag;
}
