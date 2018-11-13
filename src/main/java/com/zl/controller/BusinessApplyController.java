package com.zl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zl.pojo.BusinessApply;
import com.zl.pojo.FenYe;
import com.zl.service.IBusinessApplyService;

@Controller
@RequestMapping("BusinessApply")
public class BusinessApplyController {
	
	@Autowired
	private IBusinessApplyService iBusinessApplyService;
	//查询业务申请
	@RequestMapping(value="businessApplyList.action")
	public ModelAndView businessApplyList(FenYe fy){
		System.out.println("进入businessApplyList控制器");
		ModelAndView mv = new ModelAndView();
		List <BusinessApply> businessApply=iBusinessApplyService.findBusinessApply(fy);
		mv.addObject("fy", fy);
		mv.addObject("businessAppl", businessApply);
		mv.setViewName("businessApplylist");
		return mv;
	}
}
