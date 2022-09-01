package com.citi.training.groupb.serviceprovider.vo.request;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class NLPTransactionRequest {

    @JsonProperty("client_side")
    private String clientSide;

    private String ticker;

    private Integer size;
}
