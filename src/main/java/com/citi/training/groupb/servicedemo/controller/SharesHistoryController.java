package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.SharesHistoryService;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

/**
 * <p>
 * 股票记录表（日结） 前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-08-29
 */
@RestController
public class SharesHistoryController {
    private final SharesHistoryService sharesHistoryService;

    public SharesHistoryController(SharesHistoryService sharesHistoryService) {
        this.sharesHistoryService = sharesHistoryService;
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/history")
    public Result<Object> getTransactionSummary() {
        return ResultResponse.getSuccessResult(sharesHistoryService.getSummaryInTime("All"));
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path ="/history/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(sharesHistoryService.getSummaryInTime(timeGap));
    }
}
