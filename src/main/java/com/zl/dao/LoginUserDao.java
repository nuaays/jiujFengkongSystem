package com.zl.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zl.pojo.LoginUser;

public interface LoginUserDao {
	
	//登录
	public LoginUser login(LoginUser user);
	
	//注册 
	public int aadLoginUser(LoginUser user);
	
	/**
	 * 查询
	 * @param userName
	 * @param tel
	 * @return
	 */
	List<LoginUser> queryLoginUser(@Param("userName") String userName, @Param("tel") String tel);
}
