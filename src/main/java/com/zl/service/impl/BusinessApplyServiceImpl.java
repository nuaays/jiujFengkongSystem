package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.IBusinessApplyDao;
import com.zl.pojo.BusinessApply;
import com.zl.service.IBusinessApplyService;

@Service
public class BusinessApplyServiceImpl implements IBusinessApplyService {

	@Autowired
	private IBusinessApplyDao bad;
	
	@Override
	public boolean AddBusinessApply(BusinessApply ba) {
		
		return bad.AddBusinessApply(ba);
	}

}
