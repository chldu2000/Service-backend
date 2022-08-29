package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.TransactionViewService;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * VIEW 前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-25
 */
@RestController
public class TransactionViewController {
    private final TransactionViewService transactionViewService;

    public TransactionViewController(TransactionViewService transactionViewService) {
        this.transactionViewService = transactionViewService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_view")
    public Result<Object> getTransactionView() {
        return ResultResponse.getSuccessResult(transactionViewService.getTransactionInTime("All"));
    }

    @RequestMapping(method = RequestMethod.GET, path ="/transaction_view/{timeGap}")
    public Result<Object> getTransactionView(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(transactionViewService.getTransactionInTime(timeGap));
    }

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_view/summary")
    public Result<Object> getTransactionSummary() {
        return ResultResponse.getSuccessResult(transactionViewService.getTransactionSummaryInTime("All"));
    }

    @RequestMapping(method = RequestMethod.GET, path = "/transaction_view/summary/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(transactionViewService.getTransactionSummaryInTime(timeGap));
    }

}
