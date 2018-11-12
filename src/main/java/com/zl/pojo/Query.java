package com.zl.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Query {
	//根据品牌查询
	private Integer qid;
	//查询开始时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date qstartTime;
	//查询结束时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date qendTime;
	
	public Integer getQid() {
		return qid;
	}
	public void setQid(Integer qid) {
		this.qid = qid;
	}
	public Date getQstartTime() {
		return qstartTime;
	}
	public void setQstartTime(Date qstartTime) {
		this.qstartTime = qstartTime;
	}
	public Date getQendTime() {
		return qendTime;
	}
	public void setQendTime(Date qendTime) {
		this.qendTime = qendTime;
	}
}
