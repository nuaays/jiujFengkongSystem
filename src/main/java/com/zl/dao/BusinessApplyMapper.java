package com.zl.dao;

import com.zl.pojo.BusinessApply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

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
    @Select("select serialno,customername,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode from business_apply")
    List<BusinessApply> findAll();

    @Select("select serialno,customername,tradesum,warrantor,vouchclass,guarantyvalue,selfuseflag,isfixed,isliquidity,subcontractflag,riskrate,thirdparty1,reversibility," +
            "remark,applytype,graceperiod,lctermtype,lowrisk,oldlcno,operatetype,warrantorid,bailsum,guarantyflag,occurdate,remitmode from business_apply where serialno=#{serialno}")
    BusinessApply findOne(Integer serialno);
}
