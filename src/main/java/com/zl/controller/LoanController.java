package com.zl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/lc")
public class LoanController {

	@RequestMapping(value="loan.action",method=RequestMethod.GET)
	public String loanInfo() {
		System.out.println("");
		return "loan";
	}
	
}
