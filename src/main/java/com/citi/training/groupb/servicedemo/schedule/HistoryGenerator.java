package com.citi.training.groupb.servicedemo.schedule;

// generate shares_history (daily summary) each day

import com.citi.training.groupb.servicedemo.service.SharesHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.text.SimpleDateFormat;
import java.util.Calendar;

@Configuration
@EnableScheduling
public class HistoryGenerator {
    @Autowired
    SharesHistoryService sharesHistoryService;

    @Scheduled(cron = "0 59 23 * * *")
    public void insertHistoryToday() {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        calendar.add(Calendar.DATE, -1);
        String date = dateFormat.format(calendar.getTime());

        sharesHistoryService.insertHistory(date);
    }
}
