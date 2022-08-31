package com.citi.training.groupb.servicedemo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SharesNumUpdate {
    String ric;

    Long newNum;
}
