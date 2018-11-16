package com.zl.controller;

import com.zl.pojo.BusinessApply;
import com.zl.pojo.Examine;
import com.zl.pojo.PageBean;
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

    /**
     * 查询所有
     * @return
     */
    @RequestMapping("/findAll.action")
    public List<BusinessApply> findAll(){
        return businessApplyService.findAll();
    }

    /**
     * 根据Flag5来查询所有
     * @return
     */
    @RequestMapping("/findAllByFlag5.action")
    public List<BusinessApply> findAllByFlag5(Integer type){
        List<BusinessApply> list = businessApplyService.findAllByFlag5(type);
        System.out.println(list);
        return list;
    }
    @RequestMapping("/findOne.action")
    public BusinessApply findOne(String serialno){
        return businessApplyService.findOne(serialno);
    }

    /**
     * 登记复批
     * @return
     */
    @RequestMapping("/updateFlag5.action")
    public int updateFlag5(String customername,String remarks,String serialno,Integer type){
        return businessApplyService.updateFlag5(serialno,customername,remarks,type);
    }

    /**
     * 查询出评分复批信息
     * @param serialno
     * @return
     */
    @RequestMapping("findCustomer.action")
    public Examine findCustomer( String serialno){
        return businessApplyService.findCustomer(serialno);
    }

    /**
     *分页查询
     * @param currPage
     * @param pageSize
     * @return
     */
    @RequestMapping("PagingQuery.action")
    public PageBean<BusinessApply> PagingQuery(Integer currPage, Integer pageSize){
        return businessApplyService.PagingQuery(currPage,pageSize,null);
    }

}
