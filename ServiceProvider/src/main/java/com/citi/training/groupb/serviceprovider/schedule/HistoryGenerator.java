package com.citi.training.groupb.serviceprovider.schedule;

import com.citi.training.groupb.serviceprovider.service.SharesHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.text.SimpleDateFormat;
import java.util.Calendar;

// generate shares_history (daily summary of all shares, including number of 'buy' and sell 'trade', etc.) each day
// insert into shares_history at 0:10 the next day
@Configuration
@EnableScheduling
public class HistoryGenerator {
    @Autowired
    SharesHistoryService sharesHistoryService;

    @Scheduled(cron = "0 10 0 * * *")
    public void insertHistoryYesterday() {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        calendar.add(Calendar.DATE, -1);
        String date = dateFormat.format(calendar.getTime());

        sharesHistoryService.insertHistory(date);
    }
}
