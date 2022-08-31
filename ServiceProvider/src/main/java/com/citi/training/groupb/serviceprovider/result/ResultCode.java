package com.citi.training.groupb.serviceprovider.result;

public enum ResultCode {
    SUCCESS(200, "成功!"),
    BAD_REQUEST(400, "错误的请求!"),
    SIGNATURE_NOT_MATCH(401, "请求的数字签名不匹配!"),
    NOT_FOUND(404, "未找到该资源!"),
    INTERNAL_SERVER_ERROR(500, "服务器内部错误!"),
    SERVER_BUSY(503, "服务器正忙，请稍后再试!");

    private final Integer resultCode;
    private final String resultMsg;

    ResultCode(Integer resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

    public Integer getResultCode() {
        return this.resultCode;
    }

    public String getResultMsg() {
        return this.resultMsg;
    }
}
