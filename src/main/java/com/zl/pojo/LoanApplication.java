package com.zl.pojo;

import java.io.Serializable;
import java.util.Date;

public class LoanApplication implements Serializable {

	private Integer loanid;
	private String uname;			//姓名
	private String idcard;			//身份证
	private String phone;			//手机号
	private Integer age ;			//年龄
    private String edulevel ;		//学历
    private String marriedstatus ;	//是否结婚
    private String profession ;		//职业
    private String job ;		  //工作
    private String loantype ;     //--贷款类型
    private String loanlimit ;  //--申请额度
    private String loanperiod ;   //--贷款期限
    private String paymethod ;    //--还款方式
    private String toaccount ;  //  --到款银行账户
    private String payaccount	;  // --还款账户
    private String bondsman ;     //--担保人
    private String bondsmanphone ;    // --担保人联系方式
    private String emename ;          // --紧急联系人
    private String emenamephone ;     // --紧急联系人方式
    private String homeaddress ;      // --家庭地址
    private String workaddress ;       //--工资地址
    private String monthincome ;      // --月收入
    private String houseincome ;       //--家庭年收入
    private String ishouseloan ;      // --是否有房贷
    private String iscarloan ;         //--是否有车贷
    private String iscredit ;          //--是否有信用卡
    private String isinsure ;          //--是否有保险
    private Date submitime;				//提交时间
    private String loannumber;			//贷款编号
    private String loanstatus;			//贷款处理状态
	public Integer getLoanid() {
		return loanid;
	}
	public void setLoanid(Integer loanid) {
		this.loanid = loanid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getEdulevel() {
		return edulevel;
	}
	public void setEdulevel(String edulevel) {
		this.edulevel = edulevel;
	}
	public String getMarriedstatus() {
		return marriedstatus;
	}
	public void setMarriedstatus(String marriedstatus) {
		this.marriedstatus = marriedstatus;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getLoantype() {
		return loantype;
	}
	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}
	public String getLoanlimit() {
		return loanlimit;
	}
	public void setLoanlimit(String loanlimit) {
		this.loanlimit = loanlimit;
	}
	public String getLoanperiod() {
		return loanperiod;
	}
	public void setLoanperiod(String loanperiod) {
		this.loanperiod = loanperiod;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	public String getToaccount() {
		return toaccount;
	}
	public void setToaccount(String toaccount) {
		this.toaccount = toaccount;
	}
	public String getPayaccount() {
		return payaccount;
	}
	public void setPayaccount(String payaccount) {
		this.payaccount = payaccount;
	}
	public String getBondsman() {
		return bondsman;
	}
	public void setBondsman(String bondsman) {
		this.bondsman = bondsman;
	}
	public String getBondsmanphone() {
		return bondsmanphone;
	}
	public void setBondsmanphone(String bondsmanphone) {
		this.bondsmanphone = bondsmanphone;
	}
	public String getEmename() {
		return emename;
	}
	public void setEmename(String emename) {
		this.emename = emename;
	}
	public String getEmenamephone() {
		return emenamephone;
	}
	public void setEmenamephone(String emenamephone) {
		this.emenamephone = emenamephone;
	}
	public String getHomeaddress() {
		return homeaddress;
	}
	public void setHomeaddress(String homeaddress) {
		this.homeaddress = homeaddress;
	}
	public String getWorkaddress() {
		return workaddress;
	}
	public void setWorkaddress(String workaddress) {
		this.workaddress = workaddress;
	}
	public String getMonthincome() {
		return monthincome;
	}
	public void setMonthincome(String monthincome) {
		this.monthincome = monthincome;
	}
	public String getHouseincome() {
		return houseincome;
	}
	public void setHouseincome(String houseincome) {
		this.houseincome = houseincome;
	}
	public String getIshouseloan() {
		return ishouseloan;
	}
	public void setIshouseloan(String ishouseloan) {
		this.ishouseloan = ishouseloan;
	}
	public String getIscarloan() {
		return iscarloan;
	}
	public void setIscarloan(String iscarloan) {
		this.iscarloan = iscarloan;
	}
	public String getIscredit() {
		return iscredit;
	}
	public void setIscredit(String iscredit) {
		this.iscredit = iscredit;
	}
	public String getIsinsure() {
		return isinsure;
	}
	public void setIsinsure(String isinsure) {
		this.isinsure = isinsure;
	}
	public Date getSubmitime() {
		return submitime;
	}
	public void setSubmitime(Date submitime) {
		this.submitime = submitime;
	}
	public String getLoannumber() {
		return loannumber;
	}
	public void setLoannumber(String loannumber) {
		this.loannumber = loannumber;
	}
	public String getLoanstatus() {
		return loanstatus;
	}
	public void setLoanstatus(String loanstatus) {
		this.loanstatus = loanstatus;
	}
    
}
