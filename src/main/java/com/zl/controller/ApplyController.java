package com.zl.controller;

import cn.zl.common.ServerResponse;
import com.zl.pojo.ClassifyData;
import com.zl.service.IClassifyDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("apply")
public class ApplyController {
    @Autowired
    private IClassifyDataService cde;

    public ServerResponse<ClassifyData> showAapply(String itemno) {
        if (itemno == null || itemno.equals("")) {
            return ServerResponse.createBySuccessMessage("审核的项目编号为空");
        }
        ClassifyData item = cde.queryClassifyById(itemno);
        if (item == null) {
            return ServerResponse.createBySuccessMessage("审核的项目不存在");
        }
        return ServerResponse.createBySuccess("审核通过", item);
    }




}
