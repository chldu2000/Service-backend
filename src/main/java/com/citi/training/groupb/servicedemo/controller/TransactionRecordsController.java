package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.entity.TransactionView;
import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Controller
@RequestMapping("/servicedemo/transactionRecords")
public class TransactionRecordsController {
    private final TransactionRecordsService transactionRecordsService;

    public TransactionRecordsController(TransactionRecordsService transactionRecordsService) {
        this.transactionRecordsService = transactionRecordsService;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/insert")
    public Result insertOneTransaction(@RequestBody TransactionView transactionView) {

        return ResultResponse.getSuccessResult();
    }
}
