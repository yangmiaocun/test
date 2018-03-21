<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>main</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/main.css'/>">
  </head>
  
 <body>
 <!-- 该页为框架页，是由其他页面组成的 ，总共由四大部分组成，顶端页，左侧栏，搜索页和内容页面--> 
<table class="table" align="center">
	<tr class="trTop">
		<td colspan="2" class="tdTop">
			<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top"></iframe>
			<!-- 顶端页，连接的是其他页面 -->
		</td>
	</tr>
	<tr>
		<td class="tdLeft" rowspan="2">
			<iframe frameborder="0" src="<c:url value='/CategoryServlet?method=findAll'/>" name="left"></iframe>
			<!-- 左侧页，是图书分类的部分，比如:程序设计、办公用书。。。。 -->
		</td>
		<td class="tdSearch" style="border-bottom-width: 0px;">
			<iframe frameborder="0" src="<c:url value='/jsps/search.jsp'/>" name="search"></iframe>
			<!-- 搜索页，有高级搜索和搜索输入框 -->
		</td>
	</tr>
	<tr>
		<td style="border-top-width: 0px;">
			<iframe frameborder="0" src="<c:url value='/jsps/body.jsp'/>" name="body"></iframe>
			<!-- 内容页，显示主要内容的 -->
		</td>
	</tr>
</table>
  </body>
</html>
