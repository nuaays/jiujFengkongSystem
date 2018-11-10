<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
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
            <a href="#">简体中文</a>
            <a href="#">繁体中文</a>
            <a href="#">English</a>
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
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;hide&#39;)">公司金融</a></li>
            <li class="li_2013 current"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer2&#39;,&#39;&#39;,&#39;hide&#39;)">个人金融</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer3&#39;,&#39;&#39;,&#39;hide&#39;)">银行卡</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer4&#39;,&#39;&#39;,&#39;hide&#39;)">金融市场</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer5&#39;,&#39;&#39;,&#39;hide&#39;)">电子银行</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;hide&#39;)">投资者关系</a></li>
            <li class="li_2013"><a name="PL_MENU_NAME" href="#" onmouseover="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer7&#39;,&#39;&#39;,&#39;hide&#39;)">关于我们</a></li>
        </ul>
        <!--子菜单-->
    <div class="sub_menu" id="layer1" onmouseover="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer1&#39;,&#39;&#39;,&#39;hide&#39;)">
    	<i></i>
        <div class="sub_area clearfix">
		<!-- 获取公司金融下的前n个子栏目的名称，数量由num控制 start-->
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#2/">公司融资服务</a></li>
            	<li class="li_2013"><a href="#3/">贸易金融服务</a></li>
            	<li class="li_2013"><a href="#4/">公司金融市场服务</a></li>
            	<li class="li_2013"><a href="#">人民币结算服务</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
		 
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#1/">公司存款服务</a></li>
            	<li class="li_2013"><a href="#7/">养老金服务</a></li>
            	<li class="li_2013"><a href="#13/">全球公司金融</a></li>
            	<li class="li_2013"><a href="#11/">跨境人民币服务</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			<!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#8/">中小企业服务</a></li>
            	<li class="li_2013"><a href="#14/">全球现金管理</a></li>
            	<li class="li_2013"><a href="#5/">公司银行服务</a></li>
            	<li class="li_2013"><a href="#">公告信息</a></li>
			<!-- 显示格式为5行一列 end-->
            </ul>
		 <!-- 获取公司金融下的前n个子栏目的名称，数量由num控制 end-->
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
            <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="跨境人民币" alt="跨境人民币" href="#"><img src="zxl_loan/W020170410651796460774.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="中小企业" alt="中小企业" href="#8/"><img src="zxl_loan/W020140617340653562515.jpg" width="190" height="60"></a></li>
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
            	<li class="li_2013"><a href="#1/">存款与账户</a></li>
            	<li class="li_2013"><a href="#2/">个人贷款</a></li>
            	<li class="li_2013"><a href="#3/">个人理财</a></li>
            	<li class="li_2013"><a href="#4/">个人汇兑</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			  <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#7/">出国金融</a></li>
            	<li class="li_2013"><a href="#8/">惠民金融</a></li>
            	<li class="li_2013"><a href="#6/">私人银行</a></li>
            	<li class="li_2013"><a href="#9/">中银沪港通</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
			  <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#5/">个人银行</a></li>
            	<li class="li_2013"><a href="#">公告信息</a></li>
            	<li class="li_2013"><a href="#">优惠活动</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		 <!-- 获取个人金融下下的前n个子栏目的名称，数量由num控制 end-->
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="保管箱租赁服务" alt="保管箱租赁服务" href="#"><img src="zxl_loan/W020151202408465813091.jpg" width="190" height="60"></a></li>
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
            	<li class="li_2013"><a href="#">优惠活动</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#">公告信息</a></li>
            	<li class="li_2013"><a href="#5/">特色服务</a></li>
            	<li class="li_2013"><a href="#">精彩海淘</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		    <!-- 获取银行卡下的前n个子栏目的名称，数量由num控制 end-->			
            <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="精彩海淘" alt="精彩海淘" href="#/"><img src="zxl_loan/W020150413655103624158.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="“环球精彩 一卡尽享”境外消费返现5%" alt="“环球精彩 一卡尽享”境外消费返现5%" href="#"><img src="zxl_loan/W020150414541015854036.jpg" width="190" height="60"></a></li>
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
            	<li class="li_2013"><a href="#">宏观经济研究</a></li>
            	<li class="li_2013"><a href="#">外汇市场分析</a></li>
            	<li class="li_2013"><a href="#">黄金市场分析</a></li>
            	<li class="li_2013"><a href="#">债券市场分析</a></li>
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
            	<li class="li_2013"><a title="银期转账" alt="银期转账" href="#"><img src="zxl_loan/W020140112261101533535.jpg" width="190" height="60"></a></li>
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
            	<li class="li_2013"><a href="#">个人网上银行</a></li>
            	<li class="li_2013"><a href="#">企业网上银行</a></li>
            	<li class="li_2013"><a href="#">手机银行</a></li>
            	<li class="li_2013"><a href="#">电话银行</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#">服务资料</a></li>
            	<li class="li_2013"><a href="#">安全防护</a></li>
            	<li class="li_2013"><a href="#">优惠活动</a></li>
            	<li class="li_2013"><a href="#">公告信息</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
			<ul class="sub_nav list">
              <!-- 显示格式为5行一列 start-->
            	<li class="li_2013"><a href="#">便捷服务</a></li>
            	<li class="li_2013"><a href="#">登录中行网银</a></li>
              <!-- 显示格式为5行一列 end-->
            </ul>
		  <!-- 获取电子银行下的前n个子栏目的名称，数量由num控制 end-->	
		   <!-- 取头条新闻的前2篇文档（标题+附件） start-->
			 <ul class="sub_nav list sub_ad">
            	<li class="li_2013"><a title="安全防护" alt="安全防护" href="#"><img src="zxl_loan/W020140617360583006899.jpg" width="190" height="60"></a></li>
            	<li class="li_2013"><a title="手机话费优惠充值(易宝支付)" alt="手机话费优惠充值(易宝支付)" href="#"><img src="zxl_loan/W020130317408372503732.gif" width="190" height="60"></a></li>
            </ul>
			<!-- 取头条新闻的前2篇文档（标题+附件） end-->
        </div>
    </div>
    <div class="sub_menu" id="layer6" onmouseover="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;show&#39;)" onmouseout="showHideLayer(&#39;layer6&#39;,&#39;&#39;,&#39;hide&#39;)">
        <i></i>
        <div class="sub_area clearfix">
		   <ul class="sub_nav list">
				<li class="li_2013"><a href="#">公司战略及投资价值</a></li>
              <!-- 交易所公告 start-->            
            	<li class="li_2013" style="color:#535353">交易所公告（<a href="#">H股</a>、<a href="#">A股</a>）</li>
              <!-- 交易所公告 end-->
				<li class="li_2013"><a href="#">财务报告</a></li>
				<li class="li_2013"><a href="#">监管资本</a></li>
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
    	<a href="#" class="hover_btn">网银登录</a>
        <div class="hover_menu hd" style="display: block;">
        	<ul>
        		<li><a href="http://www.boc.cn/ebanking/bocnet_login/" title="请从www.boc.cn, www.bankofchina.com进入">个人客户网银登录</a></li>
                <li><a href="http://www.boc.cn/ebanking/bocnet_login/index1.html" title="请从www.boc.cn, www.bankofchina.com进入">个人贵宾网银登录</a></li>
                <li class="last"><a href="http://www.boc.cn/ebanking/bocnet_login/index2.html" title="请从www.boc.cn, www.bankofchina.com进入">企业客户网银登录</a></li>
        	</ul>
        </div>
    </div>
	<div class="main">
    	<div class="row">
			<div class="col-md-10">
				<form action="" method="">
				<table class="table table-hover" id="tb">
					<TBODY>
						<TR class="gray">
							<TD >姓名：</TD>
							<TD ><input name="username"/></TD>
							<td></td>
							<TD>身份证号：</TD>
							<TD><input name="idNum"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>年龄：</TD>
							<TD><input name="age"/></TD>
							<td></td>
							<TD>手机号：</TD>
							<TD><input name="phoneNumbr"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>住址：</TD>
							<TD><input name="address"/></TD>
							<td></td>
							<TD>紧急联系人电话：</TD>
							<TD><input name="linkmanPhoneNumber"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>学历：</TD>
							<TD>
								<select name="eduLeven" style="width: 174px;height: 26px;">
									<option value="1">中专</option>
									<option value="2">大专</option>
									<option value="3" selected="selected">本科</option>
									<option value="4">硕士</option>
									<option value="5">博士</option>
									<option value="0">其它</option>
								</select>
							</TD>
							<td></td>
							<TD>婚姻状况：</TD>
							<TD>
								<select name="maritalStatus" style="width: 174px;height: 26px;">
									<option value="0">未婚</option>
									<option value="1">已婚</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>职业/单位：</TD>
							<TD>
								<select name="eduLeven" style="width: 174px;height: 26px;">
									<option value="1">国家机关公务员；事业单位员工</option>
									<option value="2">金融机构员工(不含保险公司)</option>
									<option value="3">人民警察、武装警察部队、中国人民解放军</option>
									<option value="4">国家机关、事业单位和国有企业离退休人员；优质公用事业单位（邮政、电力、电信、报业、广播电视、民航、机场等）</option>
									<option value="5">一般上市公司（ST、PT和亏损公司除外）员工</option>
									<option value="6">一般国有企业、股份公司、私营企业员工；个体户；专业人员</option>
									<option value="0" selected="selected">其他职业或职业不确定的,学生；待业或无业人员；</option>
								</select>
							</TD>
							<td></td>
							<TD>职位/职称：</TD>
							<TD>
								<select name="eduLeven" style="width: 174px;height: 26px;">
									<option value="1">银行分行行级干部、厅局级干部、大校及以上</option>
									<option value="2">高级管理人员、总公司总经理</option>
									<option value="3">银行支行行长、处级干部、中校、上校军</option>
									<option value="4">中级管理人员、公司或分公司总经理</option>
									<option value="5">一般管理人员、部门经理、中尉、少尉</option>
									<option value="6">一般员工、工人、科员；国家机关、事业单位和国有企业离退休人员、士兵</option>
									<option value="0" selected="selected">待业人员、学生和职位不确定的其他人员</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>贷款类型：</TD>
							<TD>
								<select name="houseLoan" style="width: 174px;height: 26px;">
									<option value="0">公积金贷</option>
									<option value="1">按揭贷</option>
								</select>
							</TD>
							<td></td>
							<TD>申请额度：</TD>
							<TD>
								<select name="houseLoan" style="width: 174px;height: 26px;">
									<option value="0">5万</option>
									<option value="1">10万</option>
									<option value="2">20万</option>
									<option value="3">30万</option>
									<option value="4">40万</option>
									<option value="5">50万</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>贷款期限：</TD>
							<TD>
								<select name="houseLoan" style="width: 174px;height: 26px;">
									<option value="1">24期</option>
									<option value="2">60期</option>
									<option value="3">120期</option>
									<option value="4">180期</option>
									<option value="5">240期</option>
									<option value="6">420期</option>
								</select>
							</TD>
							<td></td>
							<TD>还款方式：</TD>
							<TD>
								<select name="houseLoan" style="width: 174px;height: 26px;">
									<option value="1">月度</option>
									<option value="2">季度</option>
									<option value="3">年度</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD >到款账户：</TD>
							<TD ><input name="username"/></TD>
							<td></td>
							<TD>还款账户：</TD>
							<TD><input name="idNum"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD >担保人：</TD>
							<TD ><input name="username"/></TD>
							<td></td>
							<TD>担保人联系方式：</TD>
							<TD><input name="idNum"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD >紧急联系人：</TD>
							<TD ><input name="username"/></TD>
							<td></td>
							<TD>紧急联系人联系方式：</TD>
							<TD><input name="idNum"/></TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>家庭地址：</TD>
							<TD>
								<input name="income"/>
							</TD>
							<td></td>
							<TD>工作地址：</TD>
							<TD>
								<input name="income"/>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>个人月收入：</TD>
							<TD>
								<select name="eduLeven" style="width: 174px; height: 26px;">
									<option value="0">5000以下</option>
									<option value="1">5000-10000</option>
									<option value="2">10000-20000</option>
									<option value="3">20000-30000</option>
									<option value="4">20000-30000</option>
									<option value="5">50000以上</option>
								</select>
							</TD>
							<td></td>	
							<TD>家庭年收入：</TD>
							<TD>
								<select name="eduLeven" style="width: 174px;height: 26px;">
									<option value="1">10万以下</option>
									<option value="2">10万-20万</option>
									<option value="3">20万-30万</option>
									<option value="4">30万-40万</option>
									<option value="5">40万-50万</option>
									<option value="0">50万以上</option>
								</select>
							</TD>
						</TR>
						<TR class="gray">
							<TD>是否有房贷：</TD>
							<TD>
								<select name="maritalStatus" style="width: 174px;height: 26px;">
									<option value="0">无</option>
									<option value="1">有</option>
								</select>
							</TD>
							<td></td>
							<TD>是否有车贷：</TD>
							<TD>
								<select name="maritalStatus" style="width: 174px;height: 26px;">
									<option value="0">无</option>
									<option value="1">有</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD>是否有信用卡：</TD>
							<TD>
								<select name="maritalStatus" style="width: 174px;height: 26px;">
									<option value="0">无</option>
									<option value="1">有</option>
								</select>
							</TD>
							<td></td>
							<TD>是否有保险：</TD>
							<TD>
								<select name="maritalStatus" style="width: 174px;height: 26px;">
									<option value="0">无</option>
									<option value="1">有</option>
								</select>
							</TD>
							<td></td>
						</TR>
						<TR class="gray">
							<TD >到款账户：</TD>
							<TD ><input name="username"/></TD>
							<td></td>
							<TD>还款账户：</TD>
							<TD><input name="idNum"/></TD>
							<td></td>
						</TR>
						
						<TR >
							<td></td>
							<TD><button type="reset" class="btn btn-info">重置</button></TD>
							<td></td>
							<td></td>
							<TD><button type="button" class="btn btn-success">提交</button></TD>
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