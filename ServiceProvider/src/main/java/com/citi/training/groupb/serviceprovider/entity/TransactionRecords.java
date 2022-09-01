package com.citi.training.groupb.serviceprovider.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
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
@AllArgsConstructor
@TableName("transaction_records")
public class TransactionRecords implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "record_id", type = IdType.AUTO)
    private Integer recordId;

    @TableField("RIC")
    private String ric;

    @TableField("user_id")
    private String userId;

    @TableField("transaction_size")
    private Integer transactionSize;

    @TableField("transaction_time")
    private LocalDateTime transactionTime;

    @TableField("salesman_id")
    private String salesmanId;

    @TableField("currency_id")
    private String currencyId;

    @TableField("transaction_price")
    private Double transactionPrice;

    @TableField("transaction_flag")
    private String transactionFlag;

    @TableField("shares_hold")
    private Long sharesHold;

    @TableField("issuer_sector")
    private String issuerSector;

    @TableField("transaction_mode")
    private Integer transactionMode;
}
