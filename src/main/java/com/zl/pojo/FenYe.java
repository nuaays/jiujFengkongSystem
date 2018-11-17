package com.zl.pojo;

public class FenYe {
	//当前页面
	private Integer page;//5
	//总页码数
	private Integer pageCount;
	//每页显示多少条
	private Integer rows=3;
	//符合要求的记录总数
	private Integer rowCount;
	//当前页码开始条
	private Integer rowStart;
	//当前页面结束条
	private Integer rowEnd;
	String customername;
	private Query query;
	
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageCount() {
		if(getRowCount()%getRows()==0) {
			pageCount=getRowCount()/getRows();
		}else {
			pageCount=getRowCount()/getRows()+1;
		}
		if(getRowCount()/getRows()==0) {//page=1   pageCount=0
			pageCount=1;
		}
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getRowCount() {
		return rowCount;
	}
	public void setRowCount(Integer rowCount) {
		this.rowCount = rowCount;
	}
	public Integer getRowStart() {
		rowStart=(getPage()-1)*getRows();
		return rowStart;
	}
	public void setRowStart(Integer rowStart) {
		this.rowStart = rowStart;
	}
	public Integer getRowEnd() {
		rowEnd=getPage()*getRows();
		return rowEnd;
	}
	public void setRowEnd(Integer rowEnd) {
		this.rowEnd = rowEnd;
	}
	public Query getQuery() {
		return query;
	}
	public void setQuery(Query query) {
		this.query = query;
	}
}
