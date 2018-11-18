package com.zl.dao;

import com.zl.pojo.ClassifyRecord;

public interface ClassifyRecordMapper {

    int insert(ClassifyRecord record);

    int insertSelective(ClassifyRecord record);
    
    ClassifyRecord selectClassifyRecordBySerno(String serialno);

    Integer queryClassifyByserialNo(String serialno);


    Integer updateClassifyRecord(ClassifyRecord classifyRecord);

}