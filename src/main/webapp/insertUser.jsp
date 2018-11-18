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
 	<script type="text/javascript" src="js/jquery.min.js"></script>
  </head>
  <body>


<title>订单处理页</title>

<style>
	table tr{
		margin-bottom:5px;
		height:30px;
	}
	
</style>
<script type="text/javascript">
function link(obj){
	var data = obj;
	document.getElementById("fom").action="book?status=update&proid="+data;
	document.getElementById("fom").submit();
}


function checkUsername(){
	var myusername = $("#u_name").val();
	alert(myusername);
	var username = 'username';
	//发送ajax请求导出
	$.ajax({
		url:"us/checkVaild.action",
		type:"GET",
		data:{"str":myusername,"type":username},
		success:function(result){
			//显示账号可用
			console.log(result.status);
			console.log(result.msg);
			console.log(result.data);
			if(result.status==0) {
				$("#showCheckdInfo").html()="<span color='green'>(恭喜你，账号可以使用)</span>"
			}else{
				$("#showCheckdInfo").html()="<span color='red'>(该账户太受欢迎，建议更换一个)</span>";
			}
		},
		error:function(){
			//显示账号已被占用，提醒用户更换一个新的username
			$("#showCheckdInfo").html()="<span color='red'>(该账户太受欢迎，建议更换一个)</span>";
		}
	});
	
}

function checkEmail(){
	var myemail = $("#myemail").val();
	var email = 'email';
	$.ajax({
		url:"us/checkVaild.action",
		type:"POST",
		data:{"str":myemail,"type":email},
		success:function(){
			//显示邮箱可用
			if(msg.status == 0){
				$("#myemail").html() = "<span id='ismyphoneUsed' color='green'>该邮箱可用</span>";
			}
			//显示邮箱和账户不匹配。提示信息
		},
		error:function(){
			
			
		}
		
	});
}

//暂不用
/* function checkPhone(){
	$.ajax({
		url:"us/checkUserPhone"+$("#myphone").val(),
		type:"POST",
		success:function(msg){
			//显示手机号可用
			console.log(msg.msg);
			if(msg.status == 0){
				$("#ismyemailUsed").html() = "<span id='ismyemailUsed' color='green'>该邮箱可用</span>";
			}
			//显示手机号和账户不匹配。提示信息
		},
		error:function(){
			
			
			
		}
	});
} */


function showCity(provinceId){
	$.ajax({
		url:"us/searchCityByProvinceId.action?provinceId="+provinceId,
		type:"POST",
		success:function(msg){
			//显示手机号可用
			console.log(msg.msg);
			console.log(msg.data);
			if(msg.status == 0){
				alert(msg);
				$("#mycity option:gt(0)").remove();
				
				$.each(msg.data,function(i,n){
					$("#mycity").append("<option value='"+n.cityid+"'>"+n.cityname+"</option>");
				});
			}
		},
		error:function(){
			
		}
	});
}


function searchArea(cityId){
	$.ajax({
		url:"us/searchAreaByCityId.action?cityId="+cityId,
		type:"POST",
		success:function(msg){
			//显示手机号可用
			console.log(msg.msg);
			console.log(msg.data);
			if(msg.status == 0){
				$("#myarea option:gt(0)").remove();
				
				$.each(msg.data,function(i,n){
					$("#myarea").append("<option value='"+n.areaid+"'>"+n.areaname+"</option>");
				});
			}
			//显示手机号和账户不匹配。提示信息
		},
		error:function(){
			
			
			
		}
	});
}


/* 
$(document).on("click","#regist",function(){
	alert("regist");
	var userId = $("#u_id").val;
	var email = $("#myemail").val;
	var telephone = $("#mytelephone").val;
	var tablephone = $("#mytablephone").val;
	var province = $("#myprovince").val;
	var city = $("#mycity").val;
	var area = $("#myarea").val;
	var channelId = $("#mychannelId").val;
	var sourceId = $("#mysourceId").val;
	var genderw = $("genderw").val;//单选框能拿上val()的值吗？？
	var genderm = $("genderm").val;
	var myrealname = $("#myrealname").val;
	
	$.ajax({
		type:"POST",
		url:"us/insertUser.action",
		data:{"userId":userId,"email":email,"telephone":telephone,"tablephone":tablephone,"province":province,"city":city,"area":area,"channelId":channelId,"sourceId":sourceId},
		success:function(msg){
			//显示修改成功信息
			consloe.log(msg.status);
			alert("修改成功的信息为"+msg);
			//
		},
		error:function(){
			//跳回本页面
			
		}
	});
});	
 */
</script>
</head>
<body>
<h1>新增用户</h1>
<span style="margin-left:200px;"></span>
<form action="us/insertUser.action" method="post" name="fom" id="fom">
	<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	
		<tr>
			<td width="100px">用户名:</td>
			<td  align="left"> <input type="text" name="username" id="u_name"/>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="checkUsername();">检测账号是否被使用</a> &nbsp;(必填)</td>
		</tr>
		
		<tr >
			<td width="100px"></td>
			<td  align="left" id="showCheckdInfo"></td>
		</tr>
		
		
		<tr>
			<td>邮箱:</td>
			<td align="left"><input type="text" name="email" onblur="checkEmail();" id="myemail"/><span id="ismyemailUserd"></span></td>
		</tr>
		<tr>
			<td>手机号码:</td>
			<td align="left"><input type="text" name="telephone" onblur="checkPhone();" id="mytelephone"/></td>
		</tr>
		<tr>
			<td>固定电话:</td>
			<td align="left"><input type="text" name="mytablephone"  /></td>
		</tr>
		<tr>
			<td >地址:</td>
			<td align="left" >
			--${!empty provinceList }--
			<c:if test="${!empty provinceList }">
			<select name="provinceId" id="myprovince" onchange="showCity(this.value);">
				<option value="0">省份</option>
				<c:forEach items="${provinceList }" var="pro">
					<option  value="${pro.provinceid }">${pro.provinceName }</option>
				</c:forEach>
			</select>
			</c:if>
			
			<!--此处需要二级联动  -->
			<%-- <select name="cityId" id="mycity">
				<option name="" value="">城市</option>
				<c:forEach items="${cityList }" var="ci">
					<option  value="${ci.cityid }">${ci.cityName }</option>
				</c:forEach>
			</select> --%>
			
			<select name="cityId" id="mycity" onchange="searchArea(this.value);">
				<option value="0">---请选择城市---</option>
			</select>
			<!-- <select name="areaId" id="myarea">
				<option value="0">---请选择区域---</option>
			</select> -->
			
			
			<!--此处需要三级联动  -->
			<select name="areaId" id="myarea">
				<option value="0">区域</option>
				<c:forEach items="${areaList }" var="ar">
					<option  value="${ar.areaid }">${ar.areaname }-------${ar.areaid }-------</option>
				</c:forEach>
			</select>
			
			
			
			
			<input type="text" name="address" id="myaddress"/>
			(必填)
			</td>
		</tr>
		
		<tr>
			<td>所属渠道</td>
			<td align="left">
			
			<select name="channelId" id="mychannelId" >
				<option value="" >所属渠道</option>
				<c:if test="${!empty channelList }">
					<c:forEach items="${channelList }" var="cha">
						<option value="${cha.id}" >${cha.channelName}</option>
					</c:forEach>
				</c:if>
			</select>
			</td>
		</tr>
		<tr>
			<td>来源方式</td>
			<td align="left">
				<select name="sourceId" id="mysourceId" >
					<option value="">来源方式</option>
					<c:if test="${!empty sourceList }">
						<c:forEach items="${sourceList }" var="sou">
							<option value="${sou.id}" >${sou.sourceName}</option>
						</c:forEach>
					</c:if>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>姓名</td>
			<td align="left"><input type="text" name="realname" id="myrealname"/></td>
		</tr>
		
		<tr>
			<td>性别</td>
			<td align="left" >
				<input type="radio" name="gender" value="男"  id="mygenderm"/>男
				<input type="radio" name="gender" value="女"  id="mygenderw"/>女
			</td>
		</tr>
		
		<!-- <tr>
			<td>生日:</td>
			<td align="left">
				<select >
					<option>1995</option>
				</select>年
				<select >
					<option>1</option>
				</select>月
				<select >
					<option>23</option>
				</select>日
			</td>
		
		</tr> -->
		
		<tr>
			<td>身份</td>
			<td align="left">
				<input type="radio" name="career" value="上班族" />上班族
				<input type="radio" name="career" value="学生" />学生
				<input type="radio" name="career" value="公务员" />公务员
				<input type="radio" name="career" value="自由职业" />自由职业
				<input type="radio" name="career" value="其他" />其他
			</td>
		</tr>
		
		<tr>
		<td><input type="submit" name="" value="提交" id="regist"/></td>
		<td><input type="reset" name="" value="取消" /></td>
		</tr>
	</table>
</form>
</body>
</html>
