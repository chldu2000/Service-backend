package com.citi.training.groupb.serviceconsumer.controller;

import com.citi.training.groupb.serviceconsumer.result.Result;
import com.citi.training.groupb.serviceconsumer.service.TransactionRecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TransactionRecordsController {
    @Autowired
    TransactionRecordsService transactionRecordsService;

    @GetMapping("/transaction_records")
    public Result<Object> getTransactionRecords() {
        return transactionRecordsService.getTransactionView();
    }
}
