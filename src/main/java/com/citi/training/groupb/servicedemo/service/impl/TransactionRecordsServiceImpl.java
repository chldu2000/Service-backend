package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.*;
import com.citi.training.groupb.servicedemo.mapper.*;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.vo.TransactionRequest;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Charlie Du
 * @since 2022-06-25
 */
@Service
public class TransactionRecordsServiceImpl extends ServiceImpl<TransactionRecordsMapper, TransactionRecords> implements TransactionRecordsService {
    private final TransactionRecordsMapper transactionRecordsMapper;
    private final UserMapper userMapper;
    private final SharesMapper sharesMapper;
    private final ExchangeRateMapper exchangeRateMapper;
    private final SalesmanMapper salesmanMapper;

    public TransactionRecordsServiceImpl(TransactionRecordsMapper transactionRecordsMapper, UserMapper userMapper, SharesMapper sharesMapper, ExchangeRateMapper exchangeRateMapper, SalesmanMapper salesmanMapper) {
        this.transactionRecordsMapper = transactionRecordsMapper;
        this.userMapper = userMapper;
        this.sharesMapper = sharesMapper;
        this.exchangeRateMapper = exchangeRateMapper;
        this.salesmanMapper = salesmanMapper;
    }

    @Override
    public int insertOneTransaction(TransactionRequest transactionRequest) {
        // query user with username
        List<User> targetUser = userMapper.selectByUserName(transactionRequest.getClientName());
        // query share with ric
        Shares targetShare = sharesMapper.selectById(transactionRequest.getRic());
        // query currency with currency name
        List<ExchangeRate> targetExchangeRate = exchangeRateMapper.selectByCurrencyName(transactionRequest.getCurrency());
        // query salesman with name
        List<Salesman> targetSalesman = salesmanMapper.selectByName(transactionRequest.getSalesperson());
        // all information above should not be null
        if (targetUser.size() == 0) {
            return 1;
        }
        if (targetShare == null) {
            return 2;
        }
        if (targetExchangeRate.size() == 0) {
            return 3;
        }
        if (targetSalesman.size() == 0) {
            return 4;
        }
        // target share should be trade-able
        if (targetShare.getSharesFlag() == 0) {
            return 5;
        }
        // shares hold by "targetUser" should be less than "trade_limit"
        Long sharesHold = transactionRecordsMapper.selectHoldByUser(targetShare.getRic(), targetUser.get(0).getUserId());
        sharesHold = sharesHold == null ? 0 : sharesHold;
        if (sharesHold + transactionRequest.getSize().longValue() > targetShare.getTradeLimit()) {
            return 6;
        }
        // optional: compare "ticker" input with "shares_name" in targetShare
        // any other checkup?
        TransactionRecords newRecord = new TransactionRecords();
        newRecord.setRic(transactionRequest.getRic());
        newRecord.setUserId(targetUser.get(0).getUserId());
        newRecord.setTransactionSize(transactionRequest.getSize());
        newRecord.setTransactionTime(LocalDateTime.now());
        newRecord.setSalesmanId(targetSalesman.get(0).getSalesmanId());
        newRecord.setCurrencyId(targetExchangeRate.get(0).getCurrencyId());
        newRecord.setTransactionPrice(transactionRequest.getPrice());
        newRecord.setTransactionFlag(transactionRequest.getClientSide().equals("buy") ? 1 : 0);
        newRecord.setSharesHold(transactionRequest.getSize().longValue() + sharesHold);
        newRecord.setIssuerSector(transactionRequest.getIssuerSector());
        newRecord.setTransactionMode(transactionRequest.getHtPt());
        transactionRecordsMapper.insert(newRecord);
        return 0;
    }
}
