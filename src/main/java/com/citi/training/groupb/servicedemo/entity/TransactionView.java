package com.citi.training.groupb.servicedemo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * VIEW
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-25
 */
@Getter
@Setter
@Data
@TableName("transaction_view")
public class TransactionView implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 交易时间
     */
    @TableField("date")
    private LocalDate date;

    /**
     * 用户名字
     */
    @TableField("client_name")
    private String clientName;

    /**
     * 交易类型标志，买入1，卖出0
     */
    @TableField("client_side")
    private Integer clientSide;

    /**
     * 股票名称
     */
    @TableField("ticker")
    private String ticker;

    /**
     * 股票RIC编号
     */
    @TableField("ric")
    private String ric;

    /**
     * 交易数量
     */
    @TableField("size")
    private Integer size;

    /**
     * 股票成交单价
     */
    @TableField("price")
    private Double price;

    @TableField("notional_usd")
    private Object notionalUsd;

    /**
     * 货币名称
     */
    @TableField("currency")
    private String currency;

    /**
     * 发行部门
     */
    @TableField("issuer_sector")
    private String issuerSector;

    /**
     * 交易员名字
     */
    @TableField("salesperson")
    private String salesperson;

    /**
     * 交易模式，1：HT，0：PT
     */
    @TableField("ht_pt")
    private Integer htPt;
}
