package com.citi.training.groupb.serviceprovider.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 汇率表
 * </p>
 *
 * @author Charlie Du
 * @since 2022-39-25
 */
@Getter
@Setter
@TableName("exchange_rate")
public class ExchangeRate implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 货币编号（英文缩写，有参考标准）
     */
    @TableId("currency_id")
    private String currencyId;

    /**
     * 货币名称
     */
    @TableField("currency_name")
    private String currencyName;

    /**
     * 货币单位
     */
    @TableField("currency_unit")
    private String currencyUnit;

    /**
     * 与美元的汇率
     */
    @TableField("currency_rate")
    private Double currencyRate;
}
