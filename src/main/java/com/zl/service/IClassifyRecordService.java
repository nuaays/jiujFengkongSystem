package com.zl.service;

import cn.zl.common.ServerResponse;
import com.zl.pojo.ClassifyRecord;

public interface IClassifyRecordService {
	public ServerResponse<ClassifyRecord> showClassifyRecordDetail(String serialno);
	public ServerResponse<String> insertClassifyRecord(ClassifyRecord cr);

    Integer queryClassifyByserialNo(String serialno);


	Integer updateClassifyRecord(ClassifyRecord classifyRecord);

	ClassifyRecord queryClassifyRecordByserialNo(String serialno);
}
