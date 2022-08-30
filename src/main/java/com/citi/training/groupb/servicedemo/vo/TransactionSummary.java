package com.citi.training.groupb.servicedemo.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

import java.util.List;

@Data
@AllArgsConstructor
public class TransactionSummary {
    @JsonProperty("total_buy")
    private Double totalBuy;

    @JsonProperty("total_sell")
    private Double totalSell;

    @JsonProperty("quantity")
    private Double quantity;

    @JsonProperty("buy_notional")
    private Double buyNotional;

    @JsonProperty("sell_notional")
    private Double sellNotional;

    @JsonProperty("net_notional")
    private Double netNotional;

    @JsonProperty("list")
    private List<TransactionView> list;
}
