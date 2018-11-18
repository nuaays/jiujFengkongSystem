package com.zl.conditions;

public class ClassifyDataCondition {

	private String itemno;//根据项目编号查询
	//private String itemvalue;//根据项目名查询
	private Double lowevaluatescore;
	private Double highevaluatescore;
	private Double lowitemvalue;//低值
	private Double highitemvalue;//高值
	private String objecttype;//对象类型
	private String objectno;//对象编号
	private String serialno;//流水号查询

	private String finallyresult;
	private String classifyorgid;
	private String customerid;
	private String accountmonth;
	private String secondresult;

	public String getFinallyresult() {
		return finallyresult;
	}

	public void setFinallyresult(String finallyresult) {
		this.finallyresult = finallyresult;
	}

	public String getClassifyorgid() {
		return classifyorgid;
	}

	public void setClassifyorgid(String classifyorgid) {
		this.classifyorgid = classifyorgid;
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getAccountmonth() {
		return accountmonth;
	}

	public void setAccountmonth(String accountmonth) {
		this.accountmonth = accountmonth;
	}

	public String getSecondresult() {
		return secondresult;
	}

	public void setSecondresult(String secondresult) {
		this.secondresult = secondresult;
	}

	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}
	public String getObjectno() {
		return objectno;
	}
	public void setObjectno(String objectno) {
		this.objectno = objectno;
	}
	public String getSerialno() {
		return serialno;
	}
	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}
	public String getObjecttype() {
		return objecttype;
	}
	public void setObjecttype(String objecttype) {
		this.objecttype = objecttype;
	}
	public Double getLowevaluatescore() {
		return lowevaluatescore;
	}
	public void setLowevaluatescore(Double lowevaluatescore) {
		this.lowevaluatescore = lowevaluatescore;
	}
	public Double getHighevaluatescore() {
		return highevaluatescore;
	}
	public void setHighevaluatescore(Double highevaluatescore) {
		this.highevaluatescore = highevaluatescore;
	}
	public Double getLowitemvalue() {
		return lowitemvalue;
	}
	public void setLowitemvalue(Double lowitemvalue) {
		this.lowitemvalue = lowitemvalue;
	}
	public Double getHighitemvalue() {
		return highitemvalue;
	}
	public void setHighitemvalue(Double highitemvalue) {
		this.highitemvalue = highitemvalue;
	}
	public ClassifyDataCondition(String itemno, Double lowevaluatescore, Double highevaluatescore, Double lowitemvalue,
                                 Double highitemvalue, String objecttype, String objectno, String serialno) {
		super();
		this.itemno = itemno;
		this.lowevaluatescore = lowevaluatescore;
		this.highevaluatescore = highevaluatescore;
		this.lowitemvalue = lowitemvalue;
		this.highitemvalue = highitemvalue;
		this.objecttype = objecttype;
		this.objectno = objectno;
		this.serialno = serialno;
	}
	public ClassifyDataCondition() {
		super();
	}
	
	
	
}
