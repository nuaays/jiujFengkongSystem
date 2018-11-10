package com.zl.controller;

import com.zl.pojo.BusinessApply;
import com.zl.service.BusinessApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/BusinessApply")
public class BusinessApplyController {
    @Autowired
    BusinessApplyService businessApplyService;
    @RequestMapping("/findAll.action")
    public List<BusinessApply> findAll(){

        List<BusinessApply> list = businessApplyService.findAll();
        System.out.println(list);
        return list;
    }
    @RequestMapping("/findOne.action")
    public BusinessApply findOne(Integer serialno){
        return businessApplyService.findOne(serialno);
    }
}
