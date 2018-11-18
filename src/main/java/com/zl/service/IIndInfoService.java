package com.zl.service;

import com.zl.pojo.IndInfo;

public interface IIndInfoService {

	/**
	 * 根据customerid查询个人基本信息
	 * @param customerid
	 * @return
	 */
	IndInfo findIndInfo(String customerid);
	
	/**
	 * 根据customerid修改个人基本信息
	 * @param indInfo
	 * @return
	 */
	Integer modifyIndInfoByCustomerid(IndInfo indInfo);
}
