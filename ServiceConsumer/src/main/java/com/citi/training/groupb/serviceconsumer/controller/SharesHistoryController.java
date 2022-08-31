package com.citi.training.groupb.serviceconsumer.controller;

import com.citi.training.groupb.serviceconsumer.service.SharesHistoryService;
import com.citi.training.groupb.serviceprovider.result.Result;
import org.springframework.web.bind.annotation.*;

@RestController
public class SharesHistoryController {
    private final SharesHistoryService sharesHistoryService;

    public SharesHistoryController(SharesHistoryService sharesHistoryService) {
        this.sharesHistoryService = sharesHistoryService;
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/history")
    public Result<Object> getTransactionSummary() {
        return sharesHistoryService.getTransactionSummary();
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path ="/history/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return sharesHistoryService.getTransactionSummary(timeGap);
    }
}
