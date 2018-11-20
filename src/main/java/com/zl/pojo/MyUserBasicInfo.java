package com.zl.pojo;

import java.math.BigDecimal;

import com.bstek.urule.model.Label;

public class MyUserBasicInfo {
	 	@Label("年龄")
	    private Integer age;
	    @Label("性别")
	    private boolean gender;
	    @Label("户籍")
	    private String birthplace;
	    @Label("教育程度")
	    private String education;
	    @Label("职业单位")
	    private String career;
	    @Label("职位")
	    private String position;
	    @Label("现时工作时长")
	    private String workingtime;
	    @Label("婚姻状况")
	    private String maritalstatus;
	    @Label("配偶职业")
	    private String comcareer;
	    @Label("配偶职位")
	    private String composition;
	    @Label("总体印象")
	    private String impress;
	    @Label("现住房产权性质")
	    private String rightOfHouse;
	    @Label("拥有固定资产")
	    private BigDecimal fixedassets;
	    @Label("个人年收入")
	    private BigDecimal eachYearSalary;
	    @Label("家庭年收入")
	    private BigDecimal eachYearfamilySalary;
	    @Label("负债比率")
	    private Double loanrate;
	    @Label("保险")
	    private String insurance;
		public Integer getAge() {
			return age;
		}
		public void setAge(Integer age) {
			this.age = age;
		}
		public boolean isGender() {
			return gender;
		}
		public void setGender(boolean gender) {
			this.gender = gender;
		}
		public String getBirthplace() {
			return birthplace;
		}
		public void setBirthplace(String birthplace) {
			this.birthplace = birthplace;
		}
		public String getEducation() {
			return education;
		}
		public void setEducation(String education) {
			this.education = education;
		}
		public String getCareer() {
			return career;
		}
		public void setCareer(String career) {
			this.career = career;
		}
		public String getPosition() {
			return position;
		}
		public void setPosition(String position) {
			this.position = position;
		}
		public String getWorkingtime() {
			return workingtime;
		}
		public void setWorkingtime(String workingtime) {
			this.workingtime = workingtime;
		}
		public String getMaritalstatus() {
			return maritalstatus;
		}
		public void setMaritalstatus(String maritalstatus) {
			this.maritalstatus = maritalstatus;
		}
		public String getComcareer() {
			return comcareer;
		}
		public void setComcareer(String comcareer) {
			this.comcareer = comcareer;
		}
		public String getComposition() {
			return composition;
		}
		public void setComposition(String composition) {
			this.composition = composition;
		}
		public String getImpress() {
			return impress;
		}
		public void setImpress(String impress) {
			this.impress = impress;
		}
		public String getRightOfHouse() {
			return rightOfHouse;
		}
		public void setRightOfHouse(String rightOfHouse) {
			this.rightOfHouse = rightOfHouse;
		}
		public BigDecimal getFixedassets() {
			return fixedassets;
		}
		public void setFixedassets(BigDecimal fixedassets) {
			this.fixedassets = fixedassets;
		}
		public BigDecimal getEachYearSalary() {
			return eachYearSalary;
		}
		public void setEachYearSalary(BigDecimal eachYearSalary) {
			this.eachYearSalary = eachYearSalary;
		}
		public BigDecimal getEachYearfamilySalary() {
			return eachYearfamilySalary;
		}
		public void setEachYearfamilySalary(BigDecimal eachYearfamilySalary) {
			this.eachYearfamilySalary = eachYearfamilySalary;
		}
		public Double getLoanrate() {
			return loanrate;
		}
		public void setLoanrate(Double loanrate) {
			this.loanrate = loanrate;
		}
		public String getInsurance() {
			return insurance;
		}
		public void setInsurance(String insurance) {
			this.insurance = insurance;
		}
	    
	    
	    
}
