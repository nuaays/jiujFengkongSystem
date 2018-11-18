package com.zl.service.impl;

import com.zl.dao.LcInfoMapper;
import com.zl.pojo.LcInfo;
import com.zl.service.LcInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LcInfoServiceImpl implements LcInfoService {

    @Autowired
    LcInfoMapper lcInfoMapper;
    @Override
    public LcInfo findOne(String lcno) {
        return lcInfoMapper.findOne(lcno);
    }
}
