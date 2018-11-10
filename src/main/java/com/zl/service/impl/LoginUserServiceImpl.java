package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.IndInfoDao;
import com.zl.dao.LoginUserDao;
import com.zl.pojo.IndInfo;
import com.zl.pojo.LoginUser;
import com.zl.service.LoginUserService;
@Service
public class LoginUserServiceImpl implements LoginUserService {

	@Autowired
	private LoginUserDao lud;
	
	@Autowired
	private IndInfoDao indInfoDao;
	
	@Override
	public LoginUser login(LoginUser user) {
		
		return lud.login(user);
	}


	@Override
	public int addLoginUser(LoginUser user) {
		IndInfo indInfo = new IndInfo();
		indInfoDao.addIndInfo(indInfo);
		return lud.aadLoginUser(user);
	}

}
