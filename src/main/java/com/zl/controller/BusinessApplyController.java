package com.zl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zl.pojo.BusinessApply;
import com.zl.pojo.FenYe;
import com.zl.service.BusinessApplyService;
@Controller
@RequestMapping("BusinessApply")
public class BusinessApplyController {
	
	@Autowired
	private BusinessApplyService businessApplyService;
	//查询业务申请
	@RequestMapping(value="businessApplyList.action")
	public ModelAndView businessApplyList(){
		System.out.println("进入businessApplyList控制器");
		ModelAndView mv = new ModelAndView();
		FenYe fy = new FenYe();
		List <BusinessApply> businessApply=businessApplyService.findBusinessApply();
	
		mv.addObject("fy", fy);
		mv.addObject("businessAppl", businessApply);
		mv.setViewName("businessApplylist");
		return mv;
	}
}
