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
		Map<String, Object>json = new HashMap<String, Object>();
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

	@RequestMapping("code.action")
	//显示验证码，把验证码放入session中
	public void showCode(HttpSession session,HttpServletResponse response) throws IOException {
		
		String code = GraphicHelper.createCode();
		response.setContentType("image/jpg");
		final int width = 180; // 图片宽度
		final int height = 40; // 图片高度
		final String imgType = "jpg"; // 指定图片格式 (不是指MIME类型)
		final OutputStream output = response.getOutputStream(); // 获得可以向客户端返回图片的输出流
		// (字节流)
		// 创建验证码图片并返回图片上的字符串
		BufferedImage image = GraphicHelper.create(width, height, imgType,code);
		ImageIO.write(image, imgType, output);
		System.out.println(code);
		session.setAttribute("code", code);
	}

}
