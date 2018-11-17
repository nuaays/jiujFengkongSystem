package com.zl.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zl.pojo.LoginUser;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("登录过滤器销毁");
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)arg0;
		HttpServletResponse resp=(HttpServletResponse)arg1;
		String path = req.getServletPath();
		System.out.println("拦截到的当前请求路径："+path);
		//从session中获取k
		LoginUser user =(LoginUser)req.getSession().getAttribute("loginUser");
		if(user!=null ||"/user/login.action".equals(path) ||"/before/bLogin.jsp".equals(path)) {
			arg2.doFilter(req, resp);
		}else {
			resp.sendRedirect("../user/login.action");
		}
	
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("登录 过滤器启动");
		
	}

}
