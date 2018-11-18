package com.zl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.dao.ClassifyRecordMapper;
import com.zl.pojo.ClassifyRecord;
import com.zl.service.IClassifyRecordService;

import cn.zl.common.ServerResponse;
@Service
public class ClassifyRecordServiceImpl implements IClassifyRecordService {

	@Autowired
	private ClassifyRecordMapper crmapper;

	@Override
	public ServerResponse<ClassifyRecord> showClassifyRecordDetail(String serialno) {
		if(serialno == null || serialno.equals("")) {
			return null;
		}
		ClassifyRecord cr = crmapper.selectClassifyRecordBySerno(serialno);
		if(cr == null) {
			System.out.println("wwwwwwwwwwwwwwwwww");
			return ServerResponse.createByErrorMessage("查无此条记录");
		}
		System.out.println("yyyyyyyyyyyyy"+cr.toString());
		return ServerResponse.createBySuccess("查找记录成功", cr);
	}

	@Override
	public ServerResponse<String> insertClassifyRecord(ClassifyRecord cr) {
		if(cr == null) {
			return null;
		}
		Integer result = crmapper.insertSelective(cr);
		if(result > 0) {
			return ServerResponse.createBySuccess("增加成功");
		}
		return ServerResponse.createByErrorMessage("增加失败");
	}

    @Override
    public Integer queryClassifyByserialNo(String serialno) {
		if(serialno == null || serialno.equals("")){
			return null;
		}
		return crmapper.queryClassifyByserialNo(serialno);
    }

    @Override
    public Integer updateClassifyRecord(ClassifyRecord classifyRecord) {
        if(classifyRecord == null || classifyRecord .equals("")){
        	return null;
		}

		return crmapper.updateClassifyRecord(classifyRecord);
    }

	@Override
	public ClassifyRecord queryClassifyRecordByserialNo(String serialno) {
		if(serialno == null || serialno.equals("")){
			return null;
		}
		return crmapper.selectClassifyRecordBySerno(serialno);
	}

}
