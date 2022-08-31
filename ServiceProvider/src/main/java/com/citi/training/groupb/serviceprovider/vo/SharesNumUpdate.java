package com.citi.training.groupb.serviceprovider.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesNumUpdate {
    String ric;

    Long newNum;
}
