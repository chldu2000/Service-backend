package com.citi.training.groupb.serviceprovider.vo.request;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class TransactionRequest {

    @JsonProperty("client_name")
    private String clientName;

    @JsonProperty("client_side")
    private String clientSide;

    private String ticker;

    private String ric;

    private Integer size;

    private Double price;

    private String currency;

    @JsonProperty("issuer_sector")
    private String issuerSector;

    private String salesperson;

    @JsonProperty("ht_pt")
    private Integer htPt;
}
