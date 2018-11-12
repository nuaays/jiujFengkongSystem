package com.zl.dao;

import com.zl.pojo.BusinessApply;

public interface IBusinessApplyDao {

	/**
	 * 增加贷款信息
	 * @param ba
	 * @return
	 */
	public boolean AddBusinessApply(BusinessApply ba);
	
}
