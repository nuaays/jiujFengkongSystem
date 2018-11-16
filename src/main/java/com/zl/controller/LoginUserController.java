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
	private LoginUserService loginUserService;
	
	@ResponseBody
	@RequestMapping("loginHandler.action")
	public Map<String, Object> loginHandler(String userName,String pwd,String checkCode,HttpSession session){
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
		user = loginUserService.login(user);
		
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
		
		int isnot =loginUserService.updatePwd(user) ;
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
		user = loginUserService.checkUserName(userName);
		if(user!=null) {
			json.put("flag",true);	
		}else {
			json.put("flag", false);
		}
		return json;
	}


	@RequestMapping("index.action")
	public ModelAndView showIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("zs_index");
		return mv;
	}
	
	@RequestMapping("toupdate.action")
	public ModelAndView toupdate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/updatepwd");
		return mv;
	}
	
	 
	@RequestMapping("person.action")
	public ModelAndView showPerson() {
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
	@RequestMapping("showRegist.action")
	public ModelAndView showRegin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/regin");
		return mv;
	}

	
	
	@ResponseBody
	@RequestMapping("regin.action")
	public Map<String, Object> regin(LoginUser user,String repwd,String code,HttpSession session){
		System.out.println("进入注册控制器");
		Map<String, Object> json = new HashMap<String, Object>();
		//判断数据库中用户名是否存在
		if(loginUserService.checkUserName(user.getUserName())!=null) {
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
		
		int isnot = loginUserService.addLoginUser(user);
		if(isnot>0) {
			json.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			json.put("flag", false);
		}
		return json;
	}
	
	
	@ResponseBody
	@RequestMapping("findMessageCode.action")
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