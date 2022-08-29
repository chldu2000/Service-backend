package com.citi.training.groupb.servicedemo.controller;

import com.citi.training.groupb.servicedemo.result.Result;
import com.citi.training.groupb.servicedemo.result.ResultCode;
import com.citi.training.groupb.servicedemo.result.ResultResponse;
import com.citi.training.groupb.servicedemo.service.SalesmanService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-30
 */
@RestController
@RequestMapping("/servicedemo/salesman")
public class SalesmanController {

    private final SalesmanService salesmanService;

    public SalesmanController(SalesmanService salesmanService) {
        this.salesmanService = salesmanService;
    }

    @GetMapping("/query")
    public Result<Object> getSalesman(@RequestParam(value = "id") Integer ID) {
        if (ID != null) {
            return ResultResponse.getSuccessResult(salesmanService.selectByID(ID));
        } else {
            return ResultResponse.getFailResult(ResultCode.BAD_REQUEST.getResultCode(), ResultCode.BAD_REQUEST.getResultMsg());
        }
    }
}
