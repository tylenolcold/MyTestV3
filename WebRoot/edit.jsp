<%@ page import="com.yumine.model.question_table"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'edit.jsp' starting page</title>
    
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
  
  <form action="edit_done.jsp" method="get" target="_self">
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
						<li><a href="<%=basePath %>index.jsp" class="clr">0基础包就业</a></li>
						<li><a href="<%=basePath %>index2.jsp">有基础包就业</a></li>
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
									int id = Integer.parseInt(request.getParameter("id"));
									question_table qt = serv.QueryQuestionById(id);
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
								onClick="window.open('edit_done.jsp?id=<%=qt.getId() %>')">修改</button>
							<button type="button" name="addBtn" id="addBtn" class="zengbtn">增加</button>
							<button type="button" name="removeBtn" id="removeBtn"
								class="shanbtn">删除</button>
							<li class="li">
								<div id="editor">
									<div style="border:1px solid #ccc; border-top:none; height:300px; z-index:10000;" class="w-e-text-container">
										<div><%=qt.getId() %>.<%=qt.getText() %></div>
										<div>A:<%=qt.getA() %></div>
										<div>B:<%=qt.getB() %></div>
										<div>C:<%=qt.getC() %></div>
										<div>D:<%=qt.getD() %></div>
									</div>
									<button id="OkBtn" type="button" class="quebtn">确定</button>
									<button type="reset" class="qubtn">重置</button>
								</div>
							</li>
							
						</ul>
					</div>

				</li>

			</ul>
		</div>
	</form>
  
  
  
  
  
  
  
    <script src="js/jquery-1.11.1.min.js"></script>

	<!-- <script src="js/paging.min.js"></script> -->
	<script type="text/javascript" src="js/wangEditor.min.js"></script>
	<script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#editor')
        // 或者 var editor = new E( document.getElementById('#editor') )
        editor.create()
        document.getElementById('OkBtn').addEventListener('click', function() {
        	var txt = editor.txt.text();
        	txt = txt.replace("确定重置", "");
        	
        	window.open('edit_done.jsp?id='+ <%=id%> +'&txt='+txt,'_self');
        },false)
    </script>
  </body>
</html>
