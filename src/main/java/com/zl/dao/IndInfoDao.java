package com.zl.dao;

import com.zl.pojo.IndInfo;

public interface IndInfoDao {

	/**
	 * 根据customerid查询个人基本信息
	 * @param customerid
	 * @return
	 */
	public IndInfo findIndInfo(String customerid);
}
