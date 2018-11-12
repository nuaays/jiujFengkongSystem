package com.zl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.BusinessApplyDao;
import com.zl.pojo.BusinessApply;
import com.zl.pojo.FenYe;
import com.zl.service.BusinessApplyService;
@Service
public class BusinessApplyServiceImpl implements BusinessApplyService {
	
	@Autowired
	private  BusinessApplyDao businessApplyDao;
	
	@Override
	public List<BusinessApply> findBusinessApply() {
		FenYe fy = new FenYe();
		//设置当前页码
		if(fy.getPage()==null) {
			fy.setPage(1);
		}
		//设置符合查询条件的总条数
		fy.setRowCount(businessApplyDao.findAllcount());
		
		return businessApplyDao.findBusinessApply();
	}

	@Override
	public int findAllcount() {

		return businessApplyDao.findAllcount();
	}

}
