package com.zl.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zl.controller.base.BaseController;
import com.zl.pojo.BusinessApply;
import com.zl.pojo.IndInfo;
import com.zl.service.IBusinessApplyService;
import com.zl.service.IIndInfoService;

@Controller
@RequestMapping("/lc")
public class LoanController extends BaseController{

	@Autowired
	private IBusinessApplyService bas;
	@Autowired
	private IIndInfoService indInfoService;
	
	//跳转个人贷款页面
	@RequestMapping(value="loan.action",method=RequestMethod.GET)
	public String loanInfo(HttpSession session,Model model) {
		System.out.println("首页跳转个人贷款页面....");
		Integer userId = getUserFromSession(session);
		if(null==userId) {
			return "redirect:../user/login.action";
		}else {
			String customerid = String.valueOf(userId);
			IndInfo indinfo =indInfoService.findIndInfo(customerid);
			System.out.println("查询到客户信息==="+indinfo);
			model.addAttribute("indinfo", indinfo);
			return "loan";
		}
		
	}
	//接受贷款信息
	@RequestMapping(value="addloan.action",method=RequestMethod.POST)
	public String addloan(BusinessApply ba,String customername,Model model) {
		System.out.println("接受贷款信息===>"+ba.getCustomername());
		System.out.println("接受===>"+customername);
		
		//设置贷款编号
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String serialno = "JJD"+formatter.format(date)+(random.nextInt(9000)+1000);
		ba.setSerialno(serialno);
		//设置提交时间
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ba.setOccurdate(ft.format(date));
		
		boolean flag = bas.AddBusinessApply(ba);
		if (flag) {
			return "redirect:../BusinessApply/businessApplyList.action";
		}else {
			return "loan";
		}
		
	}
	
}
