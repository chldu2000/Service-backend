package com.citi.training.groupb.serviceconsumer.controller;

import com.citi.training.groupb.serviceprovider.result.Result;
import com.citi.training.groupb.serviceconsumer.service.TransactionRecordsService;
import com.citi.training.groupb.serviceprovider.vo.request.NLPTransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.request.TransactionRequest;
import org.springframework.web.bind.annotation.*;

@RestController
public class TransactionRecordsController {

    private final TransactionRecordsService transactionRecordsService;

    public TransactionRecordsController(TransactionRecordsService transactionRecordsService) {
        this.transactionRecordsService = transactionRecordsService;
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records")
    public Result<Object> getTransactionRecords() {
        return transactionRecordsService.getTransactionView();
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path ="/transaction_records/{timeGap}")
    public Result<Object> getTransactionView(@PathVariable String timeGap) {
        return transactionRecordsService.getTransactionView(timeGap);
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary")
    public Result<Object> getTransactionSummary() {
        return transactionRecordsService.getTransactionSummary();
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return transactionRecordsService.getTransactionSummary(timeGap);
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records")
    public Result<Object> insertOneTransaction(@RequestBody TransactionRequest transactionRequest) {
        return transactionRecordsService.insertOneTransaction(transactionRequest);
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records/nlp")
    public Result<Object> insertOneNLPTransaction(@RequestBody NLPTransactionRequest transactionRequest) {
        return transactionRecordsService.insertOneNLPTransaction(transactionRequest);
    }
}
