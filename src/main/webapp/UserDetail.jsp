<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>主页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%-- <script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js"></script> --%>
  <script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
  <style>
  	.handle{
  		width:"800px";
  		
  	
  	}
  
  </style>
  </head>
  <body>
  	<div align="center">
  		<div>
  			<div name="handle">
  			<form>
  				<input type="button" value="投诉" name="" style="background: lightblue;margin-right:10px;"/>
  				<input type="button" value="咨询" name="" style="background: lightblue;margin-right:10px;"/>
  				<input type="button" value="建议" name="" style="background: lightblue;margin-right:10px;"/>
  				<input type="button" value="分类管理" name="" style="background: lightblue;margin-right:10px;"/>
  				<input type="button" value="用户管理" name="" style="background: lightblue;margin-right:10px;"/>
  				<!-- <input type="button" value="返回" onclick="history(-1);" style="background: lightblue;margin-right:10px;"/> -->
  				<a href="#" >+添加用户</a>
  			</form>
  			</div>
  			
  			<div name="handle">
  			<!--用户信息显示区域开始  -->
  			<table id="data_show" border="0" cellpadding="10" cellspacing="0" width="1200px" style="text-align: center;">
				<tr style="background: lightblue"></tr>
				<!-- <tr align="center" style="font-size:bold;">
					<th><input type="checkbox" value="" /></th>
					<th>序号</th>
					<th>登录账号</th>
					<th>客户姓名</th>
					<th>来源方式</th>
					<th>所属渠道</th>
					<th>创建时间</th>
					<th>创建人</th>
					<th>所属渠道等级</th>
					<th>状态</th>
					<th>操作</th>
				</tr> -->
				--${userList.data }--
				<c:if test="${empty userList }" >
				<tr><td colspan="11">没有查询到符合条件的相关数据</td></tr>
				</c:if>
				<c:if test="${!empty userList }" >
					<tr align="center">
						<td>用户编号Id:${userList.data.userId }</td>
						<td>账号:${userList.data.username }</td>
						<td>客户名:${userList.data.realname }</td>
						<td>身份:${userList.data.career }</td>
					</tr>
					<tr>
						<td>手机号:${userList.data.telephone }</td>
						<td>固话:${userList.data.tablephone }</td>
						<td>登录次数:${userList.data.loginCount }</td>
						<td>状态:${userList.data.status=='0'?"正常使用":"禁用"}</td>
					</tr>
					<tr>
				  		<td>省份:${userList.data.province }</td>
						<td>城市:${userList.data.city }</td>
						<td>区域:${userList.data.area }</td>
						<td>性别:${userList.data.gender }</td>
					</tr>
					<tr>
						<td>来源方式:${sourceList.data.source.sourceName }</td>
						<td>所属渠道:${channelList.data.channel.channelName }</td>
						<td><fmt:formatDate value="${userList.data.creatTime }" pattern="yyyy-MM-dd"/></td>
						<td>${userList.data.customer.username }</td>
						<td>在线时长:${userList.data.onlineTime }分钟</td>
						<td><input type="button" value="返回" onclick="history(-1);" style="background: lightblue;margin-right:10px;"/></td>
						<%-- <td >
							<a href="us/searchUserById.action?userId=${u.userId }" value="">编辑</a>
							<a href="us/deleteUserById.action?userId=${u.userId }" value="">删除</a>
							<a href="us/resetPassword.action?userId=${u.userId }" value="">密码重置</a>
							<a href="us/unabledLogin.action?userId=${u.userId }" value="">禁用</a>
							<a href="us/enterDetail.action?userId=${u.userId }" value="">进入账户</a>
						</td> --%>
					</tr>
						
				
				</c:if>
				
  			</table>
  			
  			</div>
  			
  			<div name="handle">
  			
  			
			</div>
		</div>
		
	</div>
		
  </body>
</html>

