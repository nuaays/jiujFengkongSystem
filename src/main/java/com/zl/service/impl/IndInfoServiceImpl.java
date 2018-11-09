package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.IndInfoDao;
import com.zl.pojo.IndInfo;
import com.zl.service.IIndInfoService;

@Service("indInfoService")
public class IndInfoServiceImpl implements IIndInfoService{

	@Autowired
	private IndInfoDao indInfoDao;
	
	/**
	 * 根据customerid查询个人基本信息
	 * @param customerid
	 * @return
	 */
	public IndInfo findIndInfo(String customerid) {
		return indInfoDao.findIndInfo(customerid);
	}

	/**
	 * 根据customerid修改个人基本信息
	 * @param indInfo
	 * @return
	 */
	public Integer modifyIndInfoByCustomerid(IndInfo indInfo) {
		return indInfoDao.modifyIndInfoByCustomerid(indInfo);
	}

}
