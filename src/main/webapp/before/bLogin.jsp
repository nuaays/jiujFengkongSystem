<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>九江银行用户登录</title>
<meta name="status-check" content="@CMBOK@">

<base href=".">
<!-- link引入样式标签 -->
<link href="before/login_files/Head.css" type="text/css" rel="Stylesheet">
<link href="before/login_files/Common.css" rel="stylesheet" type="text/css">
<link href="before/login_files/Page.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="before/jquery-2.1.4/jquery.js"></script>
<!-- 提交登录信息 -->
<script type="text/javascript">
	$(function() {
		$("#btnLogin").click(function() {
			//发送ajax请求
			$.ajax({
				//路径，方式，数据类型，数据的值；    回调函数
				url : "user/loginHandler.action",
				type : "post",
				dataType : "json",
				//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
				data : {
					"userName" : $("#userName").val(),
					"pwd" : $("#pwd").val(),
					"checkCode" : $("#checkCode").val()
				},
				success : function(data) {
					if (data.flag) {
						//登录成功
						location.href = "user/index.action";
					} else {
						//登录失败
						$("#errorFont").html("用户名或则密码错误!!!");
						$("#CreateCheckCode").click();
					}
				}
			});
		});
	})
</script>
<!-- 验证码页面验证 -->
<script type="text/javascript">
function checkCode() {
	$.ajax({
		//路径，方式，数据类型，数据的值；    回调函数
		url : "user/checkCodejsp.action",
		type : "post",
		dataType : "json",
		//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
		data : {
			"checkCode" : $("#checkCode").val()	
		},
		success : function(data) {
			if (data.flag) {
				$("#errorcode").html("");
			} else {
				$("#errorcode").html("验证码错误").css("color","red");
			}
				
		}	
	});
}
</script>
<script type="text/javascript">
	function checkCode2() {
		$("#errorcode").html("");
	}
</script>
</head>
<body>
	<!-- 头部内容开始 -->
	<div class="menubg">
		<div class="menu">
			<div class="tmenu">
				<div class="logo">
					<a href="user/index.action">
						<img src="before/login_files/jjlogo.jpg" height="100" width="100">
					</a>
				</div>
				<div class="mbt">
					<a href="user/index.action">首页 </a>
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
				<div class="right" style="padding: 53px 28px 28px 0px; font-size: 14px;">
					<a href="user/login.action" class="bluelink">登录</a>
					<span style="color: #DDD; margin: 0px 5px;"> &nbsp;|&nbsp;</span>
					<a href="user/showRegist.action" class="bluelink">注册</a>
				</div>
				<div class="clear"></div>
			</div>
			<div class="gray_split_line" style="margin: 13px 0px;"></div>
			<div id="workspace" style="width: 100%; float: none;">
				<!-- 使用ajax实现登录 -->
				<div class="inputform" style="margin: 30px auto 12px auto; width: 450px;">
					<div>
						<font size="1" color="red" id="errorFont"></font>
						<p>
					</div>
					<div>
						<label> 用户名</label>
						<input type="text" id="userName" placeholder="请输入登录名/手机号码"/>
					</div>
					<div>
						<label> 登录密码</label>
						<input type="password" id="pwd" placeholder="请输入密码"/>
					</div>

					<!-- 此处加个验证码验证 -->
					<div style="position: relative;">
						<label>验证码</label>
						<input type="text" style="margin-top: 3px; width: 173px;" id="checkCode" name="checkCode" 
						onblur="checkCode()" onfocus="checkCode2()"  placeholder="验证码不区分大小写" />
						<img src="user/code.action" onclick="this.src='user/code.action?' + Math.random()" id="CreateCheckCode" style="position: absolute; left: 284px;"/>
					</div>
					<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label id="errorcode"> </label><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a id="btnLogin" class="btn_blue_h36" style="width: 88px; *margin-left: 6px;">登录</a>
						<a class="bluelink" href="user/toupdate.action" style="margin-left: 15px;" target="_blank" title="请使用密码重置功能">
						忘记密码</a>
					</div>
				</div>
				<div class="gray_split_line" style="margin-top: 24px;"></div>
				<div class="bottomcenter">
					<a class="bluelink" href="user/showRegist.action" style="margin-left: 15px;">免费注册九江银行用户</a>
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
					<li>
						<a target="_blank" href="http://vip.cmbchina.com/">财智生活</a>
					</li>
					<li>
						<a target="_blank" href="http://vip.cmbchina.com/">VIP尊享</a>
					</li>
					<li>
						<a target="_blank" href="http://weibo.com/cmbchina">新浪官方微博</a>
					</li>
					<li>
						<a target="_blank" href="http://www.cmbchina.com/about/?pageid=goodlink"> 友情链接</a>
					</li>
				</ul>
			</div>
			<div class="fbt width150">
				<ul>
					<li>
						<a target="_blank" href="http://www.cmbchina.com/About/SiteMap.aspx">网站地图</a>
					</li>
					<li>
						<a target="_blank" href="http://www.cmbchina.com/webpages/certificate.htm">安全说明</a>
					</li>
					<li>
						<a target="_blank" href="http://www.cmbchina.com/about/Default.aspx?guid=021286d3-660e-45ee-b127-86f66db33bd0"> 网站声明</a>
					</li>
					<li>
						<a target="_blank" href="http://www.cmbchina.com/about/Default.aspx?guid=fae5aafd-802d-4d0b-b8be-2f992bc1fdb4"> 隐私条款</a>
					</li>
				</ul>
			</div>
			<div class="fbt width110">
				<div class="weixi_code">
					<img src="before/resetpwd_files/weixin_code.jpg">
					<p>
						手机一网通
						<br>
						m.cmbchina.com
					</p>
				</div>
			</div>
		</div>
		<div class="copyright clearf">
			<p>
				九江银行客户投诉受理渠道 | 电话：95555转7 Email：95555@cmbchina.com 信函：江西省九江市深南大道7088号九江银行大厦，九江银行服务监督管理中心 邮编：518040
				<br>
				CopyRight© 1997-2015 九江银行一网通版权所有 &nbsp;
				<a target="_blank" href="http://www.miitbeian.gov.cn/" style="color: #5c6773;">粤ICP备17088997号</a>
			</p>
			<p>
				<a href="https://user.cmbchina.com/#">
					<img src="before/resetpwd_files/wangan.jpg">
				</a>
				<a href="https://user.cmbchina.com/#">
					<img src="before/resetpwd_files/sz_police.jpg">
				</a>
				<a href="https://user.cmbchina.com/#">
					<img src="before/resetpwd_files/chengxin.jpg">
				</a>
				<a href="https://user.cmbchina.com/#">
					<img src="before/resetpwd_files/kexing.jpg">
				</a>
			</p>
		</div>
	</div>

</body>
</html>