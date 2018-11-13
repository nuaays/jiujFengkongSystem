package com.zl.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zl.code.GraphicHelper;
import com.zl.code.Tma;
import com.zl.pojo.LoginUser;
import com.zl.service.LoginUserService;



@Controller
@RequestMapping("user")
public class LoginUserController {

	@Autowired
	private LoginUserService lus;

	@RequestMapping("login.action")
	@ResponseBody
	public Map<String, Object> login(String userName,String pwd,String checkCode,HttpSession session){
		Map<String, Object> json = new HashMap<String, Object>();
		String code = String.valueOf(session.getAttribute("code"));
		if(code==null || !code.equalsIgnoreCase(checkCode)) {
			json.put("flag", false);
			return json;
		}
		
		LoginUser user = new LoginUser();
		user.setUserName(userName);
		user.setPwd(pwd);
		System.out.println("进入user控制器");
		user = lus.login(user);
		
		if(user!=null) {
			json.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			json.put("flag", false);
		}
		return json;
	}
	//根据手机号码修改密码
	@RequestMapping("uddatePwd.action")
	@ResponseBody
	public Map<String, Object> uddatePwd(LoginUser user,String checkCode,String repwd,HttpSession session){
		Map<String, Object> json = new HashMap<String, Object>();
		String message=String.valueOf(session.getAttribute("message")) ;
		if( message==null||!message.equals(checkCode)) {
			json.put("flag", false);
		}
		//判断前后两次输入的密码是否一致
		if(!user.getPwd().equals(repwd)) {
			json.put("flag", false);
			return json;
		}
		
		int isnot =lus.updatePwd(user) ;
		if(isnot>0) {
			json.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			json.put("flag", false);
		}
		return json;
	}
	
	
	
	//注册的时候判断用户名是否存在
	@RequestMapping("checkUserName.action")
	@ResponseBody
	public Map<String, Object> checkUserName(String userName){
		System.out.println("进入用户名判断控制器");
		Map<String, Object> json = new HashMap<String, Object>();
		LoginUser user = new LoginUser();
		user = lus.checkUserName(userName);
		if(user!=null) {
			json.put("flag",true);	
		}else {
			json.put("flag", false);
		}
		return json;
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

	@RequestMapping("code.action")
	//显示验证码，把验证码放入session中
	public void showCode(HttpSession session,HttpServletResponse response) throws IOException {
		
		String code = GraphicHelper.createCode();
		response.setContentType("image/jpg");
		final int width = 150; // 图片宽度
		final int height = 30; // 图片高度
		final String imgType = "jpg"; // 指定图片格式 (不是指MIME类型)
		final OutputStream output = response.getOutputStream(); // 获得可以向客户端返回图片的输出流
		// (字节流)
		// 创建验证码图片并返回图片上的字符串
		BufferedImage image = GraphicHelper.create(width, height, imgType,code);
		ImageIO.write(image, imgType, output);
		System.out.println(code);
		session.setAttribute("code", code);
	}

	/**
	 * 显示注册页面
	 * @return
	 */
	@RequestMapping("showRegin.action")
	public ModelAndView showRegin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/regin");
		return mv;
	}
	
	/*@RequestMapping("regin.action")
	public ModelAndView regin(LoginUser user,String repwd,String code,HttpSession session) {
		ModelAndView mav = new ModelAndView();
	
		if(user.getPwd()!=repwd) {
			//页面实现把密码和重置密码清空？是否要通过ajax实现注册，不加载页面？
		}
		
		
		Long endTime = System.currentTimeMillis();
		Object st = session.getAttribute("startTime");
		Long startTime = (Long)(st==null?endTime:st);
		//验证码有效为5分钟
		if((endTime-startTime-30000)>=0) {
			mav.addObject("status","errornull");
			mav.addObject("error", "验证码失效，重新获取");
			mav.setViewName("before/regin");
			return mav;
		}
		
		String str = String.valueOf(session.getAttribute("message"));
		//验证码失效 || 未获取验证码 ||验证码不匹配
		
		if("".equals(str) || str==null|| !str.equals(code)) {
			System.out.println("手机验证码不通过");
			mav.addObject("status","errorCode");
			mav.addObject("error", "验证码错误，重新获取");
			mav.setViewName("before/regin");
			session.setAttribute("message", "");
			return mav;
		}
		
		int existLoginUserNum = lus.queryLoginUser(user.getUserName(), user.getTel());
		if(existLoginUserNum>0) {
			mav.addObject("status","existUser");
			mav.setViewName("before/regin");
			mav.addObject("error", "已有注册，请重新注册");
			return mav;
		}
		
		
		
		int flag = lus.addLoginUser(user);
		if(flag>0) {
			System.out.println("注册成功");
			mav.setViewName("zs_index");
		}else {
			System.out.println("注册失败");
			mav.addObject("status","other");
			mav.addObject("error", "注册不通过，请重新注册");
			mav.setViewName("before/regin");
		}
		return mav;	
	}*/
	
	@RequestMapping("regin.action")
	@ResponseBody
	public Map<String, Object> regin(LoginUser user,String repwd,String code,HttpSession session){
		System.out.println("进入注册控制器");
		Map<String, Object> json = new HashMap<String, Object>();
		//判断数据库中用户名是否存在
		if(lus.checkUserName(user.getUserName())!=null) {
			json.put("flag", false);
			return json;
		}
		//判断输入手机验证码是否一致,并设置验证码有效时间为2min"是否引号"
		String message = String.valueOf(session.getAttribute("message"));
		if(message==null||!message.equalsIgnoreCase(code)) {
			json.put("flag", false);
			return json;
		}
		//判断前后注册密码是否一致
		if(!user.getPwd().equals(repwd)) {
			json.put("flag", false);
			return json;
		}
		
		int isnot = lus.addLoginUser(user);
		if(isnot>0) {
			json.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			json.put("flag", false);
		}
		return json;
	}
	
	
	
	
	@RequestMapping("findMessageCode.action")
	@ResponseBody
	public Map<String, Object> findMessageCode(String tel,HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		//Tma.checkMessage(tel)
		session.setAttribute("message", Tma.checkMessage(tel));
		/*有效设置session最大有效时间    session.setMaxInactiveInterval(60);*/
		session.setAttribute("startTime", System.currentTimeMillis());
		map.put("flag", true);
		return map;
	}
	
}