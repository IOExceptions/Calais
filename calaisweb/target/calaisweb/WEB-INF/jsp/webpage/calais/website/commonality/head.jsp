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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/flexslider.css" type="text/css" media="all" /><!-- for testimonials -->

<!-- css files -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a href="index.html" style=""><img src="<%=basePath%>/static/calais/website/commonality/images/log.png"/></a></h1>
					</div>
					<div class="top-nav-text">
						<div class="nav-contact-w3ls"><i class="fa fa-phone" aria-hidden="true"></i><p>400-891-8698</p></div> 
					</div>
					navbar-header
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
						    <c:forEach var="item" items="${sessionScope.navigation}">
						    		 <c:if test="${(item.netherList) == null || fn:length(item.netherList) == 0}">
						    				<li><a class="hvr-underline-from-center active" href="<%=basePath%>${item.url}">${item.text}</a></li>
						    		</c:if>
						    		<c:if test="${fn:length(item.netherList) > 0}">
						    				<li><a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">${item.text}</span><span class="caret"></span></a>
												<ul class="dropdown-menu">
												    <c:forEach var="item2" items="${item.netherList}">
														<li><a href="<%=basePath%>${item2.url}"><span data-hover="Icons">${item2.text}</span></a></li>
													</c:forEach>
												</ul>
											</li>
						    		</c:if> 
							</c:forEach> 
							<!-- <li><a class="hvr-underline-from-center active" href="index.html">首页</a></li>
							<li><a href="#team" class="hvr-underline-from-center scroll scroll">整合运输方案</a></li>
							<li><a href="services" class="hvr-underline-from-center">特色服务</a></li>
							<li><a href="gallery" class="hvr-underline-from-center">我们的风采</a></li>
							<li><a href="#blog" class="hvr-underline-from-center">成功案例</a></li>
							<li><a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">媒体中心</span><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="icons"><span data-hover="Icons">公司新闻</span></a></li>
									<li><a href="typography"><span data-hover="Typograpghy">行业新闻</span></a></li>
								</ul>
							</li>
							<li><a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">Test</span><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="icons"><span data-hover="Icons">Icons</span></a></li>
									<li><a href="typography"><span data-hover="Typograpghy">Typograpghy</span></a></li>
								</ul>
							</li>	
							<li><a href="contact" class="hvr-underline-from-center">联系我们</a> -->
						</ul>
					</div>

					<div class="clearfix"> </div>	
				</nav>
	
	</div>
	<script type="text/javascript">
	$(function(){
		var nav=$(".header"); //得到导航对象
		var win=$(window); //得到窗口对象
		var sc=$(document);//得到document文档对象。
		win.scroll(function(){
		  if(sc.scrollTop()>=1){
		    nav.addClass("fixednav"); 
		   $(".navTmp").fadeIn(); 
		  }else{
		   nav.removeClass("fixednav");
		   $(".navTmp").fadeOut();
		  }
		})  
	})
	</script>
</body>
</html>