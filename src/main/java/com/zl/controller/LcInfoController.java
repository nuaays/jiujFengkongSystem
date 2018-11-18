package com.zl.controller;

import com.zl.pojo.LcInfo;
import com.zl.service.LcInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("LcInfo")
public class LcInfoController {
    @Autowired
    LcInfoService lcInfoService;
    @RequestMapping("/findOne.action")
    public LcInfo findOne(String lcno){
        return lcInfoService.findOne(lcno);
    }
}
