package com.citi.training.groupb.serviceconsumer.controller;

import com.citi.training.groupb.serviceconsumer.service.SharesService;
import com.citi.training.groupb.serviceprovider.result.Result;
import org.springframework.web.bind.annotation.*;

@RestController
public class SharesController {

    private final SharesService sharesService;

    public SharesController(SharesService sharesService) {
        this.sharesService = sharesService;
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/shares/price/{ric}")
    Result<Object> getSharesPrice(@PathVariable String ric) {
        return sharesService.getSharesPrice(ric);
    }
}
