package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.LoginUserDao;
import com.zl.pojo.LoginUser;
import com.zl.service.LoginUserService;
@Service
public class LoginUserServiceImpl implements LoginUserService {

	@Autowired
	private LoginUserDao lud;
	
	
	@Override
	public LoginUser login(LoginUser user) {
		
		return lud.login(user);
	}

}
