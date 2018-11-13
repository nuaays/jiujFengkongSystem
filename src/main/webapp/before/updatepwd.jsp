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
    <title> 九江银行用户密码重置</title>
    <meta name="status-check" content="@CMBOK@">
    <!--<base href="https://user.cmbchina.com/">--><base href=".">
    <link href="before/resetpwd_files/Head.css" type="text/css" rel="Stylesheet">
    <link href="before/resetpwd_files/Common.css" rel="stylesheet" type="text/css">
    <link href="before/resetpwd_files/Page.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="before/jquery-2.1.4/jquery.js"></script>
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
var pwdexist = function(){
		if($("#pwd").val()!=$("#repwd").val()){
			$("#pwdexist").html("前后密码不一致，请重新输入").css("color","red");
		}else{
			$("#pwdexist").html("");
		}
	} 
</script>

<script type="text/javascript">
	$(function() {
		$("#updatePwdConfin").click(function() {
			//发送ajax请求
			$.ajax({
				//路径，方式，数据类型，数据的值；    回调函数
				url : "user/uddatePwd.action",
				type : "post",
				dataType : "json",
				//"name" 实体类中对应的属性 : $("#name")  ajax 识别 input 中对应的id 
				data : $("#form").serializeArray(),
				success : function(data) {
								if (data.flag) {
									//注册成功
									location.href = "user/bLogin.action";
								} else {
									$("#checkMessageCodeError").html("注册手机号码不存在或验证码错误!!!").css("color","red");
								}
							}
			});
		});
	})
</script>    
    
    
</head>

<body>
    
		<!-- 头部内容开始 -->
		<div class="menubg">
			<div class="menu">
				<div class="tmenu">
					<div class="logo">
						<a href="?主页面">
						<img src="before/login_files/jjlogo.jpg" height="100" width="100"></a>
					</div>
					<div class="mbt">
						<a href="../zs_index.jsp">首页 </a>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div class="ccproductbg">
			<div class="zback"></div>
		<!-- 头部内容结束 -->
        
    <div class="updown" style="padding-bottom: 1px;">
        <div class="box_title">
            <div class="left">
                <h1 class="box_title_h2" style="padding-top: 32px;" id="stepname">重置登录密码</h1>
            </div>
            <div class="right" style="padding: 53px 28px 28px 0px;font-size: 14px;">
            <a href="b_login.html" class="bluelink">登录</a>
					<span style="color: #DDD; margin: 0px 5px;"> &nbsp;|&nbsp;</span> 
					<a href="regin.html" class="bluelink">注册</a>
            </div>
            <div class="clear">
            </div>
        </div>
        
        
        <div class="gray_split_line" style="margin: 13px 0px;">
        </div>
        <div id="workspace" style="float: none; width: auto;margin-bottom:24px;">

            <!-- 密码修改开始 -->
            <form id="form" method="">
            <div class="inputform" style="margin-left: 260px; width: auto;">
                <div class="row">
                   <table >
                   		<tr>
		            		<td class="c">请输入注册手机号：</td>
		            		<td><input type="text"  id="tel" name="tel"/></td>
		            	</tr>
		            	<tr>
		            		<td class="c">验证码：</td>
		            		<td><input type="text" id="checkCode" name="checkCode"/></td>
		            		<td><a id="findMessageCode">获取手机验证码</a></td>
		            	</tr>
		            	<tr>
		            		<td class="c">请输入新的密码：</td>
		            		<td><input type="password" id="pwd" name="pwd"/></td>
		            	</tr>
		            	<tr>
		            		<td class="c">确认新密码:</td>
		            		<td><input type="password" id="repwd" name="repwd" onblur="pwdexist()" onfocus="pwdexist()"/></td>
		            		<td id="pwdexist"></td>	
		            	</tr>
						<tr>
		            		<td id="checkMessageCodeError"></td>		
		            	</tr>
               		</table>
               		<button id="updatePwdConfin">提交</button>
                </div>
            </div>
            <div style="width: 305px;margin:12px 0px 24px 310px;">
                <div id="feedback">
                </div>
            </div>
            </form>
            <!-- 密码修改结束 -->
        </div>
    </div>

    </div>
    
<div class="footerbg">
    <div class="footer clearfix">
        <div class="fbt">
            <ul>
                <li>服务热线：95555</li><li>境外服务热线：86-755-84391000</li>
                <li>信用卡服务热线：400-820-5555</li>
            </ul>
        </div>
        <div class="fbt">
            <ul>
                <li>企业年金服务热线：800-830-8855</li><li>私人银行服务专线：40066-95555</li><li>钻石贵宾服务专线：40068-95555</li><li>
                    金葵花贵宾服务专线：40088-95555</li></ul>
        </div>
        <div class="fbt width150 ml20">
            <ul>
                <li><a target="_blank" href="http://vip.cmbchina.com/">财智生活</a></li>
                <li><a target="_blank" href="http://vip.cmbchina.com/">VIP尊享</a></li><li><a target="_blank" href="http://weibo.com/cmbchina">新浪官方微博</a></li><li><a target="_blank" href="http://www.cmbchina.com/about/?pageid=goodlink">
                        友情链接</a></li></ul>
        </div>
        <div class="fbt width150">
            <ul>
                <li><a target="_blank" href="http://www.cmbchina.com/About/SiteMap.aspx">网站地图</a></li>
                <li><a target="_blank" href="http://www.cmbchina.com/webpages/certificate.htm">安全说明</a></li><li>
                    <a target="_blank" href="http://www.cmbchina.com/about/Default.aspx?guid=021286d3-660e-45ee-b127-86f66db33bd0">
                        网站声明</a></li><li><a target="_blank" href="http://www.cmbchina.com/about/Default.aspx?guid=fae5aafd-802d-4d0b-b8be-2f992bc1fdb4">
                            隐私条款</a></li></ul>
        </div>
        <div class="fbt width110">
            <div class="weixi_code">
                <img src="before/resetpwd_files/weixin_code.jpg"><p>
                    手机一网通<br>
                    m.cmbchina.com</p>
            </div>
        </div>
    </div>
    <div class="copyright clearf">
        <p>
            九江银行客户投诉受理渠道 | 电话：95555转7 Email：95555@cmbchina.com 信函：江西省九江市深南大道7088号九江银行大厦，九江银行服务监督管理中心
            邮编：518040<br>
            CopyRight© 1997-2015 九江银行一网通版权所有 &nbsp;<a target="_blank" href="http://www.miitbeian.gov.cn/" style="color:#5c6773;">粤ICP备17088997号</a>
        </p>
        <p>
            <a href="https://user.cmbchina.com/#">
                <img src="before/resetpwd_files/wangan.jpg"></a><a href="https://user.cmbchina.com/#"><img src="before/resetpwd_files/sz_police.jpg"></a><a href="https://user.cmbchina.com/#"><img src="before/resetpwd_files/chengxin.jpg"></a><a href="https://user.cmbchina.com/#"><img src="before/resetpwd_files/kexing.jpg"></a></p>
    </div>
</div>


    <script src="before/resetpwd_files/sdc_web.js.下载" type="text/javascript"></script>



</body></html>