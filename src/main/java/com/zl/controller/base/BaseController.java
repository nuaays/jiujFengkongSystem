package com.zl.controller.base;

import javax.servlet.http.HttpSession;

import com.zl.pojo.LoginUser;

public abstract class BaseController {

	protected Integer getUserFromSession(HttpSession session)
	  {
		LoginUser loginUser = (LoginUser) session.getAttribute("loginUser");
	    if (loginUser == null) {
	      return 0;
	    }
	    return Integer.valueOf(loginUser.getUserId());
	  }
}
