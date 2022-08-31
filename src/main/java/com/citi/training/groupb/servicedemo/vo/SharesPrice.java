package com.citi.training.groupb.servicedemo.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesPrice {
    String ric;

    Double price;

    @JsonProperty("currency_name")
    String currencyName;
}
