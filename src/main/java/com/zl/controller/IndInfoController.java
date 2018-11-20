package com.zl.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bstek.urule.Utils;
import com.bstek.urule.runtime.KnowledgePackage;
import com.bstek.urule.runtime.KnowledgeSession;
import com.bstek.urule.runtime.KnowledgeSessionFactory;
import com.bstek.urule.runtime.service.KnowledgeService;
import com.zl.controller.base.BaseController;
import com.zl.pojo.Customer;
import com.zl.pojo.IndInfo;
import com.zl.pojo.MyUserBasicInfo;
import com.zl.service.IIndInfoService;

@Controller
@RequestMapping("/IndInfo")
public class IndInfoController extends BaseController{

	@Autowired
	private IIndInfoService indInfoService;

	/**
	 * 查询个人信息
	 * @param session
	 * @return
	 */
	@RequestMapping("/queryIndInfo.action")
	public ModelAndView queryIndInfoByCustomerid(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Integer userId = getUserFromSession(session);
		String customerid = String.valueOf(userId);
		Map<String, Object> modelMap = new HashMap<String,Object>();
		modelMap.put("indInfo", indInfoService.findIndInfo(customerid));
		mav.addAllObjects(modelMap);
		mav.setViewName("info");
		return mav;
	}

	/**
	 * 修改个人信息
	 * @param indInfo
	 * @return
	 */
	@RequestMapping("/modifyIndInfo.action")
	public ModelAndView modifyIndInfoByCustomerid(IndInfo indInfo) {

		Customer customer = new Customer();
		customer.setAge(Integer.valueOf(indInfo.getBirthday()));
		customer.setGender("男".equals(indInfo.getSex()));
		customer.setMarried("已婚".equals(indInfo.getMarriage()));
		try {
			customer.setLoaned(Double.valueOf(indInfo.getStaff()));
		} catch (NumberFormatException e4) {
			customer.setLoaned(1.0);
			indInfo.setStaff("1.0");
		}
		try {
			customer.setFixedassets(BigDecimal.valueOf(Double.valueOf(indInfo.getEdurecord())));
		} catch (NumberFormatException e4) {
			customer.setFixedassets(BigDecimal.valueOf(0));
			indInfo.setEdurecord("0.0");
		}
		customer.setCar(true);
		customer.setHouse(true);
		customer.setYourself(true);

		MyUserBasicInfo myUserBasicInfo = new MyUserBasicInfo();
		myUserBasicInfo.setAge(Integer.valueOf(indInfo.getBirthday()));
		myUserBasicInfo.setGender("男".equals(indInfo.getSex()));
		myUserBasicInfo.setEducation(indInfo.getEduexperience());
		myUserBasicInfo.setCareer(indInfo.getOccupation());
		myUserBasicInfo.setPosition(indInfo.getPosition());
		myUserBasicInfo.setWorkingtime(indInfo.getWorkzip());
		myUserBasicInfo.setMaritalstatus(indInfo.getMarriage());
		myUserBasicInfo.setComcareer(indInfo.getWorkcorp());
		myUserBasicInfo.setComposition(indInfo.getWorktel());
		myUserBasicInfo.setImpress(indInfo.getRemark());
		myUserBasicInfo.setRightOfHouse(indInfo.getFamilystatus());
		try {
			myUserBasicInfo.setFixedassets(BigDecimal.valueOf(Long.valueOf(indInfo.getEdurecord())));
		} catch (NumberFormatException e3) {
			myUserBasicInfo.setFixedassets(BigDecimal.valueOf(0));
			indInfo.setEdurecord("0.0");
		}
		
		try {
			myUserBasicInfo.setEachYearSalary(BigDecimal.valueOf(indInfo.getYearincome()));
		} catch (Exception e2) {
			myUserBasicInfo.setEachYearSalary(BigDecimal.valueOf(0));
			indInfo.setYearincome(0.0);
		}

		try {
			myUserBasicInfo.setEachYearfamilySalary(BigDecimal.valueOf(Long.valueOf(indInfo.getFamilymonthincome())));
		} catch (NumberFormatException e1) {
			myUserBasicInfo.setEachYearfamilySalary(BigDecimal.valueOf(0));
			indInfo.setFamilymonthincome("0.0");
		}

		try {
			myUserBasicInfo.setLoanrate(Double.valueOf(indInfo.getStaff()));
		} catch (Exception e) {
			myUserBasicInfo.setLoanrate(1.0);
			indInfo.setStaff("1.0");
		}


		myUserBasicInfo.setInsurance(indInfo.getIntro());


		String str1 = "0";
		String str2 = "0";
		try {
			ApplicationContext apl = Utils.getApplicationContext();
			KnowledgeService service = (KnowledgeService) apl.getBean(KnowledgeService.BEAN_ID);

			//计算等级
			KnowledgePackage knowledgePackage = service.getKnowledge("test-pro-01/test05");
			KnowledgeSession session = KnowledgeSessionFactory.newKnowledgeSession(knowledgePackage);

			session.insert(myUserBasicInfo);
			session.fireRules();
			Double num = Double.valueOf(String.valueOf(session.getParameter("result")));

			str1 = String.valueOf((int)Math.round(num/87.36643333));
			customer.setLevel((int)Math.round(num/87.36643333));


			//计算额度
			knowledgePackage = service.getKnowledge("test-pro-01/tested03");
			session = KnowledgeSessionFactory.newKnowledgeSession(knowledgePackage);

			session.insert(customer);
			session.fireRules();

			str2 = String.valueOf(customer.getLoanlimit());

		}catch (Exception e) {
			e.printStackTrace();
		}

		//设置信用等级
		indInfo.setCreditlevel(str1);
		//设置信用额度
		indInfo.setCertid(str2);

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
