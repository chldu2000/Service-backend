package com.citi.training.groupb.serviceprovider.controller;

import com.citi.training.groupb.serviceprovider.result.Result;
import com.citi.training.groupb.serviceprovider.result.ResultCode;
import com.citi.training.groupb.serviceprovider.result.ResultResponse;
import com.citi.training.groupb.serviceprovider.service.TransactionRecordsService;
import com.citi.training.groupb.serviceprovider.vo.request.NLPTransactionRequest;
import com.citi.training.groupb.serviceprovider.vo.request.TransactionRequest;
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
public class TransactionRecordsController {
    private final TransactionRecordsService transactionRecordsService;

    public TransactionRecordsController(TransactionRecordsService transactionRecordsService) {
        this.transactionRecordsService = transactionRecordsService;
    }

    /**
     * Get transaction records (table data)
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records")
    public Result<Object> getTransactionView() {
        return ResultResponse.getSuccessResult(transactionRecordsService.getTransactionInTime("All"));
    }

    /**
     * Get transaction records (table data) in a time period
     * @param timeGap time period
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path ="/transaction_records/{timeGap}")
    public Result<Object> getTransactionView(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(transactionRecordsService.getTransactionInTime(timeGap));
    }

    /**
     * Get transaction records (table data) with a summary (total buy, total sell ...)
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary")
    public Result<Object> getTransactionSummary() {
        return ResultResponse.getSuccessResult(transactionRecordsService.getTransactionSummaryInTime("All"));
    }

    /**
     * Get transaction records (table data) with a summary (total buy, total sell ...)
     * @param timeGap time period
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.GET, path = "/transaction_records/summary/{timeGap}")
    public Result<Object> getTransactionSummary(@PathVariable String timeGap) {
        return ResultResponse.getSuccessResult(transactionRecordsService.getTransactionSummaryInTime(timeGap));
    }

    /**
     * Insert a transaction record
     * @param transactionRequest request body including transaction info
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records")
    public Result<Object> insertOneTransaction(@RequestBody TransactionRequest transactionRequest) {
        int res = transactionRecordsService.insertOneTransaction(transactionRequest);
        if (res > 0) {
            String failedMsg = ResultCode.BAD_REQUEST.getResultMsg();
            failedMsg += switch (res) {
                case 1 -> " 请检查输入的 Client Name";
                case 2 -> " 请检查输入的 RIC";
                case 3 -> " 请检查输入的 Currency";
                case 4 -> " 请检查输入的 Salesman";
                case 5 -> " 目标股票当前不可交易";
                case 6 -> " 请检查输入的 Size";
                case 7 -> " 请检查输入的 Issuer Sector";
                case 8 -> " 超过个人持有限额";
                default -> "";
            };
            return ResultResponse.getFailResult(ResultCode.BAD_REQUEST.getResultCode(), failedMsg);
        }
        return ResultResponse.getSuccessResult();
    }

    /**
     * Insert a transaction record with info from nlp
     * @param transactionRequest request body including transaction info
     */
    @CrossOrigin
    @RequestMapping(method = RequestMethod.POST, path = "/transaction_records/nlp")
    public Result<Object> insertOneTransaction(@RequestBody NLPTransactionRequest transactionRequest) {
        int res = transactionRecordsService.insertOneNLPTransaction(transactionRequest);
        if (res > 0) {
            String failedMsg = ResultCode.BAD_REQUEST.getResultMsg();
            failedMsg += switch (res) {
                case 1 -> " 请检查输入信息中包含的 ticker";
                case 2 -> " 请检查输入信息中包含的 size";
                case 3 -> " 请检查输入信息中包含的 client side";
                case 4 -> " 超过个人持有限额";
                default -> "";
            };
            return ResultResponse.getFailResult(ResultCode.BAD_REQUEST.getResultCode(), failedMsg);
        }
        return ResultResponse.getSuccessResult();
    }
}
