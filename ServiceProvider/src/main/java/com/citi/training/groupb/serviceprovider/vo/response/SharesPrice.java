package com.citi.training.groupb.serviceprovider.vo.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesPrice {

    @JsonProperty("ric")
    String ric;

    @JsonProperty("shares_name")
    String sharesName;

    @JsonProperty("price")
    Double price;

    @JsonProperty("currency_name")
    String currencyName;
}
