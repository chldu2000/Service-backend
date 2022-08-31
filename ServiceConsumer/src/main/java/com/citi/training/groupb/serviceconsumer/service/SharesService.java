package com.citi.training.groupb.serviceconsumer.service;

import com.citi.training.groupb.serviceprovider.result.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(name = "eureka-provider", contextId = "SharesService")
@Service
public interface SharesService {
    @RequestMapping(method = RequestMethod.GET, path = "/shares/price/{ric}")
    Result<Object> getSharesPrice(@PathVariable String ric);
}
