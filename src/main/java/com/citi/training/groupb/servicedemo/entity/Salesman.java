package com.citi.training.groupb.servicedemo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-30
 */
@Getter
@Setter
@TableName("salesman")
public class Salesman implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("salesman_id")
    private String salesmanId;

    @TableField("salesman_name")
    private String salesmanName;


}
