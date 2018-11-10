package com.zl.service.impl;

import com.zl.dao.BusinessApplyMapper;
import com.zl.pojo.BusinessApply;
import com.zl.service.BusinessApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BusinessApplyServiceImpl implements BusinessApplyService {
    @Autowired
    BusinessApplyMapper businessApplyMapper;
    @Override
    public List<BusinessApply> findAll() {
        return businessApplyMapper.findAll();
    }

    @Override
    public BusinessApply findOne(Integer serialno) {
        return businessApplyMapper.findOne(serialno);
    }
}
