<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>九江银行用户注册</title>
<meta name="status-check" content="@CMBOK@">
<!--<base href="https://user.cmbchina.com/">-->
<script type="text/javascript" src="before/jquery-2.1.4/jquery.js"></script>
<link href="before/regin_files/Head.css" type="text/css" rel="Stylesheet" />
<link href="before/regin_files/Common.css" rel="stylesheet" type="text/css" />
<link href="before/regin_files/Page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//验证邮箱
	$(function() {
		$("#mail").blur(
			function() {
				console.log("获取到的邮箱:" + $(this).val());
				var mail = $(this).val();
				var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				if (mail == "") {
					$("#mailmsg").html("×邮箱不能为空!").attr("style",
							"color:red");
					return false;
				}
				if (reg.test(mail) === false) {
					$("#mailmsg").html("×邮箱输入不合法!").attr("style",
							"color:red");
					return false;
				} else {
					$("#mailmsg").html("√邮箱可以通过!!!").attr("style",
							"color:green");
					return true;
				}
			})
		//邮箱提示信息失效
		$("#mail").focus(function() {
			$("#mailmsg").html(" ");
		})
	})
</script>
<style>
/* 	table{
		border: 1px;
		border-color: red;
		} */
.c {
	font-weight: bold;
	text-align: right;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#findMessageCode").click(function() {
			//发送ajax请求
			$.ajax({
				//路径，方式，数据类型，数据的值；    回调函数
				url : "user/findMessageCode.action",
				type : "post",
				dataType : "json",
				//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
				data : {
					"tel" : $("#tel").val()
				},
				success : function(data) {
					if (data.flag) {
						$("#findMessageCode").html("获取成功");
					} else {
						$("#findMessageCode").html("获取失败");
					}
				}
			});
		});
	})
</script>
<script type="text/javascript">
	function checkUserName() {
		$.ajax({
			//路径，方式，数据类型，数据的值；    回调函数
			url : "user/checkUserName.action",
			type : "post",
			dataType : "json",
			//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
			data : {
				"userName" : $("#userName").val()
			},
			success : function(data) {
				if (data.flag) {

					$("#exist").html("用户名已存在，请换一个").css("color", "red");

				} else {

					$("#exist").html("用户名可以使用").css("color", "green");
					if ($("#userName").val() == null
							|| "" == $("#userName").val()) {
						$("#exist").html("");
					}

				}
			}
		});
	}
</script>
<script type="text/javascript">
	$(function() {
		$("#findMessageCode").click(function() {
			//发送ajax请求
			$.ajax({
				//路径，方式，数据类型，数据的值；    回调函数
				url : "user/findMessageCode.action",
				type : "post",
				dataType : "json",
				//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
				data : {
					"tel" : $("#tel").val()
				},
				success : function(data) {
					if (data.flag) {
						$("#findMessageCode").html("获取成功");
					} else {
						$("#findMessageCode").html("获取失败");
					}
				}
			});
		});
	})
</script>

<script type="text/javascript">
	function checkUserName() {
		$.ajax({
			//路径，方式，数据类型，数据的值；    回调函数
			url : "user/checkUserName.action",
			type : "post",
			dataType : "json",
			//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
			data : {
				"userName" : $("#userName").val()
			},
			success : function(data) {
				if (data.flag) {

					$("#exist").html("用户名已存在，请换一个").css("color", "red");

				} else {

					$("#exist").html("用户名可以使用").css("color", "green");
					if ($("#userName").val() == null
							|| "" == $("#userName").val()) {
						$("#exist").html("");
					}
				}
			}
		});
	}
</script>
<script type="text/javascript">
	function checktel() {
		$.ajax({
			//路径，方式，数据类型，数据的值；    回调函数
			url : "user/checktel.action",
			type : "post",
			dataType : "json",
			//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
			data : {
				"tel" : $("#tel").val()
			},
			success : function(data) {
				if (data.flag) {

					$("#telexist").html("改账号已被注册，请换一个").css("color", "red");

				} else {

					$("#telexist").html("").css("color", "green");
					if ($("#userName").val() == null
							|| "" == $("#userName").val()) {
						$("#exist").html("");
					}

				}
			}
		});
	}
</script>
<script type="text/javascript">
	var pwdexist = function() {
		if ($("#pwd").val() != $("#repwd").val()) {
			$("#pwdexist").html("前后密码不一致，请重新输入").css("color", "red");
		} else {
			$("#pwdexist").html("");
		}
	}
</script>

<!--通过ajax实现注册  -->
<script type="text/javascript">
	$(
			function() {
				$("#btnRegister")
						.click(
								function() {
									//发送ajax请求
									$
											.ajax({
												//路径，方式，数据类型，数据的值；    回调函数
												url : "user/registHandler.action",
												type : "post",
												dataType : "json",
												//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
												data : $("#form")
														.serializeArray(),

												success : function(data) {
													if (data.flag) {
														//注册成功
														location.href = "user/index.action";
													} else {
														//注册失败
														/* alert("登录失败"); */
														/* 	$("#checkMessageCodeError").html("用户名或则密码错误!!!");
															$("#CreateCheckCode").click(); */
														/* $("#pwdexist").html("前后密码不一致，请重新注册!!!").css("color","red");
														$("#exist").html("用户名已存在，请重新注册!!!").css("color","red"); */
														$(
																"#checkMessageCodeError")
																.html(
																		"验证码错误!!!")
																.css("color",
																		"red");
													}
												}
											});
								});
			})
</script>



</head>
<body>

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
	</div>
	<centeronfocus="rem()"> <font id="errorMessage" color="red">
		<c:if test="${status eq 'errorCode'}">验证码错误</c:if>
		<c:if test="${status eq 'existUser'}">已有注册，请重新注册</c:if>
		<c:if test="${status eq 'other'}">注册失败，请重新注册</c:if>
		<c:if test="${status eq 'errornull'}">验证码错误</c:if>
	</font>
	</center>
	<div class="updown" style="padding-bottom: 1px;">
		<div class="box_title">
			<div class="left">
				<h1 class="box_title_h2" style="padding-top: 32px;">九江银行用户注册</h1>
			</div>
			<div class="right" style="padding: 53px 28px 28px 0px; font-size: 14px;">
				<a href="user/login.action" class="bluelink">登录</a>
				<span style="color: #DDD; margin: 0px 5px;"> &nbsp;|&nbsp;</span>
				<a href="user/showRegist.action" class="bluelink">注册</a>
			</div>
			<div class="clear"></div>
		</div>

		<div class="gray_split_line" style="margin: 13px 0px;"></div>
		<div class="inputform" style="margin-left: 260px; width: auto;">
			<form method="post" action="" id="form">
				<table>
					<tr>
						<td class="c">用户名：</td>
						<td>
							<input type="text" name="userName" id="userName" onblur="checkUserName()" />
						</td>
						<td>
							<span id="exist"></span>
						</td>
					</tr>
					<tr>
						<td class="c">手机号：</td>
						<td>
							<input type="text" name="tel" id="tel" onblur="checktel()" />
						</td>
						<td>
							<span id="telexist"></span>
						</td>
					</tr>
					<tr>
						<td class="c">验证码：</td>
						<td>
							<input type="text" name="code" id="code" />
						</td>
						<td>
							<a id="findMessageCode">获取手机验证码</a>
						</td>
						<!-- 页面加入定时器，后台加入session有效时间 -->
						<td>
							<a id="checkMessageCodeError"></a>
						</td>
					</tr>
					<tr>
						<td class="c">登录密码：</td>
						<td>
							<input type="password" name="pwd" id="pwd" />
						</td>
						<td></td>
					</tr>
					<tr>
						<td class="c">重复登录密码：</td>
						<td>
							<input type="password" name="repwd" id="repwd" onblur="pwdexist()" onfocus="pwdexist()" />
						</td>
						<td>
							<span id="pwdexist"></span>
						</td>
					</tr>
					<tr>
						<td class="c">真实姓名：</td>
						<td>
							<input type="text" name="realName" id="realName" />
						</td>
					</tr>
					<tr>
						<td class="c">身份证号码：</td>
						<td>
							<input type="text" name="idCard" id="idCard" />
						</td>
					</tr>
					<tr>
						<td class="c">邮箱：</td>
						<td>
							<input type="text" name="mail" id="mail" placeholder="zhangsan@atguigu.com" />
						</td>
						<td>
							<span id="mailmsg" style="color: break; font-size: 16px"></span>
						</td>
					</tr>
					<tr>
						<td class="c">微信：</td>
						<td>
							<input type="text" name="wechat" id="wechat" />
						</td>
					</tr>
					<!-- <tr>
								<td class="c">验证码：</td>
								<td><input /></td>
							</tr>
							<tr>
								<td class="c">邀请码：</td>
								<td><input /></td>
							</tr>
 -->
				</table>
			</form>
			<div style="padding-left: 103px; margin: 30px 0px 6px 0px;">
				<button id="btnRegister" class="btn_blue_h36" style="width: 252px;">
					同意以下服务条款并
					<span>注册</span>
				</button>
			</div>


		</div>
		<div style="padding-left: 363px; width: 252px; text-align: center;">
			<input type="checkbox"></input>
			<a id="btnAgree" class="bluelink" title="点击查看服务条款">《九江银行用户服务条款》</a>
		</div>
		<div id="dvAgree" class="agree" style="display: none;">
			<div style="font-size: 12px; color: #808080; font-family: &amp; amp; amp; amp; quot; 宋体 &amp;amp; amp; amp; quot; , Arial , Verdana; background-color: #FFFFFF;">
				<p style="margin: 0; line-height: 15px;">欢迎使用招商银行一网通用户服务。您在使用一网通用户服务时，即表示您接受下列条款和条件的约束（以下称“服务条款”），请认真阅读以下条款：</p>
				<p style="margin: 0; line-height: 15px;">1.客户要尊重网上道德，遵守《全国人大常委会关于维护互联网安全的决定》及中华人民共和国其他各项有关法律法规 。</p>
				<p style="margin: 0; line-height: 15px;">2.一切有客户本人的言论、行为而产生的法律责任均由客户本人自担。</p>
				<p style="margin: 0; line-height: 15px;">3.客户在注册时提供完整详实的个人资料，客户注册的数据日后如有变更时，请随时更新。客户提供的个人资料若有填写不实，或原有数据已不真实而未及时更新，或有任何误导的嫌疑，招商银行保留随时终止客户登录资格及使用各项服务的权利。</p>
				<p style="margin: 0; line-height: 15px;">4.客户必须注意保密客户本人的敏感信息不外泄，由于客户个人原因导致敏感信息外泄而引起的损失，招商银行概不负责赔偿。</p>
				<p style="margin: 0; line-height: 15px;">5.招商银行保留随时更改、停止或终止各项服务内容的权利，且无事先通知义务。</p>
			</div>
		</div>
		<div id="feedback" class="initfdback"></div>
		<input id="hdSpAgree" type="hidden" value="../Content/cover/agreement.htm">
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