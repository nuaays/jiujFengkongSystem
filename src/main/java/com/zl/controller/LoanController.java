package com.zl.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zl.pojo.BusinessApply;
import com.zl.service.IBusinessApplyService;

@Controller
@RequestMapping("/lc")
public class LoanController {

	@Autowired
	private IBusinessApplyService bas;
	
	//跳转个人贷款页面
	@RequestMapping(value="loan.action",method=RequestMethod.GET)
	public String loanInfo(HttpSession session) {
		
		System.out.println("首页跳转个人贷款页面....");
		return "loan";
	}
	//接受贷款信息
	@RequestMapping(value="addloan.action",method=RequestMethod.POST)
	public String addloan(BusinessApply ba) {
		System.out.println("接受贷款信息===>"+ba);
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
			return "loanmsg";
		}else {
			return "loan";
		}
		
	}
	
}
