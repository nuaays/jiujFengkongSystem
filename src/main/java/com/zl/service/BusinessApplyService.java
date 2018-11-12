package com.zl.service;


import com.zl.pojo.BusinessApply;

import java.util.List;

public interface BusinessApplyService {
    List<BusinessApply> findAll();
    BusinessApply findOne(String serialno);
    int updateFlag5(String serialno, String customername, String remarks,Integer type);

    List<BusinessApply> findAllByFlag5(Integer type);
}
