<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/18 0018
  Time: Ã¤Â¸ÂÃ¥ÂÂ 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.zl.test.docheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
docheck doch = new docheck();
//String name ,
//String customer ,
//boolean car,
//boolean house,
//double score,
//double loanrat,
//boolean isyourself,
//int Level
doch.doTest("尹启成","12222",true,false,78.9,0.5,true,6);
%>
</body>
</html>
