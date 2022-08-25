package com.citi.training.groupb.servicedemo.result;

public class ResultResponse {
    public static Result getSuccessResult() {
        return getSuccessResult(null);
    }

    public static Result getSuccessResult(Object data) {
        return new Result(ResultCode.SUCCESS.getResultCode(), ResultCode.SUCCESS.getResultMsg(), data);
    }

    public static Result getFailResult(Integer code, String msg) {
        return new Result(code, msg, null);
    }
}
