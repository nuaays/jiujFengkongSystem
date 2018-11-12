package com.zl.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zl.controller.base.BaseController;
import com.zl.pojo.IndInfo;
import com.zl.pojo.LoginUser;
import com.zl.service.IIndInfoService;

@Controller
@RequestMapping("/IndInfo")
public class IndInfoController extends BaseController{

	@Autowired
	private IIndInfoService indInfoService;
	
	@RequestMapping("/queryIndInfo.action")
	public ModelAndView queryIndInfoByCustomerid(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Integer userId = getUserFromSession(session);
		if(null==userId) {
			mav.setViewName("redirect:../user/showLogin.action");
			return mav;
		}
		String customerid = String.valueOf(userId);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("indInfo", indInfoService.findIndInfo(customerid));
		mav.addAllObjects(modelMap);
		mav.setViewName("info");
		return mav;
	}
	
	@RequestMapping("/modifyIndInfo.action")
	public ModelAndView modifyIndInfoByCustomerid(IndInfo indInfo) {
		
		Integer boo = indInfoService.modifyIndInfoByCustomerid(indInfo);
		ModelAndView mav = new ModelAndView();
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("boo", boo);
		modelMap.put("indInfo", indInfoService.findIndInfo(indInfo.getCustomerid()));
		mav.addAllObjects(modelMap);
		mav.setViewName("info");
		return mav;
	}

	/**
	 * 查询单个的个人信息
	 * @param customerid
	 * @return
	 */
	@ResponseBody
	@RequestMapping("findOne.action")
	public IndInfo findOne(String customerid){
		return indInfoService.findIndInfo(customerid);
	}
}
