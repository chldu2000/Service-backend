package com.citi.training.groupb.serviceprovider.controller;

import com.alibaba.fastjson.JSON;
import com.citi.training.groupb.serviceprovider.vo.request.TransactionRequest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.transaction.annotation.Transactional;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

@SpringBootTest
@AutoConfigureMockMvc
class TransactionRecordsControllerTest {

    @Autowired
    MockMvc mockMvc;

    @Test
    void getTransactionView() throws Exception {
        ResultActions resultActions = mockMvc.perform(
                MockMvcRequestBuilders.get("/transaction_records")
        );
        resultActions.andReturn().getResponse().setCharacterEncoding("UTF-8");;
        resultActions.andExpect(MockMvcResultMatchers.status().isOk()).andDo(print());
    }

    @Test
    void getTransactionViewInPeriod() throws Exception {
        ResultActions resultActions = mockMvc.perform(
                MockMvcRequestBuilders.get("/transaction_records/1W")
        );
        resultActions.andReturn().getResponse().setCharacterEncoding("UTF-8");;
        resultActions.andExpect(MockMvcResultMatchers.status().isOk()).andDo(print());
    }

    @Test
    void getTransactionSummary() throws Exception {
        ResultActions resultActions = mockMvc.perform(
                MockMvcRequestBuilders.get("/transaction_records/summary")
        );
        resultActions.andReturn().getResponse().setCharacterEncoding("UTF-8");;
        resultActions.andExpect(MockMvcResultMatchers.status().isOk()).andDo(print());
    }

    @Test
    void getTransactionSummaryInPeriod() throws Exception {
        ResultActions resultActions = mockMvc.perform(
                MockMvcRequestBuilders.get("/transaction_records/summary/1W")
        );
        resultActions.andReturn().getResponse().setCharacterEncoding("UTF-8");;
        resultActions.andExpect(MockMvcResultMatchers.status().isOk()).andDo(print());
    }

    @Test
    @Transactional
    @Rollback
    void insertOneTransaction() throws Exception {
        String json = JSON.toJSONString(
                new TransactionRequest(
                        "user1",
                        "sell",
                        "不存在的企业",
                        "fake",
                        10,
                        10.0,
                        "人民币元",
                        "Sector1",
                        "salesman1",
                        1
                )
        );
        mockMvc.perform(
                        MockMvcRequestBuilders
                                .post("/transaction_records")
                                .content(json.getBytes())
                                .accept(MediaType.APPLICATION_JSON)
                                .contentType(MediaType.APPLICATION_JSON_VALUE)
                ).andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(print());
    }
}