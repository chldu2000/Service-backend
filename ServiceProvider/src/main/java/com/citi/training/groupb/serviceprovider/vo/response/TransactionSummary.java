package com.citi.training.groupb.serviceprovider.vo.response;

import com.citi.training.groupb.serviceprovider.vo.response.TransactionView;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

import java.util.List;

@Data
@AllArgsConstructor
public class TransactionSummary {
    @JsonProperty("total_buy")
    private Integer totalBuy;

    @JsonProperty("total_sell")
    private Integer totalSell;

    @JsonProperty("quantity")
    private Integer quantity;

    @JsonProperty("buy_notional")
    private Double buyNotional;

    @JsonProperty("sell_notional")
    private Double sellNotional;

    @JsonProperty("net_notional")
    private Double netNotional;

    @JsonProperty("list")
    private List<TransactionView> list;
}
