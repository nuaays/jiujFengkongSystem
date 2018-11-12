package com.zl.service;

import com.zl.pojo.LoginUser;

public interface LoginUserService {

	public LoginUser login(LoginUser user);
	
	public int addLoginUser(LoginUser user);
	
	/**
	 * 查询
	 * @param userName
	 * @param tel
	 * @return
	 */
	int queryLoginUser(String userName,String tel);
}
