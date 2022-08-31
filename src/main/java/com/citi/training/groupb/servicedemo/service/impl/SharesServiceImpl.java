package com.citi.training.groupb.servicedemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.citi.training.groupb.servicedemo.entity.Shares;
import com.citi.training.groupb.servicedemo.mapper.SharesMapper;
import com.citi.training.groupb.servicedemo.service.SharesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.servicedemo.vo.SharesPrice;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedList;
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
public class SharesServiceImpl extends ServiceImpl<SharesMapper, Shares> implements SharesService {
    private final SharesMapper sharesMapper;

    public SharesServiceImpl(SharesMapper sharesMapper) {
        this.sharesMapper = sharesMapper;
    }

    @Override
    public List<Shares> getShareByRIC(String shareRIC) {
        List<Shares> sharesList = new ArrayList<>();
        sharesList.add(sharesMapper.selectById(shareRIC));
        return sharesList;
    }

    @Override
    public List<Shares> getShareByTicker(String ticker) {
        QueryWrapper<Shares> wrapper = new QueryWrapper<>();
        wrapper.eq("shares_name", ticker);
        return sharesMapper.selectList(wrapper);
    }

    @Override
    public SharesPrice getPriceByRic(String ric) {
        return sharesMapper.selectPriceByRic(ric);
    }
}
