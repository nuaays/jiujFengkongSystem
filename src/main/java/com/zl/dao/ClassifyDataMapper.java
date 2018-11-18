package com.zl.dao;


import com.zl.conditions.ClassifyDataCondition;
import com.zl.pojo.ClassifyData;
import com.zl.pojo.FenYe;

import java.util.List;

public interface ClassifyDataMapper {

	/*Integer insert(ClassifyData record);

    Integer insertSelective(ClassifyData record);*/
    


    List<ClassifyData> queryClassifyByConditions(FenYe fy);
    
    Integer queryClassifyRows(ClassifyDataCondition ccd);
    
    Integer updateClassify(ClassifyData classify);
    
    Integer insertClassify(ClassifyData classify);

    ClassifyData queryClassifyById(String itemno);


    ClassifyData queryClassifyBySerialno(String serialno);
}