package com.citi.training.groupb.serviceconsumer.service;

import com.citi.training.groupb.serviceprovider.result.Result;
import com.citi.training.groupb.serviceprovider.vo.request.NLPTransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.request.TransactionRequest;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

@FeignClient(name = "eureka-provider", contextId = "TransactionRecordsService")
@Service
public interface TransactionRecordsService {
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records")
    Result<Object> getTransactionView();

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/{timeGap}")
    Result<Object> getTransactionView(@PathVariable String timeGap);

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary")
    Result<Object> getTransactionSummary();

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary/{timeGap}")
    Result<Object> getTransactionSummary(@PathVariable String timeGap);

    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records")
    Result<Object> insertOneTransaction(@RequestBody TransactionRequest transactionRequest);

    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records/nlp")
    Result<Object> insertOneNLPTransaction(@RequestBody NLPTransactionRequest transactionRequest);
}
