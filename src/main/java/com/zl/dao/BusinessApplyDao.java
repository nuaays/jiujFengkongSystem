package com.zl.dao;

import java.util.List;
import com.zl.pojo.BusinessApply;

public interface BusinessApplyDao {

	//查看业务申请表
	public List<BusinessApply> findBusinessApply();
	//查询出所有的业务条数
	public int findAllcount();
}
