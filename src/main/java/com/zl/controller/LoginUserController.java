package com.zl.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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

	/* ========================登录================================ */
	/**
	 * 登录页面
	 * @return
	 */
	@RequestMapping("login.action")
	public ModelAndView bLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/bLogin");
		return mv;
	}

	/**
	 * 获取验证码图片
	 * @param session
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("code.action")
	public void showCode(HttpSession session,HttpServletResponse response) throws IOException {
		String code = GraphicHelper.createCode();
		response.setContentType("image/jpg");
		final int width = 150; // 图片宽度
		final int height = 30; // 图片高度
		final String imgType = "jpg"; // 指定图片格式 (不是指MIME类型)
		final OutputStream output = response.getOutputStream(); // 获得可以向客户端返回图片的输出流
		// 创建验证码图片并返回图片上的字符串
		BufferedImage image = GraphicHelper.create(width, height, imgType,code);
		ImageIO.write(image, imgType, output);
		System.out.println(code);
		session.setAttribute("code", code);
	}

	/**
	 * 登录验证验证码
	 * @param checkCode
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checkCodejsp.action")
	public Map<String, Object> checkCodejsp(String checkCode,HttpSession session){
		Map<String, Object> json = new HashMap<String, Object>();
		String code = String.valueOf(session.getAttribute("code"));
		if(code==null || !code.equalsIgnoreCase(checkCode)) {
			json.put("flag", false);
			return json;
		}else {
			json.put("flag", true);
			return json;
		}
	}


	/**
	 * 处理登录请求
	 * @param userName
	 * @param pwd
	 * @param checkCode
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("loginHandler.action")
	public Map<String, Object> loginHandler(LoginUser user, String checkCode, HttpServletRequest request){
		HttpSession session = request.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		//验证验证码
		String code = String.valueOf(session.getAttribute("code"));
		if(code==null || !code.equalsIgnoreCase(checkCode)) {
			map.put("flag", false);
			return map;
		}
		ServletContext sc = session.getServletContext();
		user = loginUserService.login(user);
		if(user!=null) {
			HttpSession se = (HttpSession) sc.getAttribute(user.getUserId().toString());
			if(null!=se) {
				se.invalidate();
			}
			map.put("flag",true);
			session.setAttribute("loginUser", user);
			sc.setAttribute(user.getUserId().toString(), session);
		}else {
			map.put("flag", false);
		}
		return map;
	}

	/* ========================注册================================ */
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

	
	/**
	 * 注册的时候判断用户名是否存在
	 * @param userName
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checkUserName.action")
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
	
	
	/**
	 * 判断手机号是否被注册
	 * @param tel
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checktel.action")
	public Map<String, Object> checktel(String tel){
		System.out.println("进入手机号判断控制器");
		Map<String, Object> json = new HashMap<String, Object>();
		LoginUser user = new LoginUser();
		user = loginUserService.checktel(tel);
		if(user!=null) {
			json.put("flag",true);	
		}else {
			json.put("flag", false);
		}
		return json;
	}
	
	
	/**
	 * 获取手机验证码
	 * @param tel
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("findMessageCode.action")
	public Map<String, Object> findMessageCode(String tel, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("手机验证码------------------------------");
		session.setAttribute("message", Tma.checkMessage(tel));
		/*有效设置session最大有效时间    session.setMaxInactiveInterval(60);*/
		session.setAttribute("startTime", System.currentTimeMillis());
		map.put("flag", true);
		return map;
	}
	
	
	/**
	 * 处理注册请求
	 * @param user
	 * @param repwd
	 * @param code
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("registHandler.action")
	public Map<String, Object> registHandler(LoginUser user, String repwd, String code, HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		//判断数据库中用户名是否存在
		if(loginUserService.checkUserName(user.getUserName())!=null) {
			map.put("flag", false);
			return map;
		}
		//判断输入手机验证码是否一致,并设置验证码有效时间为2min"是否引号"
		String message = String.valueOf(session.getAttribute("message"));
		if(message==null||!message.equalsIgnoreCase(code)) {
			map.put("flag", false);
			return map;
		}
		//判断前后注册密码是否一致
		if(!user.getPwd().equals(repwd)) {
			map.put("flag", false);
			return map;
		}

		int isnot = loginUserService.addLoginUser(user);
		if(isnot>0) {
			map.put("flag",true);
			session.setAttribute("loginUser", user);
		}else {
			map.put("flag", false);
		}
		return map;
	}

	/* ========================修改密码================================ */
	/**
	 * 显示修改密码页面
	 * @return
	 */
	@RequestMapping("toupdate.action")
	public ModelAndView toupdate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("before/updatepwd");
		return mv;
	}
	

	/**
	 * 根据手机号码修改密码
	 * @param user
	 * @param checkCode
	 * @param repwd
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("updatePwd.action")
	public Map<String, Object> updatePwd(LoginUser user, String checkCode, String repwd, HttpSession session){
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


	/**
	 * 显示首页
	 * @return
	 */
	@RequestMapping("index.action")
	public ModelAndView showIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("zs_index");
		return mv;
	}


	/**
	 * 显示个人业务页面
	 * @return
	 */
	@RequestMapping("person.action")
	public ModelAndView showPerson() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("zs_geren");
		return mv;
	}

	/* ========================退出登录================================ */
	/**
	 * 退出登录
	 * @param session
	 * @return
	 */
	@RequestMapping("/loginout.action")
	public ModelAndView loginout(HttpSession session) {
		Integer userId = ((LoginUser)session.getAttribute("loginUser")).getUserId();
		session.getServletContext().removeAttribute(String.valueOf(userId));

		ModelAndView mav = new ModelAndView();
		session.invalidate();

		mav.setViewName("redirect:../user/login.action");
		return mav;
	}


}