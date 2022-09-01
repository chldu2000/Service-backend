package com.citi.training.groupb.serviceprovider.service.impl;

import com.citi.training.groupb.serviceprovider.entity.Shares;
import com.citi.training.groupb.serviceprovider.mapper.SharesMapper;
import com.citi.training.groupb.serviceprovider.service.SharesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.citi.training.groupb.serviceprovider.vo.response.SharesPrice;
import org.springframework.stereotype.Service;

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
    public SharesPrice getPriceByRic(String ric) {
        return sharesMapper.selectPriceByRic(ric);
    }
}
