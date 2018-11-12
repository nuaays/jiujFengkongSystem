package com.zl.service;

import java.util.List;

import com.zl.pojo.BusinessApply;

public interface BusinessApplyService {


	//查看业务申请表
	public List<BusinessApply> findBusinessApply();
	//查询出所有的业务条数
	public int findAllcount();
}