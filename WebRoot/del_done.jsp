<%@page import="com.yumine.model.question_table"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'del.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	<jsp:useBean id="serv" class="com.yumine.service.Service"></jsp:useBean>
   	<%
   		int id = Integer.parseInt(request.getParameter("id"));
   		question_table qt = serv.QueryQuestionById(id);
   		out.print(qt.getId());
   		if (serv.DeleteQuestion(id)) {
   			%>
   			<jsp:forward page="index.jsp"></jsp:forward>
   			<%
   		}else {
   			%>
   			<jsp:forward page="error.jsp"></jsp:forward>
   			<%
   		}
   	 %>
  </body>
</html>
