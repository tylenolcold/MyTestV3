<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demoeleven.jsp' starting page</title>
    
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
    <div class="header">
	    <h1>敦穆教育公众号管理系统</h1>
	       <ul class="ulone">
	            <li class="list lione">
	               <h2>信息管理</h2>
	               <ul class="text">
	                   <li><a href="demoone.html" >0基础包就业</a></li>
	                   <li><a href="demotwo.html" >有基础包就业</a></li>
	                   <li><a href="demoshree.html">1对1求职咨询</a></li>
	                   <li><a href="demofour.html" >简历修改</a></li>
	                   <li><a href="demofive.html" >职小牛</a></li>
	                   <li><a href="demosix.html">加入我们</a></li>
	                   <li><a href="demoseven.html" >合作</a></li>
	               </ul>
	            </li>
	            <li class="list litwo">
	               <h2>订单管理</h2>
	               <ul class="text">
	                   <li><a href="demoeight.html" >0基础包就业</a></li>
	                   <li><a href="demonine.html">有基础包就业</a></li>
	               </ul>
	            </li><li class="list lishree">
	               <h2 class="bk">题库管理</h2>
	               <ul class="text">
	                    <li><a href="<%=basePath%>index.jsp">0基础包就业</a></li>
	                   <li><a href="<%=basePath%>index2.jsp"  class="clr">有基础包就业</a></li>
	               </ul>
	            </li><li class="list lifore">
	               <h2>商品管理</h2>
	               <ul class="text">
	                   <li><a href="demotwelve.html">商品管理</a></li>
	
	               </ul>
	            </li>
	        </ul>
	    <ul class="ultwo">
	            <li class="listone">
					<footer class="footer">
						<div class="box">
							<div class="select">
								<div class="tit" id="tit">
									<p class="textss" id="textss">请选择专业名称</p>
									<span id="san" class="span" style="transform: rotate(0deg);" onClick="Change();"></span>
								</div>
								<ul class="lists" id="lists" style="height: 0px;">
									<li><a href="<%=request.getContextPath()%>/sub/javadev.jsp">Java开发</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/softwaretest.jsp">软件测试</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/web.jsp">WEB前段开发</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/ui.jsp">UI设计</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/manager.jsp">产品经理</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/embedsoftware.jsp">嵌入式软件</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/embedhardware.jsp">嵌入式硬件</a></li>
									<li><a href="<%=request.getContextPath()%>/sub/other.jsp">其他</a></li>
								</ul>
							</div>
						</div>
					</footer>
				</li>
	        </ul>
	    </div>
	<script src="js/jquery-1.11.1.min.js">
	</script>
	<script type="text/javascript">
		var flag = true;
		function Change() {
			if (flag) {
				flag = false;
				$("#san").attr("style","transform: rotate(180deg);");
				$("#lists").attr("style", "height: 250px;");
			}else {
				flag = true;
				$("#san").attr("style","transform: rotate(0deg);");
				$("#lists").attr("style", "height: 0px;");
			}
			
		}
	</script>
	<!-- <script src="js/paging.min.js"></script> -->
	<script type="text/javascript" src="js/wangEditor.min.js"></script>
	<script>
	      // var setTotalCount = 301;
	      //   $('#box').paging({
	      //       initPageNo: 3, // 初始页码
	      //       totalPages: 30, //总页数
	      //       // totalCount: '合计' + setTotalCount + '条数据', // 条目总数
	      //       slideSpeed: 600, // 缓动速度。单位毫秒
	      //       jump:true, //是否支持跳转
	      //       callback: function(page) { // 回调函数
	      //          // alert(page)
	      //       }
	      //   })
	</script>
</body>
</html>
