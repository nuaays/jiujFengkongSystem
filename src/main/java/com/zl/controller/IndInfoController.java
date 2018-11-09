package com.zl.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zl.controller.base.BaseController;
import com.zl.service.IIndInfoService;

@Controller
@RequestMapping("/IndInfo")
public class IndInfoController extends BaseController{

	@Autowired
	private IIndInfoService indInfoService;
	
	@RequestMapping("/queryIndInfo.action")
	public ModelAndView queryIndInfoByCustomerid(String customerid) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("indInfo", indInfoService.findIndInfo(customerid));
		mav.addAllObjects(modelMap);
		mav.setViewName("zs_geren");
		return mav;
	}
}
