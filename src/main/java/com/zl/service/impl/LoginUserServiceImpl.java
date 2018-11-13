package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public int addLoginUser(LoginUser user) {
		int num1 = lud.aadLoginUser(user);
		IndInfo indInfo = new IndInfo();
		indInfo.setCustomerid(String.valueOf(user.getUserId()));
		indInfo.setFullname(user.getRealName());
		indInfo.setMobiletelephone(user.getTel());
		indInfo.setCertid18(user.getIdCard());
		indInfo.setEmailadd(user.getMail());
		int num2 = indInfoDao.addIndInfo(indInfo);
		if(num1*num2==0) {
			throw new RuntimeException();
		}
		return num1;
	}

	/**
	 * 查询
	 * @param userName
	 * @param tel
	 * @return
	 */
	public int queryLoginUser(String userName, String tel) {
		return lud.queryLoginUser(userName, tel).size();
	}

	@Override
	public LoginUser checkUserName(String userName) {
		// TODO Auto-generated method stub
		return lud.checkUserName(userName);
	}

	@Override
	public int updatePwd(LoginUser user) {
		// TODO Auto-generated method stub
		return lud.updatePwd(user);
	}

}
