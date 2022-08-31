package com.citi.training.groupb.serviceprovider.controller;

import com.citi.training.groupb.serviceprovider.result.Result;
import com.citi.training.groupb.serviceprovider.result.ResultResponse;
import com.citi.training.groupb.serviceprovider.service.SharesService;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@RestController
public class SharesController {

    private final SharesService sharesService;

    public SharesController(SharesService sharesService) {
        this.sharesService = sharesService;
    }

    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/shares/price/{ric}")
    Result<Object> getSharesPrice(@PathVariable String ric) {
        return ResultResponse.getSuccessResult(sharesService.getPriceByRic(ric));
    }
}
