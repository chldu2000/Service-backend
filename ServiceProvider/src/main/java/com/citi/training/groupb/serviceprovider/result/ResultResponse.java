package com.citi.training.groupb.serviceprovider.result;

public class ResultResponse {
    public static Result<Object> getSuccessResult() {
        return getSuccessResult(null);
    }

    public static Result<Object> getSuccessResult(Object data) {
        return new Result<>(ResultCode.SUCCESS.getResultCode(), ResultCode.SUCCESS.getResultMsg(), data);
    }

    public static Result<Object> getFailResult(Integer code, String msg) {
        return new Result<>(code, msg, null);
    }
}
