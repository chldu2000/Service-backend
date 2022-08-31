package com.citi.training.groupb.serviceconsumer.service;

import com.citi.training.groupb.serviceconsumer.result.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient("eureka-provider")
@Service
public interface TransactionRecordsService {
    @GetMapping("/transaction_records")
    Result<Object> getTransactionView();
}
