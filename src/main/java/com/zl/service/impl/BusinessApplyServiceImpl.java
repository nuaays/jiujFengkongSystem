package com.zl.service.impl;

import com.zl.dao.BusinessApplyMapper;
import com.zl.dao.IndInfoDao;
import com.zl.dao.LcInfoMapper;
import com.zl.pojo.BusinessApply;
import com.zl.pojo.IndInfo;
import com.zl.pojo.LcInfo;
import com.zl.service.BusinessApplyService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.List;

import static com.zl.code.Commonly.flag51;
import static com.zl.code.Commonly.flag52;


@Service
public class BusinessApplyServiceImpl implements BusinessApplyService {
    @Autowired
    BusinessApplyMapper businessApplyMapper;
    @Autowired
    LcInfoMapper lcInfoMapper;
    @Autowired
    IndInfoDao indInfoDao;
    @Override
    public List<BusinessApply> findAll() {
        return businessApplyMapper.findAll();
    }

    @Override
    public BusinessApply findOne(String serialno) {
        BusinessApply one = businessApplyMapper.findOne(serialno);
        if (one!=null){
            if (one.getOldlcno()!=null){
                //            oldlcno信用证编号  double 去掉.后的在转为string
                LcInfo one1 = lcInfoMapper.findOne(new DecimalFormat("###################.###########").format(one.getOldlcno()));
                if (one1!=null){
                    one.setIsoldlc("真实");
                }else {
                    one.setIsoldlc("不真实");
                }
            }else{
                one.setIsoldlc("没有信用证");
            }
            if (StringUtils.isNotEmpty(one.getCustomerid())){
                //            客户基本信息
                IndInfo customer = indInfoDao.findIndInfo(one.getCustomerid());
                if (customer!=null){
                    one.setIscustomer("真实");
                }else {
                    one.setIscustomer("不真实");
                }
            }else {
                one.setIscustomer("没有客户信息");
            }
            if (StringUtils.isNotEmpty(one.getWarrantorid())){
                //            担保人基本信息 WARRANTORID
                IndInfo warrantor = indInfoDao.findIndInfo(one.getWarrantorid());
                if (warrantor!=null){
                    one.setIswarrantor("真实");
                }else {
                    one.setIswarrantor("不真实");
                }
            }else {
                one.setIswarrantor("没有担保人");
            }
        }
        return one;
    }

    @Override
    public int updateFlag5(String serialno, String customername, String remarks,Integer type) {
        BusinessApply one = businessApplyMapper.findOne(serialno);
//        审核通过
        if (one!=null){
            if (type==1){
                return businessApplyMapper.updateFlag5(flag52,serialno,customername);//通过审核
            }else {
                System.out.println(flag51);
                return businessApplyMapper.updateFlag5(flag51,serialno,customername);//未通过审核
            }
        }
        return -1;
    }

    @Override
    public List<BusinessApply> findAllByFlag5(Integer type) {
        if (type==1){
//            说明是未复批登记的
            return businessApplyMapper.findAllByFlag5(flag51);
        }else{
//            说明是复批登记的
            return businessApplyMapper.findAllByFlag5(flag52);
        }

    }
}
