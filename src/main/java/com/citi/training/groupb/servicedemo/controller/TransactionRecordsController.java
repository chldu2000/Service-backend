package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultCode;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.citi.training.groupb.servicedemo.vo.TransactionRequest;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@RestController
public class TransactionRecordsController {
    private final TransactionRecordsService transactionRecordsService;

    public TransactionRecordsController(TransactionRecordsService transactionRecordsService) {
        this.transactionRecordsService = transactionRecordsService;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records")
    public Result<Object> insertOneTransaction(@RequestBody TransactionRequest transactionRequest) {
        int res = transactionRecordsService.insertOneTransaction(transactionRequest);
        if (res > 0) {
            Result<Object> failedRes = new Result<>();
            failedRes.setStatus(ResultCode.BAD_REQUEST.getResultCode());
            String failedMsg = ResultCode.BAD_REQUEST.getResultMsg();
            switch (res) {
                case 1 -> failedMsg += " 请检查输入的 Client Name";
                case 2 -> failedMsg += " 请检查输入的 RIC";
                case 3 -> failedMsg += " 请检查输入的 Salesman";
                case 4 -> failedMsg += " 请检查输入的 Currency";
                case 5 -> failedMsg += " 目标股票当前不可交易";
                case 6 -> failedMsg += " 超过个人持有限额";
                default -> {}
            }
            failedRes.setMessage(failedMsg);
            return failedRes;
        }
        return ResultResponse.getSuccessResult();
    }
}
