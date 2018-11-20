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
	<style>
		a{
			text-decoration:none;
		}
		
	</style>
	<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <style>
  	.handle{
  		width:"800px";
  		
  	
  	}
  
  </style>
  <script type="text/javascript">
  	//全选
  	function selectAll(){
			
			var checkObj = $("input[name='id[]']");
			$.each(checkObj,function(i,n){
				n.checked=true;				
			})
		}
  
  
  
  
  		//禁用
  		/* $(document).on("onclick","#disAble",function(){ */
  			/*function disAbless(){
  				
  	  			 console.log($(".usId"));
  	  			var userId = $(".usId").html(); */
  	  		function disAbless(userId){
  	  			$.ajax({
  	  				type:"GET",
  	  				url:"us/unOrAbleLogin.action",
  	  				data:{"userId":userId,"undoing":'0'},
  	  				success:function(msg){
  	  					//显示修改成功信息
  	  					//alert("修改成功的信息为"+msg);
  	  					console.log(msg);
  	  					console.log(msg.status);
  	  					console.log(msg.msg);
  	  					if(msg.status==0){
  	  						alert(msg.msg);
	  	  					window.location.href="us/userInfoShow.action";
  	  					}
  	  					
  	  					//
  	  				},
  	  				error:function(){
  	  					//
  	  					
  	  				}
  	  			});
  		}
  			
  		/* }); */
  		
  		//单个重置密码
  		function resetPwd(id){
			$.ajax({
		  		 type:"POST",
		  		 url:"us/resetPassword.action",
		  		 //data:{ids:[1,2]}, 
		  		data:{userId:id},
		  		//data:data,
		  		 //dataType:"json",
		  		 success:function(msg){
		  				console.log(msg);
						console.log(msg.status);
						console.log(msg.msg);
			  		  if(msg.status== 0){
				  		  alert("密码重置成功");
				  		  window.location.href='us/userInfoShow.action'; 
			  		 }else{
			  		  	alert("密码重置失败，请重新操作");
			  		 } 
		  		 },
		  		 error:function(){
			  		  alert("密码重置失败，请重新操作");
			  		 }
			  	 });  
  		}
  		
  		//单个删除用户
  		function delById(id){
  			if(confirm("确定要删除该用户吗？")){
  				$.ajax({
  			  		 type:"POST",
  			  		 url:"us/deleteUserById.action",
  			  		 //data:{ids:[1,2]}, 
  			  		data:{userId:id},
  			  		//data:data,
  			  		 //dataType:"json",
  			  		 success:function(msg){
  			  				console.log(msg);
  							console.log(msg.status);
  							console.log(msg.msg);
  				  		  if(msg.status== 0){
  					  		  alert("删除成功");
  					  		   window.location.href='us/userInfoShow.action';  
  				  		 }else{
  				  		  	alert("删除失败，请重新删除");
  				  		 } 
  			  		 },
  			  		 error:function(){
  				  		  alert("删除失败，请重新删除");
  				  		 }
  				  	 });  
  			}
  		
  		}
  		
  		//单个编辑更新用户:::如果后台使用接口方式，前台该怎样请求和跳转
  		/* function delById(id){
			$.ajax({
		  		 type:"POST",
		  		 url:"us/searchUserById.action",
		  		 //data:{ids:[1,2]}, 
		  		data:{userId:id},
		  		//data:data,
		  		 //dataType:"json",
		  		 success:function(msg){
		  				console.log(msg);
						console.log(msg.status);
						console.log(msg.msg);
			  		  if(msg.status== 0){
				  		  alert("更新成功");
				  		  window.location.href='us/userInfoShow.action'; 
			  		 }else{
			  		  	alert("更新失败，请重新更新");
			  		 } 
		  		 },
		  		 error:function(){
			  		  alert("更新失败，请重新更新");
			  		 }
			  	 });  
  		
  		} */
  
  		var ids=[];
  		 /* $('#deletesUser').click(function(){ */
  		$(document).on("click","#deletesUser",function(){
  		 btnCheckdel('删除');
	  		 data = {
	  		//"ids":ids;
	  		 };
  		 $.ajax({
  		 type:"POST",
  		 url:"us/deletesUser.action",
  		 //data:{ids:[1,2]}, 
  		data:{ids:ids},
  		//data:data,
  		 //dataType:"json",
  		 success:function(msg){
  				console.log(msg);
				console.log(msg.status);
				console.log(msg.msg);
	  		  if(msg.status== 0){
		  		  alert("批量删除成功");
		  		  window.location.href='us/userInfoShow.action'; 
	  		 }else{
	  		  	alert("批量删除失败，请重新删除");
	  		 } 
  		 },
  		 error:function(){
	  		  alert("批量删除失败，请重新删除");
	  		 }
	  	 });  
  	});
  		 function btnCheckdel(info){
  			alert("222");
  		 var obj = $("input[name='id[]']:checked").each(function(){
  			alert("333");
  		 	ids.push($(this).val());
  		alert(ids);
  		 });
  		 if (ids == false) {
	  		 alert("请选定要"+info+"的用户");
	  		 	return false;
	  		 }else {
	  		 	return ids; 
	  		 }
  		 }
  		
  		
  		//批量禁用
  		// $('#disAbles').click(function(){
  		$(document).on("click","#disAbles",function(){
  	  		 btnCheckun('禁用');
  		  		 data = {
  		  		 //"ids":ids,
  		  		 };
  	  		 $.ajax({
  	  		 type:"POST",
  	  		 url:"us/unOrAbleLogins.action",
  	  		 /* data:data ,*/
  	  		 data:{ids:ids,"undoing":"0"},
  	  		 //dataType:"json",
  	  		 success:function(msg){
  		  		 if(msg.status== 0){
  			  		  alert("批量禁用成功");
  			  		  window.location.href="us/userInfoShow.action";
  		  		 }else{
  		  		  	alert("批量禁用失败，请重新禁用");
  		  		 }
  	  		 },
  	  		 error:function(){
  		  		  alert("批量禁用失败，请重新禁用");
  		  		 }
  		  	 });  
  	  	});
  	  		 function btnCheckun(info){
  	  		 var obj = $("input[name='id[]']:checked").each(function(){
  	  		 	ids.push($(this).val());
  	  		 });
  	  		 if (ids == false) {
  		  		 alert("请选定要"+info+"的用户");
  		  		 	return false;
  		  		 }else {
  		  		 	return ids; 
  		  		 }
  	  		 } 
  	  		
  	  	//批量启用	
  	   	//$('#enAbles').click(function(){
  	   	$(document).on("click","#enAbles",function(){
  	  		 btnChecken('启用');
  		  		 data = {
  		  		 //"ids":ids
  		  		 };
  	  		 $.ajax({
  	  		 type:"POST",
  	  		 url:"us/unOrAbleLogins.action",
  	  		 //data:data,
  	  		data:{ids:ids,"undoing":"1"},
  	  		 //dataType:"json",
  	  		 success:function(msg){
  		  		 if(msg.status== 0){
  			  		  alert("批量启用成功");
  			  		  window.location.href="us/userInfoShow.action";
  		  		 }else{
  		  		  	alert("批量启用失败，请重新操作");
  		  		 }
  	  		 },
  	  		 error:function(){
  		  		  alert("批量启用失败，请重新操作");
  		  		 }
  		  	 });  
  	  	});
  	  		 function btnChecken(info){
  	  		 var obj = $("input[name='id[]']:checked").each(function(){
  	  		 	ids.push($(this).val());
  	  		 });
  	  		 if (ids == false) {
  		  		 alert("请选定要"+info+"的用户");
  		  		 	return false;
  		  		 }else {
  		  		 	return ids; 
  		  		 }
  	  		 } 
  	  		
  	  		
  	  	//批量重置密码	
  	  	   //	$('#resetPasswords').click(function(){
  	  		   $(document).on("click","#resetPasswords",function(){
  	  	  		 btnChecken('启用');
  	  		  		 data = {
  	  		  		 //"ids":ids
  	  		  		 };
  	  		  		alert("ids[]==="+ids);
  	  	  		 $.ajax({
  	  	  		 type:"POST",
  	  	  		 url:"us/resetPasswords.action",
  	  	  		 //data:data,
  	  	  		data:{ids:ids,"undoing":"1"},
  	  	  		 //dataType:"json",
  	  	  		 success:function(msg){
  	  		  		 if(msg.status== 0){
  	  			  		  alert("批量重置密码用成功");
  	  			  		  //window.location.href="us/userInfoShow.action";
  	  		  		 }else{
  	  		  		  	alert("批量重置密码失败，请重新操作");
  	  		  		 }
  	  	  		 },
  	  	  		 error:function(){
  	  		  		  alert("批量重置密码失败，请重新操作");
  	  		  		 }
  	  		  	 });  
  	  	  	});
  	  	  		 function btnChecken(info){
  	  	  		 var obj = $("input[name='id[]']:checked").each(function(){
  	  	  		 	ids.push($(this).val());
  	  	  		 });
  	  	  		 if (ids == false) {
  	  		  		 alert("请选定要"+info+"的用户");
  	  		  		 	return false;
  	  		  		 }else {
  	  		  		 	return ids; 
  	  		  		 }
  	  	  		 } 
  	  	  		
  		//重新发送消息
  	  	   //	$('#sendMessage').click(function(){
  	  		   $(document).on("click","#sendMessage",function(){
  	  	  		 btnChecken('启用');
  	  		  		 data = {
  	  		  		 //"ids":ids
  	  		  		 };
  	  	  		 $.ajax({
  	  	  		 type:"POST",
  	  	  		 url:"us/sendMessage.action",
  	  	  		 //data:data,
  	  	  		data:{ids:ids,"undoing":"1"},
  	  	  		 //dataType:"json",
  	  	  		 success:function(msg){
  	  		  		 if(msg.status== 0){
  	  			  		  alert("批量发送消息用成功");
  	  			  		  //window.location.href="us/userInfoShow.action";
  	  		  		 }else{
  	  		  		  	alert("批量发送消息失败，请重新操作");
  	  		  		 }
  	  	  		 },
  	  	  		 error:function(){
  	  		  		  alert("批量发送消息失败，请重新操作");
  	  		  		 }
  	  		  	 });  
  	  	  	});
  	  	  		 function btnChecken(info){
  	  	  		 var obj = $("input[name='id[]']:checked").each(function(){
  	  	  		 	ids.push($(this).val());
  	  	  		 });
  	  	  		 if (ids == false) {
  	  		  		 alert("请选定要"+info+"的用户");
  	  		  		 	return false;
  	  		  		 }else {
  	  		  		 	return ids; 
  	  		  		 }
  	  	  		 } 
  		
  	  	  		
  	  	  		//用户管理
  	  	  		function toUsers(){
  	  	  			window.location.href="us/userInfoShow.action";
  	  	  		}
  </script>
  
  </head>
  <body>
  	<div align="center">
  		<div>
  			<form>
  				<a href="us/preInsertUser.action" >+添加用户</a>
  			</form>
  			
  			<!--页面传查询条件参数到后台封装成一个classifyData  -->
  			<c:url var="myurl" value="classify/showClassify.action">
				<c:param name="query.column" value="${classifyData.query.column}"></c:param>
				<c:param name="query.keyWords" value="${classifyData.query.keyWords}"></c:param>
				
				<c:param name="query.startTime">
					<fmt:formatDate value='${classifyData.query.startTime }' pattern='yyyy-MM-dd HH:mm:ss'/>
				</c:param>
				<c:param name="query.endTime">
					<fmt:formatDate value='${classifyData.query.endTime }' pattern='yyyy-MM-dd HH:mm:ss'/>
				</c:param>
				
				<c:param name="query.sourceId" value="${classifyData.query.sourceId }"></c:param>
				<c:param name="query.channelId" value="${classifyData.query.channelId }"></c:param>
				<c:param name="query.status" value="${classifyData.query.status }"></c:param>
				<%-- <c:param name="query.classfyId" value="${query.classfyId }"></c:param> --%>
				<c:param name="query.province" value="${classifyData.query.province }"></c:param>
				<c:param name="query.city" value="${classifyData.query.city }"></c:param>
				<c:param name="query.area" value="${classifyData.query.area }"></c:param>
				<c:param name="query.career" value="${classifyData.query.career }"></c:param>
				<c:param name="classifyData.rows" value="${classifyData.rows}"></c:param>
				
				
				<%-- <c:param name="page" value="${classifyData.page}"></c:param> --%>
			</c:url>
  			
  			
  			
  			
  			<form action="us/userInfoShow.action" method="post" id="searchBysome" name="searchBysome">
  				<!--模糊查询开始  -->
  				<input type="text" name="query.keyWords"/>
  				
  				创建时间：
  				<!-- <input type="text" name="startTime"/> --<input type="text" name="endTime"/>  -->
  				 <label for="meeting"></label>
				<input id="startTime" type="date"  name="query.startTime" style="width:154px"/>
				--
				<label for="meeting"></label>
				<input id="endTime" type="date"  name="query.endTime" style="width:154px"/> 
  				<!--来源 方式查询显示-->
  				 <select name="query.sourceId">
  					<option value="0">来源方式--</option>
  					<c:forEach items="${sourceList }" var="so">
  					
  						<option value="${so.id }" ${classifyData.query.sourceId==so.id?"selected":"" }>${so.sourceName }======${so.id }====</option>
  					</c:forEach>
  				</select> 
  				
  				<!--状态显示 -->
  				<select name="query.status">
  					<option value="-1">状态</option>
  					<option  value="0" ${classifyData.query.status=='0'?"selected":""}>审批通过</option>
  					<option  value="1" ${classifyData.query.status=='1'?"selected":""}>未通过</option>
  				</select> 
  				
  				<!--所属渠道 显示 -->
  				

  				
  				<input type="submit" value="筛选"/>
  				<br/>
  				

  				

  				<select  name="classifyData.rows" onchange="changePs();">
  					<option  value="0">显示行数</option>
  					<option  value="1" ${classifyData.rows=='1'?"selected":"" }>1</option>
  					<option  value="2" ${classifyData.rows=='2'?"selected":"" }>2</option>
  					<option  value="3" ${classifyData.rows=='3'?"selected":"" }>3</option>
  					<option  value="5" ${classifyData.rows=='5'?"selected":"" }>5</option>
  					<option  value="10" ${classifyData.rows=='10'?"selected":"" }>10</option>
  					<option  value="15" ${classifyData.rows=='15'?"selected":"" }>15</option>
  				</select>
  				 
  				<select  name="query.orderType" onclick="changePs();">
  					<option value="0">排序类别</option>
  					<!-- <option value="" >客户等级</option> -->
  					<option value="loginCount" ${classifyData.query.orderType=='loginCount'?"selected":"" }>登录次数</option>
  					<option value="onlineTime" ${classifyData.query.orderType=='onlineTime'?"selected":"" }>登录时长</option>
  					<option value="createTime" ${classifyData.query.orderType=='createTime'?"selected":"" }>创建时间</option>
  					
  				</select>
  				
  				<select name="query.orderByClause" onchange="changePs()">
  					<option value="asc" ${classifyData.query.orderByClause=='asc'? 'selected="selected"':'' }>升</option>
					<option value="desc" ${classifyData.query.orderByClause=='desc'? 'selected="selected"':'' }>降</option>
  				</select>
  				<%-- <a href="#" name="orderByClause" ${query.orderByClause=='asc'?selected:""  } onclick="changePs();">升  </a>
  				<a href="#" name="orderByClause" ${query.orderByClause=='desc'?selected:""  } onclick="changePs();">降  </a> --%>
  			
  				<script type="text/javascript">
  					function changePs(){
  						searchBysome.submit();
  					}
  				</script>
  			
  			</form>
  			<!--模糊查询结束  -->
  			<%--<td><input name="id[]" type="checkbox" value="{{classifyData.serialno}}"></td>
					<td>{{classifyData.serialno}}}</td>
					<td><a onClick="product_show('哥本哈根橡木地板','customer-record-eval.html','10001')" href="javascript:;"><img width="60" class="product-thumb" src="temp/product/Thumb/6204.jpg">{{classifyData.itemno}}</a></td>
					<td class="text-l">{{classifyData.objectno}}<a style="text-decoration:none" onClick="product_show('哥本哈根橡木地板','evaluate-record-add.html','10001')" href="javascript:;"><img title="国内品牌" src="static/h-ui.admin/images/cn.gif"> <b class="text-success">圣象</b> 哥本哈根橡木地板KS8373</a></td>
					<td class="text-l">{{classifyData.objecttype}}</td>
					<td><span class="price">{{classifyData.itemvalue}}</span> </td>
					<td><span class="price">{{classifyData.evaluatescore}}</span> </td>
					<td class="td-status"><span class="label label-success radius">未审批</span></td>
					<td class="td-manage"><a style="text-decoration:none" onClick="product_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_edit('产品编辑','approve-record-eval.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				--%>
  			
  			<div name="handle">
  			<!--用户信息显示区域开始  -->
  			<table id="data_show" border="1" cellpadding="10" cellspacing="0" width="1200px" style="text-align: center;">
				<tr style="background: lightblue;font-size:bold;">
					<th><input type="checkbox" onclick="selectAll();" id="quanxuan"/></th>
					<th width="40">流水号</th>
					<th width="60">项目编号</th>
					<th width="40">贷款类型编号</th>
					<th width="40">贷款类型</th>
					<th width="40">项目值</th>
					<%--<th width="60">评估值</th>--%>
					<%--<th width="60">审批状态</th>--%>
					<th width="100">操作</th>
				</tr>
				<c:if test="${empty classifyData }" >
				<tr><td colspan="11">没有查询到符合条件的相关数据</td></tr>
				</c:if>
				<c:if test="${!empty classifyData }" >
					<c:forEach items="${classifyData }" var="u">
						<tr align="center">
							<td><input type="checkbox" value="${u.serinalno }" name="id[]"/></td>
							<td>${u.serinalno }</td>
							<td>
								<c:if test="${u.itemno!=null }"><a href="us/showDetail.action?itemno=${u.itemno }">${u.itemno }</a></c:if>
							</td>
							<td  class="usId">${u.objectno }</td>
							<td>${u.objecttype }</td>
							<td>${u.evaluatescore }</td>
							<%--<td>${u.value }</td>--%>
							<%--<td><fmt:formatDate value="${u.updatedate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>--%>
							<%--<td>${u.status=='0'?"通过":"未通过"}</td>--%>
							<td >
								<a href="us/searchUserById.action?userId=${u.Id }" >编辑</a>
								<a href="javascript:void(0)" onclick="delById('${u.Id  }');">删除</a>
							</td>
						</tr>
						
					
					</c:forEach>
				
				</c:if>
				
  			</table>
  			
  			</div>
  			
  			<div name="handle">

  			
  			<!--分页开始  -->
  			<c:url var="carUrl" value="/classify/showClassify.action">
				<%-- <c:param name="query.qId" value="${fy.query.qId }"></c:param>
				<c:param name="query.qStartAddDate">
					<fmt:formatDate value='${fy.query.qStartAddDate }' pattern='yyyy-MM-dd'/>
				</c:param>
				<c:param name="query.qEndAddDate">
					<fmt:formatDate value='${fy.query.qEndAddDate }' pattern='yyyy-MM-dd'/>
				</c:param> --%>
			</c:url>
			
			
			总计 &nbsp;${classifyData.rowCount} &nbsp;个记录，分为 &nbsp;${classifyData.pageCount} &nbsp;页，当前第 &nbsp;${classifyData.page} &nbsp;页  每页 &nbsp;${classifyData.rows} &nbsp;条 --> 
			
			<a href="${myurl }&page=1"> &nbsp;首页 &nbsp;</a>
			<c:choose>
				<c:when test="${classifyData.page==1 }">
					上一页
				</c:when>
				<c:otherwise>
					<a href="${myurl }&page=${classifyData.page-1}"> &nbsp;上一页 &nbsp;</a>
				</c:otherwise>
			</c:choose>
			
			<c:choose>
				<c:when test="${classifyData.page==classifyData.pageCount }">
					 &nbsp;下一页 &nbsp;
				</c:when>
				<c:otherwise>
					<a href="${myurl }&page=${classifyData.page+1}"> &nbsp;下一页 &nbsp;</a>
				</c:otherwise>
			</c:choose>
			<a href="${myurl }&page=${classifyData.pageCount}">尾页</a> 
			
			 &nbsp;转到: &nbsp;<%-- <select name="pageCount" onchange="changPs();">
					<option value="1" ${classifyData.pageCount==1?"selected":""}>1</option>
					<option value="2" ${classifyData.pageCount==2?"selected":""}>2</option>
					<option value="4" ${classifyData.pageCount==4?"selected":""}>4</option>
					<option value="5" ${classifyData.pageCount==5?"selected":""}>5</option>
					<option value="10" ${classifyData.pageCount==10?"selected":""}>10</option>
					<option value="15" ${classifyData.pageCount==15?"selected":""}>15</option>
					<option value="20" ${classifyData.pageCount==20?"selected":""}>20</option>
			   </select> --%>
			   
		 <select name="page" onchange="switchPage('${myurl }',this)">
			<c:if test="${classifyData.pageCount<15 }">
				<c:forEach begin="1" end="${classifyData.pageCount }" varStatus="i">
					<option value="${i.index}" ${classifyData.page==i.index? 'selected="selected"':''   }>${i.index}</option>
				</c:forEach>
			</c:if>
			
		</select>
		
		
		<script type="text/javascript">
			function switchPage(myurl,obj){
				window.location.href=myurl+"&page="+obj.value;
			}
		</script>
  			<!--分页结束  -->
  			
  			</div>
  			
  			
  			<!-- 第一页   &nbsp;上一页 &nbsp;下一页 &nbsp;最末页 &nbsp; -->
  		</div>
			
		</div>
		
  </body>
</html>

