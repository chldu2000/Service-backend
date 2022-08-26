package com.citi.training.groupb.servicedemo.entity;

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
 * @since 2022-26-25
 */
@Getter
@Setter
@TableName("transaction_records")
public class TransactionRecords implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("record_id")
    private String recordId;

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

    @TableField("transaction_price")
    private Double transactionPrice;

    @TableField("transaction_flag")
    private Integer transactionFlag;

    @TableField("shares_hold")
    private Long sharesHold;
}
