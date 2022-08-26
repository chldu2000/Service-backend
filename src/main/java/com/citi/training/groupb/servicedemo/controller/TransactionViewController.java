package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultCode;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.TransactionViewService;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

/**
 * <p>
 * VIEW 前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-42-25
 */
@RestController
@RequestMapping("/servicedemo/transactionView")
public class TransactionViewController {
    private final TransactionViewService transactionViewService;

    public TransactionViewController(TransactionViewService transactionViewService) {
        this.transactionViewService = transactionViewService;
    }

    @GetMapping("/query")
    public Result getTransactionView() {
        return ResultResponse.getSuccessResult(transactionViewService.getAllTransaction());
    }

//    @PostMapping("/insert")
//    public Result addOneTransaction(@RequestBody TransactionView transactionView) {
//        return ResultResponse.getSuccessResult();
//    }
}
