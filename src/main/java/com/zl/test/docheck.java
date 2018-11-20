package com.zl.test;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;

import com.bstek.urule.Utils;
import com.bstek.urule.runtime.KnowledgePackage;
import com.bstek.urule.runtime.KnowledgeSession;
import com.bstek.urule.runtime.KnowledgeSessionFactory;
import com.bstek.urule.runtime.service.KnowledgeService;
import com.zl.pojo.Customer;

@Controller
public class docheck {
	
	public void doTest1(String name,
			String customerid,
			int level,
			String mobile,
			boolean gender,
			boolean car,
			boolean married,
			boolean house,
			boolean loan,
			//@Label("是否符合准入条件")
	boolean allow,
	// @Label("身份证信息是否真实")
	boolean yourself,
	//@Label("客户申请金额")
	//BigDecimal loanapply,
	// @Label("客户试贷金额")
	// BigDecimal loanaggree,
	//@Label("客户放贷金额")
	// BigDecimal loanfinal,
	// @Label("授信额度")
	//BigDecimal loanlimit,
	// @Label("负债比率")
	Double loaned,
	// @Label("固定资产")
	//BigDecimal fixedassets,
	//@Label("征信信息是否真实")
	boolean isCreditTrue,
	// @Label("担保信息是否真实")
	boolean isguaranteeTrue,
	// @Label("是否通过初审")
	boolean isFirstPass,
	// @Label("是否通过二审")
	boolean isSecondPass,
	// @Label("信用分值")
	Double score

			) throws Exception {
		KnowledgeService service = (KnowledgeService) Utils.getApplicationContext().getBean(KnowledgeService.BEAN_ID);
		KnowledgePackage knowledgePackage = service.getKnowledge("test-pro-01/tested03");
		KnowledgeSession session = KnowledgeSessionFactory.newKnowledgeSession(knowledgePackage);

		Customer employee = new Customer();
		employee.setCustomerid(customerid);
		employee.setLoaned(loaned);
		employee.setLoan(loan);
		//employee.setLoanlimit(loanlimit);
		employee.setYourself(yourself);
		employee.setCar(car);
		employee.setHouse(house);
		employee.setLevel(level);
		employee.setAllow(allow);
		employee.setName(name);
		employee.setCreditTrue(isCreditTrue);
		employee.setFirstPass(isFirstPass);
		//employee.setFixedassets(fixedassets);
		employee.setGender(gender);
		employee.setIsguaranteeTrue(isguaranteeTrue);
		//employee.setLoanaggree(loanaggree);
		//employee.setLoanapply(loanapply);
		//employee.setLoanfinal(loanfinal);
		employee.setScore(score);
		employee.setSecondPass(isSecondPass);
		/* employee.setName("张三");
        employee.setAge(23);
        employee.setAllow(true);
        employee.setLevel(5);
        employee.setHouse(true);
        employee.setCar(true);
        employee.setYourself(true);
        employee.setLoaned(0.4);*/

		session.insert(employee);
		session.fireRules();
		System.out.println("-----" + employee.getLoanlimit() + employee.getName()+employee.getLoanlimit());
	}


	public String doTest(Customer customer2)throws Exception {
//			Customer customer2 = new Customer();

			/* customer2.setName("李四");
                customer2.setLevel(5);
                customer2.setHouse(true);
                customer2.setCar(true);
                customer2.setYourself(true);
                customer2.setScore(78.9);
                customer2.setLoaned(0.6);*/


//			customer2.setName(name);
//			customer2.setLevel(Level);
//			customer2.setHouse(house);
//			customer2.setCar(car);
//			customer2.setYourself(isyourself);
//			customer2.setScore(score);
//			customer2.setLoaned(loanrat);

			ApplicationContext apl = Utils.getApplicationContext();
			KnowledgeService service = (KnowledgeService) apl.getBean(KnowledgeService.BEAN_ID);
			KnowledgePackage knowledgePackage = service.getKnowledge("test-pro-01/tested03");
			KnowledgeSession session = KnowledgeSessionFactory.newKnowledgeSession(knowledgePackage);

			session.insert(customer2);
			session.fireRules();
//			System.out.println(session.getParameter("result"));
			System.out.println("-----" + customer2.getLoanlimit() + customer2.getName() + customer2.getLoanlimit());
			System.out.println(String.valueOf(customer2.getLoanlimit()));
			
			
			return String.valueOf(customer2.getLoanlimit());
			
//			IndInfo indInfo = new IndInfo();
//			indInfo.setCustomerid(customer);
//			indInfo.setCertid(String.valueOf(customer2.getLoanlimit()));
//			indInfoService.modifyIndInfoByCustomerid(indInfo);
			
			
			
			//完成数据后更改值
			//customer2.setCustomerid(customer);

	}
	
//	public static void main(String[] args) throws  Exception{
//		docheck doCh = new docheck();
//
//		doCh.doTest("李四","1111111",true,false,78.9,0.3,true,5);
//	}
}

