package com.citi.training.groupb.serviceprovider.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 股票记录表（日结）
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-29
 */
@Getter
@Setter
@AllArgsConstructor
@TableName("shares_history")
public class SharesHistory implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 记录编号，自增
     */
    @TableId(value = "record_id", type = IdType.AUTO)
    private Integer recordId;

    /**
     * 股票RIC编号
     */
    @TableField("RIC")
    private String ric;

    /**
     * 股票当天收盘价，以美元计算
     */
    @TableField("closing_price")
    private Double closingPrice;

    /**
     * 股票当天总买入数量
     */
    @TableField("transaction_in")
    private Long transactionIn;

    /**
     * 股票当天总卖出数量
     */
    @TableField("transaction_out")
    private Long transactionOut;

    /**
     * 记录时间
     */
    @TableField("record_date")
    private LocalDate recordDate;
}
