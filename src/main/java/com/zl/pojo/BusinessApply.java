package com.zl.pojo;


import com.baomidou.mybatisplus.annotations.TableField;

public class BusinessApply {

  private String paysourcen;
  private String returnfrequency;
  private String backfrequency;
  private String paysourcedetail;
  private String ishostbank;
  private String havepayplan;
  private String flag6;
  private String flag7;
  private String frcode;
  private String ipcode;
  private String acceptinttype;
  private String adjustrateterm;
  private String adjustratetype;
  private Double agentfee;
  /**
   * 业务申请类型
   */
  private String applytype;
  /**
   * 保证金帐号
   */
  private String bailaccount;
  /**
   * 保证金币种
   */
  private String bailcurrency;
  private Double bailrate;
  private Double bailratio;
  /**
   * 保证金金额
   */
  private Double bailsum;
  private Double bargainorinterest;
  private String baseclassifyresult;
  private String baseevaluateresult;
  private Double baserate;
  private String baseratetype;
  private String billnum;
  private String businesscurrency;
  private Double businessprop;
  private Double businessrate;
  private String businesssubtype;
  /**
   * 名义金额
   */
  private Double businesssum;
  private String businesstype;
  private String businesstypelist;
  private String calculatemode;
  /**
   * 货物信息
   */
  private String cargoinfo;
  private String classifydate;
  private String classifyfrequency;
  private String classifyresult;
  private Double constructionarea;
  private String contextinfo;
  private String contractflag;
  private String corpuspaymethod;
  /**
   * 授信协议编号
   */
  private String creditaggreement;
  private String creditcycle;
  private String currencymode;
  private String currenylist;
  /**
   * 客户编号   表关联字段
   */
  private String customerid;
  /**
   * 客户姓名
   */
  private String customername;
  private String cycleflag;
  private Double dealfee;
  private String describe1;
  private String describe2;
  private String direction;
  private Double discountinterest;
  private Double discountsum;
  private String drawingperiod;
  private String drawingtype;
  private String drtimes;
  private String effectarea;
  private Double executeyearrate;
  private Double exposuresum;
  private String extendtimes;
  private Double finerate;
  private String fineratetype;
  private String finishorg;
  private String firstdrawingdate;
  private String fixcyc;
  /**
   * 有无贸易合同
   */
  private String flag1;
  private String flag2;
  private String flag3;
  private String flag4;
  /**
   * 是否登记批复
   * 状态描述：010-未登记批复，020-已登记批复。
   * 状态变化：010-未登记批复（数据来源：新增申请。操作：最终审批意见）->020-已登记批复（操作：删除任务，取消最终审批意见或取消合同）->010-未登记批复。
   */
  private String flag5;
  private String flowreduceflag;
  private String fundsource;
  private Double fzanbalance;
  private String golntimes;
  /**
   * 贷款宽限期
   */
  private String graceperiod;
  /**
   * 征信担保标志
   */
  private String guarantyflag;
  private Double guarantyrate;
  /**
   * 担保总价值
   */
  private Double guarantyvalue;
  private String housetype;
  private String iccyc;
  private String ictype;
  private String immediacypaysource;
  /**
   * 登记日期
   */
  private String inputdate;
  /**
   * 登记机构
   */
  private String inputorgid;
  /**
   * 登记人
   */
  private String inputuserid;
  private String interestpaymethod;
  private String invoiceno;
  /**
   * 固定资产贷款
   */
  private String isfixed;
  /**
   * 流动资金贷款
   */
  private String isliquidity;
  private String isproject;
  /**
   * 信用证期限类型
   */
  private String lctermtype;
  private String lgterm;
  private String lngotimes;
  /**
   * 是否可直接申请出账
   */
  private String loanflag;
  /**
   * 是否低风险业务
   */
  private String lowrisk;
  private Double lowriskbailsum;
  private String mfeepaymethod;
  private Double mfeeratio;
  private Double mfeesum;
  /**
   * 发生日期
   */
  private String occurdate;
  private String occurtype;
  /**
   * 汇款方式
   */
  private String remitmode;
  private String oldlcloadingdate;
  /**
   * 收到信用证编号
   */
  private Double oldlcno;
  private String oldlcsum;
  private String oldlctermtype;
  private String oldlcvaliddate;
  /**
   * 经办日期
   */
  private String operatedate;
  /**
   * 经办机构
   */
  private String operateorgid;
  /**
   * 贷款操作方式
   */
  private String operatetype;
  /**
   * 经办人
   */
  private String operateuserid;
  private String operationinfo;
  private String operationmode;
  private String originalputoutdate;
  private String otherarealoan;
  private String othercondition;
  private String ourrole;
  private String overdraftperiod;
  private String paycurrency;
  private String paycyc;
  private String paydate;
  private String paymentdate;
  private String paysource;
  private String paytimes;
  private String pdgpaymethod;
  private Double pdgpayperiod;
  private Double pdgratio;
  private String pdgsum;
  /**
   * 归档日期
   */
  private String pigeonholedate;
  private String planallocation;
  private String projectname;
  private String promisesfeebegin;
  private Double promisesfeeperiod;
  private Double promisesfeeratio;
  private Double promisesfeesum;
  private String purchaserinterest;
  private String purpose;
  private Double rateadjustcyc;
  private String ratefloat;
  private Double ratefloattype;
  private String ratio;
  private String relativeagreement;
  private String relativeserialno;
  /**
   * 备注
   */
  private String remark;
  /**
   * 有无追索权
   */
  private String reversibility;
  private String riskattribute;
  /**
   * 综合风险度
   */
  private Double riskrate;
  private String safeguardtype;
  private String securitiesregion;
  private String securitiestype;
  /**
   * 自用额度或担保额度
   */
  private String selfuseflag;
  /**
   * 申请流水号字段
   */
  private String serialno;
  /**
   * 额度下业务是否需要签署合同
   */
  private String subcontractflag;
  private String suretype;
  private String tempsaveflag;
  private String termdate1;
  private String termdate2;
  private String termdate3;
  private String termday;
  private String termmonth;
  private String termyear;
  /**
   * 承兑人名称
   */
  private String thirdparty1;
  private String thirdparty2;
  private String thirdparty3;
  private String thirdpartyaccounts;
  private String thirdpartyadd1;
  private String thirdpartyadd2;
  private String thirdpartyadd3;
  private String thirdpartyid1;
  private String thirdpartyid2;
  private String thirdpartyid3;
  private String thirdpartyregion;
  private String thirdpartyzip1;
  private String thirdpartyzip2;
  private String thirdpartyzip3;
  private Double totalcast;
  private Double totalsum;
  /**
   * 贸易合同编号
   */
  private String tradecontractno;
  private String tradecurrency;
  /**
   * 贸易合同金额
   */
  private Double tradesum;
  private String updatedate;
  private Double usearea;
  private String useorglist;
  /**
   * 担保形式
   */
  private String vouchclass;
  private String vouchflag;
  private String vouchnewflag;
  private String vouchtype;
  private String vouchtype1;
  private String vouchtype2;
  /**
   * 主要担保人
   */
  private String warrantor;
  /**
   * 主要担保人代码
   */
  private String warrantorid;
  private String creditapply;
  private String npareformapply;

  /**
   * 自定义字段
   * 信用证是否真实
   */
  @TableField(exist = false)
  private String isoldlc;
  /**
   * 自定义字段
   * 客户信息是否真实
   */
  @TableField(exist=false)
  private String iscustomer;
  /**
   * 自定义字段
   * 担保人信息是否真实
   */
  @TableField(exist=false)
  private String iswarrantor;

  public String getIsoldlc() {
    return isoldlc;
  }

  public void setIsoldlc(String isoldlc) {
    this.isoldlc = isoldlc;
  }

  public String getIscustomer() {
    return iscustomer;
  }

  public void setIscustomer(String iscustomer) {
    this.iscustomer = iscustomer;
  }

  public String getIswarrantor() {
    return iswarrantor;
  }

  public void setIswarrantor(String iswarrantor) {
    this.iswarrantor = iswarrantor;
  }





  public String getPaysourcen() {
    return paysourcen;
  }

  public void setPaysourcen(String paysourcen) {
    this.paysourcen = paysourcen;
  }


  public String getReturnfrequency() {
    return returnfrequency;
  }

  public void setReturnfrequency(String returnfrequency) {
    this.returnfrequency = returnfrequency;
  }


  public String getBackfrequency() {
    return backfrequency;
  }

  public void setBackfrequency(String backfrequency) {
    this.backfrequency = backfrequency;
  }


  public String getPaysourcedetail() {
    return paysourcedetail;
  }

  public void setPaysourcedetail(String paysourcedetail) {
    this.paysourcedetail = paysourcedetail;
  }


  public String getIshostbank() {
    return ishostbank;
  }

  public void setIshostbank(String ishostbank) {
    this.ishostbank = ishostbank;
  }


  public String getHavepayplan() {
    return havepayplan;
  }

  public void setHavepayplan(String havepayplan) {
    this.havepayplan = havepayplan;
  }


  public String getFlag6() {
    return flag6;
  }

  public void setFlag6(String flag6) {
    this.flag6 = flag6;
  }


  public String getFlag7() {
    return flag7;
  }

  public void setFlag7(String flag7) {
    this.flag7 = flag7;
  }


  public String getFrcode() {
    return frcode;
  }

  public void setFrcode(String frcode) {
    this.frcode = frcode;
  }


  public String getIpcode() {
    return ipcode;
  }

  public void setIpcode(String ipcode) {
    this.ipcode = ipcode;
  }


  public String getAcceptinttype() {
    return acceptinttype;
  }

  public void setAcceptinttype(String acceptinttype) {
    this.acceptinttype = acceptinttype;
  }


  public String getAdjustrateterm() {
    return adjustrateterm;
  }

  public void setAdjustrateterm(String adjustrateterm) {
    this.adjustrateterm = adjustrateterm;
  }


  public String getAdjustratetype() {
    return adjustratetype;
  }

  public void setAdjustratetype(String adjustratetype) {
    this.adjustratetype = adjustratetype;
  }


  public Double getAgentfee() {
    return agentfee;
  }

  public void setAgentfee(Double agentfee) {
    this.agentfee = agentfee;
  }


  public String getApplytype() {
    return applytype;
  }

  public void setApplytype(String applytype) {
    this.applytype = applytype;
  }


  public String getBailaccount() {
    return bailaccount;
  }

  public void setBailaccount(String bailaccount) {
    this.bailaccount = bailaccount;
  }


  public String getBailcurrency() {
    return bailcurrency;
  }

  public void setBailcurrency(String bailcurrency) {
    this.bailcurrency = bailcurrency;
  }


  public Double getBailrate() {
    return bailrate;
  }

  public void setBailrate(Double bailrate) {
    this.bailrate = bailrate;
  }


  public Double getBailratio() {
    return bailratio;
  }

  public void setBailratio(Double bailratio) {
    this.bailratio = bailratio;
  }


  public Double getBailsum() {
    return bailsum;
  }

  public void setBailsum(Double bailsum) {
    this.bailsum = bailsum;
  }


  public Double getBargainorinterest() {
    return bargainorinterest;
  }

  public void setBargainorinterest(Double bargainorinterest) {
    this.bargainorinterest = bargainorinterest;
  }


  public String getBaseclassifyresult() {
    return baseclassifyresult;
  }

  public void setBaseclassifyresult(String baseclassifyresult) {
    this.baseclassifyresult = baseclassifyresult;
  }


  public String getBaseevaluateresult() {
    return baseevaluateresult;
  }

  public void setBaseevaluateresult(String baseevaluateresult) {
    this.baseevaluateresult = baseevaluateresult;
  }


  public Double getBaserate() {
    return baserate;
  }

  public void setBaserate(Double baserate) {
    this.baserate = baserate;
  }


  public String getBaseratetype() {
    return baseratetype;
  }

  public void setBaseratetype(String baseratetype) {
    this.baseratetype = baseratetype;
  }


  public String getBillnum() {
    return billnum;
  }

  public void setBillnum(String billnum) {
    this.billnum = billnum;
  }


  public String getBusinesscurrency() {
    return businesscurrency;
  }

  public void setBusinesscurrency(String businesscurrency) {
    this.businesscurrency = businesscurrency;
  }


  public Double getBusinessprop() {
    return businessprop;
  }

  public void setBusinessprop(Double businessprop) {
    this.businessprop = businessprop;
  }


  public Double getBusinessrate() {
    return businessrate;
  }

  public void setBusinessrate(Double businessrate) {
    this.businessrate = businessrate;
  }


  public String getBusinesssubtype() {
    return businesssubtype;
  }

  public void setBusinesssubtype(String businesssubtype) {
    this.businesssubtype = businesssubtype;
  }


  public Double getBusinesssum() {
    return businesssum;
  }

  public void setBusinesssum(Double businesssum) {
    this.businesssum = businesssum;
  }


  public String getBusinesstype() {
    return businesstype;
  }

  public void setBusinesstype(String businesstype) {
    this.businesstype = businesstype;
  }


  public String getBusinesstypelist() {
    return businesstypelist;
  }

  public void setBusinesstypelist(String businesstypelist) {
    this.businesstypelist = businesstypelist;
  }


  public String getCalculatemode() {
    return calculatemode;
  }

  public void setCalculatemode(String calculatemode) {
    this.calculatemode = calculatemode;
  }


  public String getCargoinfo() {
    return cargoinfo;
  }

  public void setCargoinfo(String cargoinfo) {
    this.cargoinfo = cargoinfo;
  }


  public String getClassifydate() {
    return classifydate;
  }

  public void setClassifydate(String classifydate) {
    this.classifydate = classifydate;
  }


  public String getClassifyfrequency() {
    return classifyfrequency;
  }

  public void setClassifyfrequency(String classifyfrequency) {
    this.classifyfrequency = classifyfrequency;
  }


  public String getClassifyresult() {
    return classifyresult;
  }

  public void setClassifyresult(String classifyresult) {
    this.classifyresult = classifyresult;
  }


  public Double getConstructionarea() {
    return constructionarea;
  }

  public void setConstructionarea(Double constructionarea) {
    this.constructionarea = constructionarea;
  }


  public String getContextinfo() {
    return contextinfo;
  }

  public void setContextinfo(String contextinfo) {
    this.contextinfo = contextinfo;
  }


  public String getContractflag() {
    return contractflag;
  }

  public void setContractflag(String contractflag) {
    this.contractflag = contractflag;
  }


  public String getCorpuspaymethod() {
    return corpuspaymethod;
  }

  public void setCorpuspaymethod(String corpuspaymethod) {
    this.corpuspaymethod = corpuspaymethod;
  }


  public String getCreditaggreement() {
    return creditaggreement;
  }

  public void setCreditaggreement(String creditaggreement) {
    this.creditaggreement = creditaggreement;
  }


  public String getCreditcycle() {
    return creditcycle;
  }

  public void setCreditcycle(String creditcycle) {
    this.creditcycle = creditcycle;
  }


  public String getCurrencymode() {
    return currencymode;
  }

  public void setCurrencymode(String currencymode) {
    this.currencymode = currencymode;
  }


  public String getCurrenylist() {
    return currenylist;
  }

  public void setCurrenylist(String currenylist) {
    this.currenylist = currenylist;
  }


  public String getCustomerid() {
    return customerid;
  }

  public void setCustomerid(String customerid) {
    this.customerid = customerid;
  }


  public String getCustomername() {
    return customername;
  }

  public void setCustomername(String customername) {
    this.customername = customername;
  }


  public String getCycleflag() {
    return cycleflag;
  }

  public void setCycleflag(String cycleflag) {
    this.cycleflag = cycleflag;
  }


  public Double getDealfee() {
    return dealfee;
  }

  public void setDealfee(Double dealfee) {
    this.dealfee = dealfee;
  }


  public String getDescribe1() {
    return describe1;
  }

  public void setDescribe1(String describe1) {
    this.describe1 = describe1;
  }


  public String getDescribe2() {
    return describe2;
  }

  public void setDescribe2(String describe2) {
    this.describe2 = describe2;
  }


  public String getDirection() {
    return direction;
  }

  public void setDirection(String direction) {
    this.direction = direction;
  }


  public Double getDiscountinterest() {
    return discountinterest;
  }

  public void setDiscountinterest(Double discountinterest) {
    this.discountinterest = discountinterest;
  }


  public Double getDiscountsum() {
    return discountsum;
  }

  public void setDiscountsum(Double discountsum) {
    this.discountsum = discountsum;
  }


  public String getDrawingperiod() {
    return drawingperiod;
  }

  public void setDrawingperiod(String drawingperiod) {
    this.drawingperiod = drawingperiod;
  }


  public String getDrawingtype() {
    return drawingtype;
  }

  public void setDrawingtype(String drawingtype) {
    this.drawingtype = drawingtype;
  }


  public String getDrtimes() {
    return drtimes;
  }

  public void setDrtimes(String drtimes) {
    this.drtimes = drtimes;
  }


  public String getEffectarea() {
    return effectarea;
  }

  public void setEffectarea(String effectarea) {
    this.effectarea = effectarea;
  }


  public Double getExecuteyearrate() {
    return executeyearrate;
  }

  public void setExecuteyearrate(Double executeyearrate) {
    this.executeyearrate = executeyearrate;
  }


  public Double getExposuresum() {
    return exposuresum;
  }

  public void setExposuresum(Double exposuresum) {
    this.exposuresum = exposuresum;
  }


  public String getExtendtimes() {
    return extendtimes;
  }

  public void setExtendtimes(String extendtimes) {
    this.extendtimes = extendtimes;
  }


  public Double getFinerate() {
    return finerate;
  }

  public void setFinerate(Double finerate) {
    this.finerate = finerate;
  }


  public String getFineratetype() {
    return fineratetype;
  }

  public void setFineratetype(String fineratetype) {
    this.fineratetype = fineratetype;
  }


  public String getFinishorg() {
    return finishorg;
  }

  public void setFinishorg(String finishorg) {
    this.finishorg = finishorg;
  }


  public String getFirstdrawingdate() {
    return firstdrawingdate;
  }

  public void setFirstdrawingdate(String firstdrawingdate) {
    this.firstdrawingdate = firstdrawingdate;
  }


  public String getFixcyc() {
    return fixcyc;
  }

  public void setFixcyc(String fixcyc) {
    this.fixcyc = fixcyc;
  }


  public String getFlag1() {
    return flag1;
  }

  public void setFlag1(String flag1) {
    this.flag1 = flag1;
  }


  public String getFlag2() {
    return flag2;
  }

  public void setFlag2(String flag2) {
    this.flag2 = flag2;
  }


  public String getFlag3() {
    return flag3;
  }

  public void setFlag3(String flag3) {
    this.flag3 = flag3;
  }


  public String getFlag4() {
    return flag4;
  }

  public void setFlag4(String flag4) {
    this.flag4 = flag4;
  }


  public String getFlag5() {
    return flag5;
  }

  public void setFlag5(String flag5) {
    this.flag5 = flag5;
  }


  public String getFlowreduceflag() {
    return flowreduceflag;
  }

  public void setFlowreduceflag(String flowreduceflag) {
    this.flowreduceflag = flowreduceflag;
  }


  public String getFundsource() {
    return fundsource;
  }

  public void setFundsource(String fundsource) {
    this.fundsource = fundsource;
  }


  public Double getFzanbalance() {
    return fzanbalance;
  }

  public void setFzanbalance(Double fzanbalance) {
    this.fzanbalance = fzanbalance;
  }


  public String getGolntimes() {
    return golntimes;
  }

  public void setGolntimes(String golntimes) {
    this.golntimes = golntimes;
  }


  public String getGraceperiod() {
    return graceperiod;
  }

  public void setGraceperiod(String graceperiod) {
    this.graceperiod = graceperiod;
  }


  public String getGuarantyflag() {
    return guarantyflag;
  }

  public void setGuarantyflag(String guarantyflag) {
    this.guarantyflag = guarantyflag;
  }


  public Double getGuarantyrate() {
    return guarantyrate;
  }

  public void setGuarantyrate(Double guarantyrate) {
    this.guarantyrate = guarantyrate;
  }


  public Double getGuarantyvalue() {
    return guarantyvalue;
  }

  public void setGuarantyvalue(Double guarantyvalue) {
    this.guarantyvalue = guarantyvalue;
  }


  public String getHousetype() {
    return housetype;
  }

  public void setHousetype(String housetype) {
    this.housetype = housetype;
  }


  public String getIccyc() {
    return iccyc;
  }

  public void setIccyc(String iccyc) {
    this.iccyc = iccyc;
  }


  public String getIctype() {
    return ictype;
  }

  public void setIctype(String ictype) {
    this.ictype = ictype;
  }


  public String getImmediacypaysource() {
    return immediacypaysource;
  }

  public void setImmediacypaysource(String immediacypaysource) {
    this.immediacypaysource = immediacypaysource;
  }


  public String getInputdate() {
    return inputdate;
  }

  public void setInputdate(String inputdate) {
    this.inputdate = inputdate;
  }


  public String getInputorgid() {
    return inputorgid;
  }

  public void setInputorgid(String inputorgid) {
    this.inputorgid = inputorgid;
  }


  public String getInputuserid() {
    return inputuserid;
  }

  public void setInputuserid(String inputuserid) {
    this.inputuserid = inputuserid;
  }


  public String getInterestpaymethod() {
    return interestpaymethod;
  }

  public void setInterestpaymethod(String interestpaymethod) {
    this.interestpaymethod = interestpaymethod;
  }


  public String getInvoiceno() {
    return invoiceno;
  }

  public void setInvoiceno(String invoiceno) {
    this.invoiceno = invoiceno;
  }


  public String getIsfixed() {
    return isfixed;
  }

  public void setIsfixed(String isfixed) {
    this.isfixed = isfixed;
  }


  public String getIsliquidity() {
    return isliquidity;
  }

  public void setIsliquidity(String isliquidity) {
    this.isliquidity = isliquidity;
  }


  public String getIsproject() {
    return isproject;
  }

  public void setIsproject(String isproject) {
    this.isproject = isproject;
  }


  public String getLctermtype() {
    return lctermtype;
  }

  public void setLctermtype(String lctermtype) {
    this.lctermtype = lctermtype;
  }


  public String getLgterm() {
    return lgterm;
  }

  public void setLgterm(String lgterm) {
    this.lgterm = lgterm;
  }


  public String getLngotimes() {
    return lngotimes;
  }

  public void setLngotimes(String lngotimes) {
    this.lngotimes = lngotimes;
  }


  public String getLoanflag() {
    return loanflag;
  }

  public void setLoanflag(String loanflag) {
    this.loanflag = loanflag;
  }


  public String getLowrisk() {
    return lowrisk;
  }

  public void setLowrisk(String lowrisk) {
    this.lowrisk = lowrisk;
  }


  public Double getLowriskbailsum() {
    return lowriskbailsum;
  }

  public void setLowriskbailsum(Double lowriskbailsum) {
    this.lowriskbailsum = lowriskbailsum;
  }


  public String getMfeepaymethod() {
    return mfeepaymethod;
  }

  public void setMfeepaymethod(String mfeepaymethod) {
    this.mfeepaymethod = mfeepaymethod;
  }


  public Double getMfeeratio() {
    return mfeeratio;
  }

  public void setMfeeratio(Double mfeeratio) {
    this.mfeeratio = mfeeratio;
  }


  public Double getMfeesum() {
    return mfeesum;
  }

  public void setMfeesum(Double mfeesum) {
    this.mfeesum = mfeesum;
  }


  public String getOccurdate() {
    return occurdate;
  }

  public void setOccurdate(String occurdate) {
    this.occurdate = occurdate;
  }


  public String getOccurtype() {
    return occurtype;
  }

  public void setOccurtype(String occurtype) {
    this.occurtype = occurtype;
  }


  public String getRemitmode() {
    return remitmode;
  }

  public void setRemitmode(String remitmode) {
    this.remitmode = remitmode;
  }


  public String getOldlcloadingdate() {
    return oldlcloadingdate;
  }

  public void setOldlcloadingdate(String oldlcloadingdate) {
    this.oldlcloadingdate = oldlcloadingdate;
  }


  public Double getOldlcno() {
    return oldlcno;
  }

  public void setOldlcno(Double oldlcno) {
    this.oldlcno = oldlcno;
  }


  public String getOldlcsum() {
    return oldlcsum;
  }

  public void setOldlcsum(String oldlcsum) {
    this.oldlcsum = oldlcsum;
  }


  public String getOldlctermtype() {
    return oldlctermtype;
  }

  public void setOldlctermtype(String oldlctermtype) {
    this.oldlctermtype = oldlctermtype;
  }


  public String getOldlcvaliddate() {
    return oldlcvaliddate;
  }

  public void setOldlcvaliddate(String oldlcvaliddate) {
    this.oldlcvaliddate = oldlcvaliddate;
  }


  public String getOperatedate() {
    return operatedate;
  }

  public void setOperatedate(String operatedate) {
    this.operatedate = operatedate;
  }


  public String getOperateorgid() {
    return operateorgid;
  }

  public void setOperateorgid(String operateorgid) {
    this.operateorgid = operateorgid;
  }


  public String getOperatetype() {
    return operatetype;
  }

  public void setOperatetype(String operatetype) {
    this.operatetype = operatetype;
  }


  public String getOperateuserid() {
    return operateuserid;
  }

  public void setOperateuserid(String operateuserid) {
    this.operateuserid = operateuserid;
  }


  public String getOperationinfo() {
    return operationinfo;
  }

  public void setOperationinfo(String operationinfo) {
    this.operationinfo = operationinfo;
  }


  public String getOperationmode() {
    return operationmode;
  }

  public void setOperationmode(String operationmode) {
    this.operationmode = operationmode;
  }


  public String getOriginalputoutdate() {
    return originalputoutdate;
  }

  public void setOriginalputoutdate(String originalputoutdate) {
    this.originalputoutdate = originalputoutdate;
  }


  public String getOtherarealoan() {
    return otherarealoan;
  }

  public void setOtherarealoan(String otherarealoan) {
    this.otherarealoan = otherarealoan;
  }


  public String getOthercondition() {
    return othercondition;
  }

  public void setOthercondition(String othercondition) {
    this.othercondition = othercondition;
  }


  public String getOurrole() {
    return ourrole;
  }

  public void setOurrole(String ourrole) {
    this.ourrole = ourrole;
  }


  public String getOverdraftperiod() {
    return overdraftperiod;
  }

  public void setOverdraftperiod(String overdraftperiod) {
    this.overdraftperiod = overdraftperiod;
  }


  public String getPaycurrency() {
    return paycurrency;
  }

  public void setPaycurrency(String paycurrency) {
    this.paycurrency = paycurrency;
  }


  public String getPaycyc() {
    return paycyc;
  }

  public void setPaycyc(String paycyc) {
    this.paycyc = paycyc;
  }


  public String getPaydate() {
    return paydate;
  }

  public void setPaydate(String paydate) {
    this.paydate = paydate;
  }


  public String getPaymentdate() {
    return paymentdate;
  }

  public void setPaymentdate(String paymentdate) {
    this.paymentdate = paymentdate;
  }


  public String getPaysource() {
    return paysource;
  }

  public void setPaysource(String paysource) {
    this.paysource = paysource;
  }


  public String getPaytimes() {
    return paytimes;
  }

  public void setPaytimes(String paytimes) {
    this.paytimes = paytimes;
  }


  public String getPdgpaymethod() {
    return pdgpaymethod;
  }

  public void setPdgpaymethod(String pdgpaymethod) {
    this.pdgpaymethod = pdgpaymethod;
  }


  public Double getPdgpayperiod() {
    return pdgpayperiod;
  }

  public void setPdgpayperiod(Double pdgpayperiod) {
    this.pdgpayperiod = pdgpayperiod;
  }


  public Double getPdgratio() {
    return pdgratio;
  }

  public void setPdgratio(Double pdgratio) {
    this.pdgratio = pdgratio;
  }


  public String getPdgsum() {
    return pdgsum;
  }

  public void setPdgsum(String pdgsum) {
    this.pdgsum = pdgsum;
  }


  public String getPigeonholedate() {
    return pigeonholedate;
  }

  public void setPigeonholedate(String pigeonholedate) {
    this.pigeonholedate = pigeonholedate;
  }


  public String getPlanallocation() {
    return planallocation;
  }

  public void setPlanallocation(String planallocation) {
    this.planallocation = planallocation;
  }


  public String getProjectname() {
    return projectname;
  }

  public void setProjectname(String projectname) {
    this.projectname = projectname;
  }


  public String getPromisesfeebegin() {
    return promisesfeebegin;
  }

  public void setPromisesfeebegin(String promisesfeebegin) {
    this.promisesfeebegin = promisesfeebegin;
  }


  public Double getPromisesfeeperiod() {
    return promisesfeeperiod;
  }

  public void setPromisesfeeperiod(Double promisesfeeperiod) {
    this.promisesfeeperiod = promisesfeeperiod;
  }


  public Double getPromisesfeeratio() {
    return promisesfeeratio;
  }

  public void setPromisesfeeratio(Double promisesfeeratio) {
    this.promisesfeeratio = promisesfeeratio;
  }


  public Double getPromisesfeesum() {
    return promisesfeesum;
  }

  public void setPromisesfeesum(Double promisesfeesum) {
    this.promisesfeesum = promisesfeesum;
  }


  public String getPurchaserinterest() {
    return purchaserinterest;
  }

  public void setPurchaserinterest(String purchaserinterest) {
    this.purchaserinterest = purchaserinterest;
  }


  public String getPurpose() {
    return purpose;
  }

  public void setPurpose(String purpose) {
    this.purpose = purpose;
  }


  public Double getRateadjustcyc() {
    return rateadjustcyc;
  }

  public void setRateadjustcyc(Double rateadjustcyc) {
    this.rateadjustcyc = rateadjustcyc;
  }


  public String getRatefloat() {
    return ratefloat;
  }

  public void setRatefloat(String ratefloat) {
    this.ratefloat = ratefloat;
  }


  public Double getRatefloattype() {
    return ratefloattype;
  }

  public void setRatefloattype(Double ratefloattype) {
    this.ratefloattype = ratefloattype;
  }


  public String getRatio() {
    return ratio;
  }

  public void setRatio(String ratio) {
    this.ratio = ratio;
  }


  public String getRelativeagreement() {
    return relativeagreement;
  }

  public void setRelativeagreement(String relativeagreement) {
    this.relativeagreement = relativeagreement;
  }


  public String getRelativeserialno() {
    return relativeserialno;
  }

  public void setRelativeserialno(String relativeserialno) {
    this.relativeserialno = relativeserialno;
  }


  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }


  public String getReversibility() {
    return reversibility;
  }

  public void setReversibility(String reversibility) {
    this.reversibility = reversibility;
  }


  public String getRiskattribute() {
    return riskattribute;
  }

  public void setRiskattribute(String riskattribute) {
    this.riskattribute = riskattribute;
  }


  public Double getRiskrate() {
    return riskrate;
  }

  public void setRiskrate(Double riskrate) {
    this.riskrate = riskrate;
  }


  public String getSafeguardtype() {
    return safeguardtype;
  }

  public void setSafeguardtype(String safeguardtype) {
    this.safeguardtype = safeguardtype;
  }


  public String getSecuritiesregion() {
    return securitiesregion;
  }

  public void setSecuritiesregion(String securitiesregion) {
    this.securitiesregion = securitiesregion;
  }


  public String getSecuritiestype() {
    return securitiestype;
  }

  public void setSecuritiestype(String securitiestype) {
    this.securitiestype = securitiestype;
  }


  public String getSelfuseflag() {
    return selfuseflag;
  }

  public void setSelfuseflag(String selfuseflag) {
    this.selfuseflag = selfuseflag;
  }


  public String getSerialno() {
    return serialno;
  }

  public void setSerialno(String serialno) {
    this.serialno = serialno;
  }


  public String getSubcontractflag() {
    return subcontractflag;
  }

  public void setSubcontractflag(String subcontractflag) {
    this.subcontractflag = subcontractflag;
  }


  public String getSuretype() {
    return suretype;
  }

  public void setSuretype(String suretype) {
    this.suretype = suretype;
  }


  public String getTempsaveflag() {
    return tempsaveflag;
  }

  public void setTempsaveflag(String tempsaveflag) {
    this.tempsaveflag = tempsaveflag;
  }


  public String getTermdate1() {
    return termdate1;
  }

  public void setTermdate1(String termdate1) {
    this.termdate1 = termdate1;
  }


  public String getTermdate2() {
    return termdate2;
  }

  public void setTermdate2(String termdate2) {
    this.termdate2 = termdate2;
  }


  public String getTermdate3() {
    return termdate3;
  }

  public void setTermdate3(String termdate3) {
    this.termdate3 = termdate3;
  }


  public String getTermday() {
    return termday;
  }

  public void setTermday(String termday) {
    this.termday = termday;
  }


  public String getTermmonth() {
    return termmonth;
  }

  public void setTermmonth(String termmonth) {
    this.termmonth = termmonth;
  }


  public String getTermyear() {
    return termyear;
  }

  public void setTermyear(String termyear) {
    this.termyear = termyear;
  }


  public String getThirdparty1() {
    return thirdparty1;
  }

  public void setThirdparty1(String thirdparty1) {
    this.thirdparty1 = thirdparty1;
  }


  public String getThirdparty2() {
    return thirdparty2;
  }

  public void setThirdparty2(String thirdparty2) {
    this.thirdparty2 = thirdparty2;
  }


  public String getThirdparty3() {
    return thirdparty3;
  }

  public void setThirdparty3(String thirdparty3) {
    this.thirdparty3 = thirdparty3;
  }


  public String getThirdpartyaccounts() {
    return thirdpartyaccounts;
  }

  public void setThirdpartyaccounts(String thirdpartyaccounts) {
    this.thirdpartyaccounts = thirdpartyaccounts;
  }


  public String getThirdpartyadd1() {
    return thirdpartyadd1;
  }

  public void setThirdpartyadd1(String thirdpartyadd1) {
    this.thirdpartyadd1 = thirdpartyadd1;
  }


  public String getThirdpartyadd2() {
    return thirdpartyadd2;
  }

  public void setThirdpartyadd2(String thirdpartyadd2) {
    this.thirdpartyadd2 = thirdpartyadd2;
  }


  public String getThirdpartyadd3() {
    return thirdpartyadd3;
  }

  public void setThirdpartyadd3(String thirdpartyadd3) {
    this.thirdpartyadd3 = thirdpartyadd3;
  }


  public String getThirdpartyid1() {
    return thirdpartyid1;
  }

  public void setThirdpartyid1(String thirdpartyid1) {
    this.thirdpartyid1 = thirdpartyid1;
  }


  public String getThirdpartyid2() {
    return thirdpartyid2;
  }

  public void setThirdpartyid2(String thirdpartyid2) {
    this.thirdpartyid2 = thirdpartyid2;
  }


  public String getThirdpartyid3() {
    return thirdpartyid3;
  }

  public void setThirdpartyid3(String thirdpartyid3) {
    this.thirdpartyid3 = thirdpartyid3;
  }


  public String getThirdpartyregion() {
    return thirdpartyregion;
  }

  public void setThirdpartyregion(String thirdpartyregion) {
    this.thirdpartyregion = thirdpartyregion;
  }


  public String getThirdpartyzip1() {
    return thirdpartyzip1;
  }

  public void setThirdpartyzip1(String thirdpartyzip1) {
    this.thirdpartyzip1 = thirdpartyzip1;
  }


  public String getThirdpartyzip2() {
    return thirdpartyzip2;
  }

  public void setThirdpartyzip2(String thirdpartyzip2) {
    this.thirdpartyzip2 = thirdpartyzip2;
  }


  public String getThirdpartyzip3() {
    return thirdpartyzip3;
  }

  public void setThirdpartyzip3(String thirdpartyzip3) {
    this.thirdpartyzip3 = thirdpartyzip3;
  }


  public Double getTotalcast() {
    return totalcast;
  }

  public void setTotalcast(Double totalcast) {
    this.totalcast = totalcast;
  }


  public Double getTotalsum() {
    return totalsum;
  }

  public void setTotalsum(Double totalsum) {
    this.totalsum = totalsum;
  }


  public String getTradecontractno() {
    return tradecontractno;
  }

  public void setTradecontractno(String tradecontractno) {
    this.tradecontractno = tradecontractno;
  }


  public String getTradecurrency() {
    return tradecurrency;
  }

  public void setTradecurrency(String tradecurrency) {
    this.tradecurrency = tradecurrency;
  }


  public Double getTradesum() {
    return tradesum;
  }

  public void setTradesum(Double tradesum) {
    this.tradesum = tradesum;
  }


  public String getUpdatedate() {
    return updatedate;
  }

  public void setUpdatedate(String updatedate) {
    this.updatedate = updatedate;
  }


  public Double getUsearea() {
    return usearea;
  }

  public void setUsearea(Double usearea) {
    this.usearea = usearea;
  }


  public String getUseorglist() {
    return useorglist;
  }

  public void setUseorglist(String useorglist) {
    this.useorglist = useorglist;
  }


  public String getVouchclass() {
    return vouchclass;
  }

  public void setVouchclass(String vouchclass) {
    this.vouchclass = vouchclass;
  }


  public String getVouchflag() {
    return vouchflag;
  }

  public void setVouchflag(String vouchflag) {
    this.vouchflag = vouchflag;
  }


  public String getVouchnewflag() {
    return vouchnewflag;
  }

  public void setVouchnewflag(String vouchnewflag) {
    this.vouchnewflag = vouchnewflag;
  }


  public String getVouchtype() {
    return vouchtype;
  }

  public void setVouchtype(String vouchtype) {
    this.vouchtype = vouchtype;
  }


  public String getVouchtype1() {
    return vouchtype1;
  }

  public void setVouchtype1(String vouchtype1) {
    this.vouchtype1 = vouchtype1;
  }


  public String getVouchtype2() {
    return vouchtype2;
  }

  public void setVouchtype2(String vouchtype2) {
    this.vouchtype2 = vouchtype2;
  }


  public String getWarrantor() {
    return warrantor;
  }

  public void setWarrantor(String warrantor) {
    this.warrantor = warrantor;
  }


  public String getWarrantorid() {
    return warrantorid;
  }

  public void setWarrantorid(String warrantorid) {
    this.warrantorid = warrantorid;
  }


  public String getCreditapply() {
    return creditapply;
  }

  public void setCreditapply(String creditapply) {
    this.creditapply = creditapply;
  }


  public String getNpareformapply() {
    return npareformapply;
  }

  public void setNpareformapply(String npareformapply) {
    this.npareformapply = npareformapply;
  }

}
