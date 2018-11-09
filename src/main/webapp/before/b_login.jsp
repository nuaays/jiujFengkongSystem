<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>九江银行用户登录</title>
<meta name="status-check" content="@CMBOK@">

<base href=".">
<!-- link引入样式标签 -->
<link href="./login_files/Head.css" type="text/css" rel="Stylesheet">
<link href="./login_files/Common.css" rel="stylesheet" type="text/css">
<link href="./login_files/Page.css" rel="stylesheet" type="text/css">
</head>
<body>
		<!-- 头部内容开始 -->
	<div class="menubg">
		<div class="menu">
			<div class="tmenu">
				<div class="logo">
					<a href="?主页面">
					<img src="login_files/jjlogo.jpg" height="100" width="100"></a>
				</div>
				<div class="mbt">
					<a href="登录后的主页面">首页 </a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="ccproductbg">
		<div class="zback"></div>
	<!-- 头部内容结束 -->

		<div class="updown">

			<div class="box_title">
				<div class="left">
					<h1 class="box_title_h2" style="padding-top: 32px;">九江银行用户登录</h1>


				</div>
				<div class="right"
					style="padding: 53px 28px 28px 0px; font-size: 14px;">
					<a href="登录超链接？" class="bluelink">登录</a>
					<span style="color: #DDD; margin: 0px 5px;"> &nbsp;|&nbsp;</span> 
					<a href="注册超链接地址" class="bluelink">注册</a>


				</div>
				<div class="clear"></div>
			</div>
			<div class="gray_split_line" style="margin: 13px 0px;"></div>
			<div id="workspace" style="width: 100%; float: none;">



				<!-- 使用ajax实现登录 -->
				<div class="inputform"
					style="margin: 30px auto 12px auto; width: 450px;">
					<div>
						<label> 用户名</label><input />
						
					</div>
					<div class="memo" generated="true" htmlfor="ctlLoginName">
						请输入登录名/手机号码/邮箱</div>


					<div>
						<label> 登录密码</label> <input />

					</div>
					<div class="memo" generated="true" htmlfor="ctlPassword">
						请输入注册密码
					</div>

					<!-- 此处加个验证码验证 -->
					

					<div>
						<label> </label> <a id="btnLogin" class="btn_blue_h36"
							style="width: 88px; *margin-left: 6px;">登录</a>
							<a class="bluelink"
							href="？找回密码超链接"
							style="margin-left: 15px;" target="_blank" title="请使用密码重置功能">忘记密码？</a>
					</div>
				</div>
				
				<div class="gray_split_line" style="margin-top: 24px;"></div>
				<div class="bottomcenter">

					<a class="bluelink"
						href="？注册超链接"
						style="margin-left: 15px;">免费注册九江银行用户</a>
				</div>

			</div>

		</div>

	</div>
	
	<div class="footerbg">
				<div class="footer clearfix">
					<div class="fbt">
						<ul>
							<li>服务热线：95555</li>
							<li>境外服务热线：86-755-84391000</li>
							<li>信用卡服务热线：400-820-5555</li>
						</ul>
					</div>
					<div class="fbt">
						<ul>
							<li>企业年金服务热线：800-830-8855</li>
							<li>私人银行服务专线：40066-95555</li>
							<li>钻石贵宾服务专线：40068-95555</li>
							<li>金葵花贵宾服务专线：40088-95555</li>
						</ul>
					</div>
					<div class="fbt width150 ml20">
						<ul>
							<li><a target="_blank" href="http://vip.cmbchina.com/">财智生活</a></li>
							<li><a target="_blank" href="http://vip.cmbchina.com/">VIP尊享</a></li>
							<li><a target="_blank" href="http://weibo.com/cmbchina">新浪官方微博</a></li>
							<li><a target="_blank"
								href="http://www.cmbchina.com/about/?pageid=goodlink"> 友情链接</a></li>
						</ul>
					</div>
					<div class="fbt width150">
						<ul>
							<li><a target="_blank"
								href="http://www.cmbchina.com/About/SiteMap.aspx">网站地图</a></li>
							<li><a target="_blank"
								href="http://www.cmbchina.com/webpages/certificate.htm">安全说明</a></li>
							<li><a target="_blank"
								href="http://www.cmbchina.com/about/Default.aspx?guid=021286d3-660e-45ee-b127-86f66db33bd0">
									网站声明</a></li>
							<li><a target="_blank"
								href="http://www.cmbchina.com/about/Default.aspx?guid=fae5aafd-802d-4d0b-b8be-2f992bc1fdb4">
									隐私条款</a></li>
						</ul>
					</div>
					<div class="fbt width110">
						<div class="weixi_code">
							<img src="./resetpwd_files/weixin_code.jpg"><p>
									手机一网通<br> m.cmbchina.com
								</p>
						</div>
					</div>
				</div>
				<div class="copyright clearf">
					<p>
						九江银行客户投诉受理渠道 | 电话：95555转7 Email：95555@cmbchina.com
						信函：江西省九江市深南大道7088号九江银行大厦，九江银行服务监督管理中心 邮编：518040<br>
							CopyRight© 1997-2015 九江银行一网通版权所有 &nbsp;<a target="_blank"
							href="http://www.miitbeian.gov.cn/" style="color: #5c6773;">粤ICP备17088997号</a>
					</p>
					<p>
						<a href="https://user.cmbchina.com/#"> <img
							src="./resetpwd_files/wangan.jpg"></a><a
							href="https://user.cmbchina.com/#"><img
							src="./resetpwd_files/sz_police.jpg"></a><a
							href="https://user.cmbchina.com/#"><img
							src="./resetpwd_files/chengxin.jpg"></a><a
							href="https://user.cmbchina.com/#"><img
							src="./resetpwd_files/kexing.jpg"></a>
					</p>
				</div>
			</div>
	
</body>
</html>