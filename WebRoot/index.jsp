<%@page import="com.yumine.service.Service"%>
<%@page import="com.yumine.model.question_table"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/paging.css">
<script src="js/jquery-1.11.1.min.js"></script>
</head>

<body>
	<form action="index.jsp" method="post" >
		<div class="header">
			<h1>敦穆教育公众号管理系统</h1>
			<ul class="ulone">
				<li class="list lione">
					<h2>信息管理</h2>
					<ul class="text">
						<li><a href="demoone.html">0基础包就业</a></li>
						<li><a href="demotwo.html">有基础包就业</a></li>
						<li><a href="demoshree.html">1对1求职咨询</a></li>
						<li><a href="demofour.html">简历修改</a></li>
						<li><a href="demofive.html">职小牛</a></li>
						<li><a href="demosix.html">加入我们</a></li>
						<li><a href="demoseven.html">合作</a></li>
					</ul>
				</li>
				<li class="list litwo">
					<h2>订单管理</h2>
					<ul class="text">
						<li><a href="demoeight.html">0基础包就业</a></li>
						<li><a href="demonine.html">有基础包就业</a></li>
					</ul>
				</li>
				<li class="list lishree">
					<h2 class="bk">题库管理</h2>
					<ul class="text">
						<li><a href="<%=basePath%>index.jsp" class="clr">0基础包就业</a></li>
						<li><a href="<%=basePath%>index2.jsp">有基础包就业</a></li>
					</ul>
				</li>
				<li class="list lifore">
					<h2>商品管理</h2>
					<ul class="text">
						<li><a href="demotwelve.html">商品管理</a></li>

					</ul>
				</li>
			</ul>
			<ul class="ultwo">
				<li class="listone">
					<div class="lishreete">
						<ul class="listul">

 							<jsp:useBean id="serv" class="com.yumine.service.Service"></jsp:useBean>
							<%
								List questions = serv.queryAllQuestion();
 								Iterator iter = questions.iterator();
								
 								int i=0;
 								while(iter.hasNext()) {
 									question_table qt = (question_table)iter.next();
							 %>
							<li class="li">
								<div><%=qt.getId()%>.<%=qt.getText()%></div>
								<div>A:<%=qt.getA()%></div>
								<div>B:<%=qt.getB()%></div>
								<div>C:<%=qt.getC()%></div>
								<div>D:<%=qt.getD()%></div>
							</li>
							<button type="button" name="changeBtn" id="changeBtn"
								class="xiubtn"
								onClick="window.open('edit.jsp?id=<%=qt.getId()%>','_self')">修改</button>
							<button type="button" name="addBtn" id="addBtn" class="zengbtn" onClick="window.open('add.jsp','_self')">增加</button>
							<button type="button" name="removeBtn" id="removeBtn"
								class="shanbtn" onClick="window.open('del_done.jsp?id=<%=qt.getId() %>','_self')">删除</button>
							<%
								}
							%>
						</ul>
					</div>

				</li>

			</ul>
		</div>
	</form>
	<script src="js/jquery-1.11.1.min.js"></script>

	<!-- <script src="js/paging.min.js"></script> -->
	<script type="text/javascript" src="js/wangEditor.min.js"></script>
	
  </body>
</html>
