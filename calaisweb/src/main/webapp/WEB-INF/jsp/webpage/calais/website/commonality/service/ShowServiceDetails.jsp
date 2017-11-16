<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我们的服务</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->

<!-- css files -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/public/layui/css/layui.css">
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/news/css/news.css">
<!-- //css files -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->

<!-- //js files -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/Animate/jquery-migrate-1.2.1.min.js"></script><!-- Animate-js -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<script src="<%=basePath%>/static/calais/website/commonality/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/easing.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.all.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.js"></script>
<!-- js files -->

</head>
<body>
<!-- 引入头部 begin-->
<jsp:include   page="../head.jsp" flush="true"/>		
<!-- 引入头部 end-->
<div class="banner1">
</div>
<div class="about-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="<%=basePath%>/index">首页</a><i>></i></li>
			<li><a href="<%=basePath%>/services">我们的服务</a><i>></i></li>
			<li>${requestScope.data.fence}</li>
		</ul>
	</div>
</div>
<div class="w3ls_address_mail_footer_grids">
	<div class="container" >
	   	<div class="row">
			 <!-- <div class="col-md-2">
			 	<div class="list-group">
			 	    <a href="#" class="list-group-item active">
			 		<span class="badge">Test</span>精准空运</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>限时汽运</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>快捷铁运</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>精明经济海运</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>联合跨境快递</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>整合多联运输</a>
			 		<a href="#" class="list-group-item ">
			 		<span class="badge">Test</span>联合云仓储</a> 
			 	</div>
			 </div> -->
			 <div class="col-md-12 contenttext" >
			 		<h3 style="width:100%; text-align: center; color:#430272">${requestScope.data.fence}</h3>
			 		<%-- <p  style="width:100%; text-align: center; color:#430272">ji:${requestScope.data.data.editor}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阅读量:${requestScope.data.data.num}</p> --%>
			 		<HR style="border:1px dotted #430272;">
			 		<div>
			 				${requestScope.data.content}
			 		</div>
			 		<HR style="border:1px dotted #430272;">
			 </div>
		</div>
		<%-- <div class="row" >
			  <div class="col-sm-offset-2 col-md-6" class="paging back">
			  			<c:if test="${requestScope.data.last.title == '' ||  requestScope.data.last.title == null}">
							     <p>下一页：<a href="#">没有了！</a></p>
			  		   </c:if>
			  		   <c:if test="${requestScope.data.last.title != '' &&  requestScope.data.last.title != null}">
							     <p>上一页：<a href="<%=basePath%>/news/ShowNewsDetails?newsId=${requestScope.data.last.id}">${requestScope.data.last.title}</a></p>
			  		   </c:if>
			  		
			  </div>
			  <div class="col-md-4" class="paging next">
					   <c:if test="${requestScope.data.next.title == '' ||  requestScope.data.next.title == null}">
							     <p>下一页：<a href="#">没有了！</a></p>
			  		   </c:if>
			  		   <c:if test="${requestScope.data.next.title != '' &&  requestScope.data.next.title != null}">
							     <p>下一页：<a href="<%=basePath%>/news/ShowNewsDetails?newsId=${requestScope.data.next.id}">${requestScope.data.next.title}</a></p>
			  		   </c:if>
			  </div>
		</div> --%>
	</div>
</div>

<!-- 引入底部 begin-->
<jsp:include   page="../footer.jsp" flush="true"/>		
<!-- 引入底部 end-->
<script type="text/javascript">
/****
 * 转换一个字符串日期格式然后返回日期对象
 */
 function parseDate(dateStr){
	// 获取某个时间格式的时间戳
	var stringTime = dateStr;
	var timestamp2 = Date.parse(new Date(stringTime));
	timestamp2 = timestamp2 / 1000;
	
	var d = new Date(timestamp2 * 1000);    //根据时间戳生成的时间对象
	/* var date = (d.getFullYear()) + "-" + 
	           (d.getMonth() + 1) + "-" +
	           (d.getDate()) + " " + 
	           (d.getHours()) + ":" + 
	           (d.getMinutes()) + ":" + 
	           (d.getSeconds()); */
    return d;
}



</script>



</body>
</html>