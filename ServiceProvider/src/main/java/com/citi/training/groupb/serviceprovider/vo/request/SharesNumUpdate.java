package com.citi.training.groupb.serviceprovider.vo.request;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesNumUpdate {
    String ric;

    Long newNum;
}
