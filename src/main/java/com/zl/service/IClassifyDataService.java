package com.zl.service;

import com.zl.pojo.ClassifyData;
import com.zl.pojo.FenYe;

import java.util.List;

public interface IClassifyDataService {
	//获取分页内容
	public List<ClassifyData> showClassifyData(FenYe fy);
	public List<ClassifyData> showClassifyDataSpilit(String itemno, String objecttype, Double lowevaluatescore, Double highevaluatescore, Double lowitemvalue, Double highitemvalue);
	public Integer updateClassify(ClassifyData classify);
	public Integer insertClassify(ClassifyData classify);
	ClassifyData queryClassifyById(String itemno);
    ClassifyData queryClassifyByserialNo(String serialno);


}