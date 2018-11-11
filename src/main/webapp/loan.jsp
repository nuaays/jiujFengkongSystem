<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>九江银行_个人金融_个人贷款</title>
<meta content="九江银行个人贷款" name="keywords">
<meta content="九江银行,个人金融,个人贷款" name="description">
<link type="text/css" rel="stylesheet" href="zxl_loan/boc2013_reset.css" />
<link type="text/css" rel="stylesheet" href="zxl_loan/boc2013_common.css" />
<link type="text/css" rel="stylesheet" href="zxl_loan/boc2013_pages.css" />
<script type="text/javascript" src="zxl_loan/boc2013_jquery-min.js"></script>
<script type="text/javascript" src="zxl_loan/boc2013_boc.js"></script>
<script type="text/javascript" src="zxl_loan/jquery-1.12.4.min.js"></script>
<link href="zxl_loan/bootstrap.min.css" rel="stylesheet">
<script src="bootstrap.min.js"></script>
<script>
//控制导航选中
$(document).ready(function(){
	var curlocation = '首页,个人金融,个人贷款';
	var array = curlocation.split(",");
	if(array.length < 2)
		return false;
	var curchannelname = array[1];
	//逐个栏目进行分析，修改栏目样式
	$("#BOC_NAVIGATOR_UL li").each(function(){
		var curtext = $(this).find("a").eq(0).text();
		if(curchannelname == curtext){
			$("#BOC_NAVIGATOR_UL li").removeClass("current");
			$(this).addClass("current");
			return false;
		}
	});
});
</script>
</head>

<body style="">

<div class="wrapper">
		 <!--2013-嵌-头部嵌套-->
				<!--top-->

    <div class="top clearfix">
    	<div class="top_links">
            <a href="javascript:void(0)">简体中文</a>
            <a href="javascript:void(0)">繁体中文</a>
            <a href="javascript:void(0)">English</a>
        </div>
        <div class="top_menu">
           
            <p class="p_2013" id="top_service">
			
			<a href="http://www.boc.cn/custserv/cs1/201312/t20131230_2805579.html">全球服务</a>
			
			</p>

            <p class="p_2013" id="top_network">
			
			<a href="http://www.bankofchina.com/sourcedb/operations/">网点</a>
			 /<a href="http://www.bankofchina.com/sourcedb/atmdist/">ATM分布</a></p>
        </div>
    </div>
    <!--header-->
    <div class="header">
    	<div class="header_area">
        	<h1 class="logo"><img src="zxl_loan/logo.jpg"></h1>
        	<img src="zxl_loan/title.jpg" style="position: absolute;top: 80px;left: 210px;">
            <div class="header_info">
                <div class="search_bar">
                	<img src="zxl_loan/tel.jpg" style="position: absolute;top: 60px;" >
                </div>
            </div>
        </div>
        <!--导航-->
        <div class="nav_2013">
        <ul class="menu" id="BOC_NAVIGATOR_UL">
            <li class="li_2013"><a href="user/zs_index.action" class="current">首页</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;hide&#39;)">公司金融</a></li>
            <li class="li_2013 current"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;hide&#39;)">个人金融</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;hide&#39;)">银行卡</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;hide&#39;)">金融市场</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;hide&#39;)">电子银行</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;hide&#39;)">投资者关系</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="javascript:void(0)" onmouseover="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;hide&#39;)">关于我们</a></li>
        </ul>
        <!--子菜单-->
    <div class="sub_menu" id="layer1" onmouseover="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;hide&#39;)">
    	<i></i>
        <div class="sub_area clearfix">
		<!-- 获取公司金融下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">公司融资服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">贸易金融服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">公司金融市场服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">人民币结算服务</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
		 
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">公司存款服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">养老金服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">全球公司金融</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">跨境人民币服务</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">中小企业服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">全球现金管理</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">公司银行服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">公告信息</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
		 <!-- 获取公司金融下的前n个子栏目的名称，数量由num控制 end-->
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
            <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="跨境人民币" alt="跨境人民币" href="javascript:void(0)"><img src="zxl_loan/W020170410651796460774.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="中小企业" alt="中小企业" href="javascript:void(0)"><img src="zxl_loan/W020140617340653562515.jpg" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->
        </div>
    </div>
    <div class="sub_menu" id="layer2" onmouseover="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
		<!-- 获取个人金融下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
			  <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">存款与账户</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">个人贷款</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">个人理财</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">个人汇兑</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			  <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">出国金融</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">惠民金融</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">私人银行</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">中银沪港通</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			  <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">个人银行</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">公告信息</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">优惠活动</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		 <!-- 获取个人金融下下的前n个子栏目的名称，数量由num控制 end-->
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="保管箱租赁服务" alt="保管箱租赁服务" href="javascript:void(0)"><img src="zxl_loan/W020151202408465813091.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="个人智能通存款" alt="个人智能通存款" href="#1"><img src="zxl_loan/W020140113752504505911.jpg" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->           
        </div>
    </div>
    <div class="sub_menu" id="layer3" onmouseover="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
		 <!-- 获取银行卡下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#1/">信用卡产品</a></li>
            	<li class="li_2013"><a href="#2/">借记卡产品</a></li>
            	<li class="li_2013"><a href="#3/">服务指南</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">优惠活动</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">公告信息</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">特色服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">精彩海淘</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		    <!-- 获取银行卡下的前n个子栏目的名称，数量由num控制 end-->			
            <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="精彩海淘" alt="精彩海淘" href="#/"><img src="zxl_loan/W020150413655103624158.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="“环球精彩 一卡尽享”境外消费返现5%" alt="“环球精彩 一卡尽享”境外消费返现5%" href="javascript:void(0)"><img src="zxl_loan/W020150414541015854036.jpg" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->   
        </div>
    </div>
    <div class="sub_menu" id="layer4" onmouseover="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
		<!-- 获取金融市场下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">宏观经济研究</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">外汇市场分析</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">黄金市场分析</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">债券市场分析</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#stock/">证券市场分析</a></li>
            	<li class="li_2013"><a href="#cs8/">理财产品</a></li>
            	<li class="li_2013"><a href="#fp3/">柜台债券产品</a></li>
            	<li class="li_2013"><a href="#yqwhpj/">中国银行远期外汇牌价</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#cri/">中国银行人民币国际化指数</a></li>
            	<li class="li_2013"><a href="#cfets_boc/">CFETS-BOC交易型债券指数</a></li>
            	<li class="li_2013"><a href="#fund/">托管/代销基金</a></li>
            	<li class="li_2013"><a href="#bi2/">公告信息</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		 <!-- 获取金融市场下的前n个子栏目的名称，数量由num控制 end-->	
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="中银日积月累——收益累进" alt="中银日积月累——收益累进" href="#3"><img src="zxl_loan/W020140120404737348907.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="银期转账" alt="银期转账" href="javascript:void(0)"><img src="zxl_loan/W020140112261101533535.jpg" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->   
        </div>
    </div>
    <div class="sub_menu" id="layer5" onmouseover="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
			<!-- 获取电子银行下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">个人网上银行</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">企业网上银行</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">手机银行</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">电话银行</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">服务资料</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">安全防护</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">优惠活动</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">公告信息</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="javascript:void(0)">便捷服务</a></li>
            	<li class="li_2013"><a href="javascript:void(0)">登录中行网银</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		  <!-- 获取电子银行下的前n个子栏目的名称，数量由num控制 end-->	
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="安全防护" alt="安全防护" href="javascript:void(0)"><img src="zxl_loan/W020140617360583006899.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="手机话费优惠充值(易宝支付)" alt="手机话费优惠充值(易宝支付)" href="javascript:void(0)"><img src="zxl_loan/W020130317408372503732.gif" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->
        </div>
    </div>
    <div class="sub_menu" id="layer6" onmouseover="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
		   <ul class="sub_nav list">
				<li class="li_2013"><a href="javascript:void(0)">公司战略及投资价值</a></li>
              <!-- 交易所公告 start-->            
            	<li class="li_2013" style="color:#535353">交易所公告（<a href="javascript:void(0)">H股</a>、<a href="javascript:void(0)">A股</a>）</li>
              <!-- 交易所公告 end-->
				<li class="li_2013"><a href="javascript:void(0)">财务报告</a></li>
				<li class="li_2013"><a href="javascript:void(0)">监管资本</a></li>
            </ul>
			<!-- 获取投资者关系下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#/ir6/">公司治理</a></li>
            	<li class="li_2013"><a href="#/ir4/">公司资料</a></li>
            	<li class="li_2013"><a href="#/ir8/">资本市场荣誉</a></li>
            	<li class="li_2013"><a href="#/cnir7/">投资者服务</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#/ir10/">可持续发展类债券</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		  <!-- 获取投资者关系下的前n个子栏目的名称，数量由num控制 end-->	
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->
        </div>
    </div>
    <div class="sub_menu" id="layer7" onmouseover="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
			<!-- 获取关于中行下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#bi1/">银行动态</a></li>
            	<li class="li_2013"><a href="#ab8/">媒体看中行</a></li>
            	<li class="li_2013"><a href="#ab2/">银行荣誉</a></li>
            	<li class="li_2013"><a href="#boccsr/">企业社会责任</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#ab1/">中行概况</a></li>
            	<li class="li_2013"><a href="#ab6/">中行机构</a></li>
            	<li class="li_2013"><a href="#ab7/">中行历程</a></li>
            	<li class="li_2013"><a href="#BCP/">消费者权益保护</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#bi4/">招聘公告</a></li>
            	<li class="li_2013"><a href="#bi6/">采购公告</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		  <!-- 获取关于中行下的前n个子栏目的名称，数量由num控制 end-->	
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->
        </div>
    </div>
    <!--子菜单end-->
        </div><!--导航-end-->        
    </div>
    <!--header-end--> 
		  <!--2013-嵌-头部嵌套结束-->  
    <!--cramb-->
    <div class="cramb"><span>当前位置：</span><a href="user/zs_index.action">首页</a>&nbsp;&gt;&nbsp;<a href="http://www.boc.cn/pbservice/">个人金融</a>&nbsp;&gt;&nbsp;<a href="#2/">个人贷款</a></div>
    
    <h1 class="per_bank_title">填写贷款申请信息</h1>
    <div class="per_bank_login">
    	<a href="javascript:void(0)" class="hover_btn">网银登录</a>
        <div class="hover_menu hd" style="display: block;">
        	<ul>
        		<li><a href="user/bLogin.action" >个人客户网银登录</a></li>
                <li><a href="user/bLogin.action">个人贵宾网银登录</a></li>
                <li class="last"><a href="user/bLogin.action" >企业客户网银登录</a></li>
        	</ul>
        </div>
    </div>
	<div class="main">
    	<div class="row">
			<div class="col-md-10">
				<form action="lc/addloan.action" method="post">
				<table class="table table-hover" id="tb">
					<TBODY>
						<TR >
							<TD >姓名：</TD>
							<TD ><input name="customername" value="${indinfo.fullname }"/></TD>
							<td></td>
							<TD>身份证号：</TD>
							<TD><input name="idcard" value="${indinfo.certid18 }"/></TD>
							<td></td>
						</TR>
						<TR >
							<TD>性别：</TD>
							<TD><input name="sex" value="${indinfo.sex }"/></TD>
							<td></td>
							<TD>手机号：</TD>
							<TD><input name="mobiletelephone" value="${indinfo.mobiletelephone }"/></TD>
							<td></td>
						</TR>
						<TR >
							<TD>贸易合同金额：</TD>
							<TD>
								<select name="tradesum" style="width: 174px;height: 26px;">
									<option value="50000">50000</option>
									<option value="100000">100000</option>
									<option value="200000">200000</option>
									<option value="300000">300000</option>
									<option value="400000">400000</option>
									<option value="500000">500000</option>
								</select>
							</TD>
							<td></td>
							<TD>业务申请类型：</TD>
							<TD>
								<select name="applytype" style="width: 174px;height: 26px;">
									<option value="公积金贷">公积金贷</option>
									<option value="按揭贷">按揭贷</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR >
							<TD>贷款期限：</TD>
							<TD>
								<select name="graceperiod" style="width: 174px;height: 26px;">
									<option value="24期">24期</option>
									<option value="60期">60期</option>
									<option value="120期">120期</option>
									<option value="180期">180期</option>
									<option value="240期">240期</option>
									<option value="420期">420期</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR >
							<TD>汇款方式：</TD>
							<TD>
								<select name="remitmode" style="width: 174px;height: 26px;">
									<option value="网银汇款">网银汇款</option>
									<option value="电话、手机银行汇款">电话、手机银行汇款</option>
									<option value="中小银行网点汇款">中小银行网点汇款</option>
								</select>
							</TD>
							<td></td>
							<TD>贷款操作方式：</TD>
							<TD>
								<select name="operatetype" style="width: 174px;height: 26px;">
									<option value="普通">普通</option>
									<option value="内部联合">内部联合</option>
									<option value="银团贷款">银团贷款</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR >
							<TD>承兑人：</TD>
							<TD><input name="thirdparty1"/></TD>
							<td></td>
							<TD>担保人：</TD>
							<TD><input name="warrantor"/></TD>
							<td></td>
						</TR>
						<TR >
							<TD >担保形式：</TD>
							<TD>
								<select name="vouchclass" style="width: 174px;height: 26px;">
									<option value="保证">保证</option>
									<option value="抵押">抵押</option>
									<option value="质押">质押</option>
									<option value="定金">定金</option>
									<option value="留置">留置</option>
								</select>
							</TD>
							<td></td>
							<TD>担保总价值：</TD>
							<TD><input name="guarantyvalue"/></TD>
							<td></td>
						</TR>
						<TR >
							<TD >自用额度或担保额度：</TD>
							<TD ><input name="selfuseflag"/></TD>
							<td></td>
							<TD>是否固定资产贷款：</TD>
							<TD>
								<select name="isfixed" style="width: 174px;height: 26px;">
									<option value="是">是</option>
									<option value="否">否</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR >
							<TD>是否流动资金贷款：</TD>
							<TD>
								<select name="isliquidity" style="width: 174px;height: 26px;">
									<option value="是">是</option>
									<option value="否">否</option>
								</select>
							</TD>
							<td></td>
							<TD>保证金金额：</TD>
							<TD><input name="bailsum"/></TD>
							<td></td>
						</TR>
						<TR >
							<TD>额度下业务是否需要签署合同：</TD>
							<TD>
								<select name="subcontractflag" style="width: 174px;height: 26px;">
									<option value="是">是</option>
									<option value="否">否</option>
								</select>
							</TD>
							<td></td>	
							<TD>有无追索权：</TD>
							<TD>
								<select name="reversibility" style="width: 174px;height: 26px;">
									<option value="有">有</option>
									<option value="无">无</option>
								</select>
							</TD>
						</TR>
						<TR >
							<TD>备注：</TD>
							<TD><input name="remark" /></TD>
							
						</TR>
						<TR >
							<td></td>
							<TD><button type="reset" class="btn btn-info">重置</button></TD>
							<td></td>
							<td></td>
							<TD><button type="submit" class="btn btn-success">提交</button></TD>
						</TR>
					</TBODY>
				</table>
				</form>
			</div>
		</div>
  	</div><!--main-end-->
	<div class="footer_2013">
    <div class="footer_phone">
        <p><em>服务热线：</em><span>95316</span>（大陆地区）；<span>+86(区号)95316</span> （海外及港澳台地区）    <em class="footer_sp">信用卡热线：</em><span>40066-95316</span>（大陆地区）； <span>+86 10-66085566</span>（海外及港澳台地区）</p>
    </div>
    <div class="footer_copy">
    	<div class="footer_area">
        	<p>
			<!--取提示信息栏目前四篇文档-->
					<a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135605.html">
						网站地图
					</a><i>|</i>
				
					<a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135606.html">
						版权声明
					</a><i>|</i>
				
					<a href="http://www.boc.cn/custserv/cs1/200812/t20081209_135607.html">
						使用条款
					</a><i>|</i>
				
					<a href="http://www.boc.cn/custserv/cs1/200812/t20081212_257687.html">
						联系我们
					</a><i>|</i>
				
            	
                京ICP备10052455号 京公网安备110102002036号 
            </p>
            <p>Copyright© BANK OF CHINA(BOC) All Rights Reserved. </p>
        </div>
    </div>
</div><!--footer-end-->

</div><!--wrapper-end-->

</body>
</html>