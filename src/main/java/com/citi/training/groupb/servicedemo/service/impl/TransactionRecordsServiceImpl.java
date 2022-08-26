package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.*;
import com.citi.training.groupb.servicedemo.mapper.*;
import com.citi.training.groupb.servicedemo.service.TransactionRecordsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.vo.TransactionRequest;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

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
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("user_name", transactionRequest.getClientName());
        User targetUser = userMapper.selectOne(userQueryWrapper);
        // query share with ric
        Shares targetShare = sharesMapper.selectById(transactionRequest.getRic());
        // query currency with currency name
        QueryWrapper<ExchangeRate> exchangeRateQueryWrapper = new QueryWrapper<>();
        exchangeRateQueryWrapper.eq("currency_name", transactionRequest.getCurrency());
        ExchangeRate targetExchangeRate = exchangeRateMapper.selectOne(exchangeRateQueryWrapper);
        // query salesman with name
        QueryWrapper<Salesman> salesmanQueryWrapper = new QueryWrapper<>();
        salesmanQueryWrapper.eq("salesman_name", transactionRequest.getSalesperson());
        Salesman targetSalesman = salesmanMapper.selectOne(salesmanQueryWrapper);
        // all information above should not be null
        if (targetUser == null) {
            return 1;
        } else if (targetShare == null) {
            return 2;
        } else if (targetExchangeRate == null) {
            return 3;
        } else if (targetSalesman == null) {
            return 4;
        }
        // optional: compare "ticker" input with "shares_name" in targetShare
        TransactionRecords newRecord = new TransactionRecords();
        newRecord.setRic(transactionRequest.getRic());
        newRecord.setUserId(targetUser.getUserId());
        newRecord.setTransactionSize(transactionRequest.getSize());
        newRecord.setTransactionTime(LocalDateTime.now());
        newRecord.setSalesmanId(targetSalesman.getSalesmanId());
        newRecord.setCurrencyId(targetExchangeRate.getCurrencyId());
        newRecord.setTransactionPrice(transactionRequest.getPrice());
        newRecord.setTransactionFlag(transactionRequest.getClientSide().equals("buy") ? 1 : 0);
        newRecord.setSharesHold(transactionRequest.getSize().longValue()); // should add latest "hold" value
        newRecord.setIssuerSector(transactionRequest.getIssuerSector());
        newRecord.setTransactionMode(transactionRequest.getHtPt());
        transactionRecordsMapper.insert(newRecord);
        return 0;
    }
}
