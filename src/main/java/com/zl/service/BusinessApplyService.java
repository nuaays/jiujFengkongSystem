package com.zl.service;


import com.zl.pojo.BusinessApply;

import java.util.List;

public interface BusinessApplyService {
    List<BusinessApply> findAll();
    BusinessApply findOne(Integer serialno);
}
