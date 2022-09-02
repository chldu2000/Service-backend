package com.citi.training.groupb.serviceprovider.controller;

import com.citi.training.groupb.serviceprovider.result.Result;
import com.citi.training.groupb.serviceprovider.result.ResultResponse;
import com.citi.training.groupb.serviceprovider.service.SharesHistoryService;
import org.springframework.web.bind.annotation.*;

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

    /**
     * Get transaction summary (chart data)
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/history")
    public Result<Object> getTransactionSummary() {
        return ResultResponse.getSuccessResult(sharesHistoryService.getSummaryInTime("All"));
    }

    /**
     * Get transaction summary (chart data) in a time period
     * @param timeGap time period
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path ="/history/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(sharesHistoryService.getSummaryInTime(timeGap));
    }
}
