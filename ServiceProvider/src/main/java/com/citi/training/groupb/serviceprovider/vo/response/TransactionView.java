package com.citi.training.groupb.serviceprovider.vo.response;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonProperty;
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
@Data
public class TransactionView {

    /**
     * 交易时间
     */
    private LocalDate date;

    /**
     * 用户名字
     */
    @JsonProperty("client_name")
    private String clientName;

    /**
     * 交易类型标志，buy or sell
     */
    @JsonProperty("client_side")
    private String clientSide;

    /**
     * 股票名称
     */
    private String ticker;

    /**
     * 股票RIC编号
     */
    private String ric;

    /**
     * 交易数量
     */
    private Integer size;

    /**
     * 股票成交单价
     */
    private Double price;

    @JsonProperty("notional_usd")
    private Double notionalUsd;

    /**
     * 货币名称
     */
    @TableField("currency")
    private String currency;

    /**
     * 发行部门
     */
    @JsonProperty("issuer_sector")
    private String issuerSector;

    /**
     * 交易员名字
     */
    private String salesperson;

    /**
     * 交易模式，1：HT，0：PT
     */
    @JsonProperty("ht_pt")
    private Integer htPt;
}
