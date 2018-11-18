package com.zl.service.impl;

import com.zl.conditions.ClassifyDataCondition;
import com.zl.dao.ClassifyDataMapper;
import com.zl.pojo.ClassifyData;
import com.zl.pojo.FenYe;
import com.zl.service.IClassifyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassifyDataServiceImpl implements IClassifyDataService {

	@Autowired
	private ClassifyDataMapper idm;
	@Override
	public List<ClassifyData> showClassifyData(FenYe fy) {
		if(fy == null) {
			return null;
		}
		if(fy.getPage()==null) {
			fy.setPage(1);
		}
		//System.out.println("fy------------------------->"+fy.toString()+"fy.getQ"+fy.getQuery());
		//设置符合要求的记录总数
		fy.setRowCount(idm.queryClassifyRows(fy.getQuery()));
		//查询记录数
		List<ClassifyData> resultList = idm.queryClassifyByConditions(fy);
		System.out.println("fy------------------------->"+fy.getRowCount()+"-------------->"+fy.getPage()+"------------"+fy.getPageCount());
		System.out.println("resultList===================================>"+resultList);
		return resultList;
	}
	@Override
	public List<ClassifyData> showClassifyDataSpilit( String itemno, String objecttype,
			Double lowevaluatescore, Double highevaluatescore, Double lowitemvalue, Double highitemvalue) {
		ClassifyDataCondition query = new ClassifyDataCondition();
		if(itemno != null) {
			query.setItemno(itemno);
		}
		if(objecttype != null) {
			query.setObjecttype(objecttype);
		}
		if(lowevaluatescore!= null ) {
			query.setLowevaluatescore(lowevaluatescore);
		}
		if(highevaluatescore!= null) {
			query.setHighevaluatescore(highevaluatescore);
		}
		
		if(lowitemvalue!= null) {
			query.setLowitemvalue(lowitemvalue);
		}
		if(highitemvalue!= null) {
			query.setHighitemvalue(highitemvalue);
		}
		FenYe fy = new FenYe();
		fy.setQuery(query);
		List<ClassifyData> classify = idm.queryClassifyByConditions(fy);
		return classify;
	}
	@Override
	public Integer updateClassify(ClassifyData classify) {
		if(classify == null) {
			return null;
		}
		//判断当前用户有无登陆，如果没有登陆，则拒绝插入

		//判断当前记录的审核意见，如果审核意见一级一级未通过，则不允许越级插入
		classify.setObjectno("1");
		classify.setObjecttype("人工");
		classify.setSerialno("201810010900");
		return idm.updateClassify(classify);
	}
	@Override
	public Integer insertClassify(ClassifyData classify) {
		//判断当前用户有无登陆，如果没有登陆，则拒绝插入

		//判断当前记录的审核意见，如果审核意见一级一级未通过，则不允许越级插入

		if(classify == null) {
			return null;
		}
		/*classify.setSerialno("201810011000");
		classify.setItemno("201810010");
		classify.setEvaluatescore(23.3);
		classify.setItemvalue("78.0");
		classify.setObjectno("9");
		classify.setObjecttype("1");*/
		Integer result = idm.insertClassify(classify);
		return result;
	}

	@Override
	public ClassifyData queryClassifyById(String itemno) {
		if(itemno == null || itemno.equals("")){
			return null;
		}
		return idm.queryClassifyById(itemno);
	}

	@Override
	public ClassifyData queryClassifyByserialNo(String serialno) {
		if(serialno == null || serialno.equals("")){
			return null;
		}
		return idm.queryClassifyBySerialno(serialno);
	}




}
