package com.zl.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zl.pojo.LoginUser;
import com.zl.service.LoginUserService;


@Controller
@RequestMapping("user")
public class LoginUserController {
	
	@Autowired
	private LoginUserService lus;
	
	@RequestMapping("login.action")
	@ResponseBody
	public Map<String, Object> login(LoginUser user,HttpSession session){
		System.out.println("进入user控制器");
		user = lus.login(user);
		Map<String, Object> json = new HashMap<String, Object>();
		if(user!=null) {
			json.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			json.put("flag", false);
		}
		return json;
	}
	
	@RequestMapping("showLogin.action")
	public String showLogin() {
		return "before/bLogin";
		
	}
	
	@RequestMapping("zs_index.action")
	public ModelAndView zs_index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("zs_index");
		return mv;
	}
	 
	@RequestMapping("zs_geren.action")
	public ModelAndView zs_geren() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("zs_geren");
		return mv;
	}
	
	@RequestMapping("info.action")
	public ModelAndView info() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("info");
		return mv;
	}
	
	@RequestMapping("bLogin.action")
	public ModelAndView bLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/bLogin");
		return mv;
	}
}
