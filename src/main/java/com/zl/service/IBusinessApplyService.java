package com.zl.service;

import java.util.List;

import com.zl.pojo.BusinessApply;
import com.zl.pojo.FenYe;

public interface IBusinessApplyService {

	/**
	 * 增加贷款信息
	 * @param ba
	 * @return
	 */
	public boolean AddBusinessApply(BusinessApply ba);
	
	//查看业务申请表
	public List<BusinessApply> findBusinessApply(FenYe fy);
	//查询出所有的业务条数
	public int findAllcount();
	
}
