package com.zl.dao;

import com.zl.pojo.LoginUser;

public interface LoginUserDao {
	
	//登录
	public LoginUser login(LoginUser user);
	
	//注册 
	public int aadLoginUser(LoginUser user);	
}