package com.citi.training.groupb.serviceprovider.entity;

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
 * @since 2022-06-25
 */
@Getter
@Setter
@TableName("shares")
public class Shares implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("RIC")
    private String ric;

    @TableField("shares_name")
    private String sharesName;

    @TableField("class_id")
    private Integer classId;

    @TableField("shares_price")
    private Double sharesPrice;

    @TableField("currency_id")
    private String currencyId;

    @TableField("shares_num")
    private Long sharesNum;

    @TableField("trade_limit")
    private Integer tradeLimit;

    @TableField("shares_flag")
    private Integer sharesFlag;
}
