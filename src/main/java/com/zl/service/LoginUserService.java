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
	
	//判断用户名是否存在
	public LoginUser checkUserName(String userName);
	
	//根据手机号码修改密码
	public int updatePwd(LoginUser user);
	
}
