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
	
	//判断用户名是否存在
	public LoginUser checkUserName(String userName);
	
	//根据手机号码修改密码
	public int updatePwd(LoginUser user);

	public LoginUser checktel(String tel);
	
	
}
