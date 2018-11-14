package com.zl.dao;

import com.zl.pojo.BusinessApply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface BusinessApplyMapper {
/*
						<th>业务申请类型</th>
						<th>贷款宽限期</th>
						<th>信用证期限类型</th>
						<th>是否低风险业务</th>
						<th>收到信用证编号</th>
						<th>贷款操作方式</th>
						<th>主要担保人代码</th>
						<th>保证金帐号</th>
						<th>征信担保标志</th>
						<th>发生日期</th>
						<th>汇款方式</th>
						*/
//    申请流水号字段,客户姓名,贸易合同金额,主要担保人,担保形式,担保总价值,自用额度或担保额度,是否固定资产贷款,流动资金贷款,
// 额度下业务是否需要签署合同,综合风险度,承兑人名称,有无追索权,备注
    @Select("select serialno,customername,customerid,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode from business_apply")
    List<BusinessApply> findAll();

    @Select("select serialno,customername,customerid,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode from business_apply where serialno=#{serialno}")
    BusinessApply findOne(String serialno);

    /**
     * 审核通过登记复批
     * 审核未通过
     * @param serialno
     * @param customername
     * @return
     */
    @Update("update BUSINESS_APPLY set FLAG5=#{flag5} where SERIALNO=#{serialno} and CUSTOMERNAME=#{customername}")
    Integer updateFlag5(@Param("flag5") String flag5,@Param("serialno") String serialno,@Param("customername") String customername);

    /**
     * 登记复批查询
     * @param flag51
     * @return
     */
    @Select("select serialno,customername,customerid,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode from business_apply where FLAG5=#{flag5}")
    List<BusinessApply> findAllByFlag5(String flag51);

    /**
     * 分页查询出总数
     * @param PageMin
     * @param PagrMax
     * @return
     */
    @Select("SELECT " +
            "serialno,customername,customerid,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode" +
            " FROM ( SELECT " +
            "A.serialno,A.customername,A.customerid,A.tradesum,A.warrantor,A.vouchclass,A.guarantyvalue,A.selfuseflag,A.isfixed,A.isliquidity,A.subcontractflag,A.riskrate,A.thirdparty1,A.reversibility," +
            "A.remark,A.applytype,A.graceperiod,A.lctermtype,A.lowrisk,A.oldlcno,A.operatetype,A.warrantorid,A.bailsum,A.guarantyflag,A.occurdate,A.remitmode," +
            " ROWNUM RN FROM (SELECT " +
            "serialno,customername,customerid,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode" +
            " FROM BUSINESS_APPLY) A WHERE ROWNUM <= #{PagrMax} ) WHERE RN >= #{PageMin}")
    List<BusinessApply> findAllPage(Integer PageMin,Integer PagrMax);

    /**
     * 查询出总数量
     * @return
     */
    @Select("select count(serialno) from BUSINESS_APPLY")
    Integer findCount();
}
