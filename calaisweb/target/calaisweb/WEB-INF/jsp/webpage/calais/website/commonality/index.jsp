<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html>
<head>
<title>Calais-首页</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> 
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); 
		}, false);
	function hideURLbar(){ 
		window.scrollTo(0,1); 
		} 
</script>
<!--// Meta tag Keywords -->

<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/flexslider.css" type="text/css" media="all" /><!-- for testimonials -->

<!-- css files -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/public/Animate/animate.min.css"> <!-- Animate-CSS -->
<!-- //css files -->

<!-- //js files -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/Animate/jquery-migrate-1.2.1.min.js"></script><!-- Animate-js -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/index/js/index-page.js"></script><!-- index.jsp -->
<!-- js files -->


<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts --> 

</head>
<body>
<!-- 引入头部 begin-->
<jsp:include   page="head.jsp" flush="true"/>		
<!-- 引入头部 end-->
<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
	    <div class="orderdiv" style="width:311px;height:500px;position:absolute;z-index:50;right:20%;top:20%;">
			<jsp:include   page="model/placeorder.jsp" flush="true"/>
		</div>
		<ul class="rslides" id="slider">
		
			<c:forEach items="${requestScope.slideshow.data}" varStatus="i" var="item" >
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top${item.group}" style=" background:url(<%=basePath%>${item.imgpath}) no-repeat 0px 0px;background-size: cover;">
						<div class="banner-dott">
						<div class="container">
							<div class="slider-info">
								<div class="col-md-8" >
									<h2></h2>
									<h4></h4>
									<div class="w3ls-button">
										<!-- <a href="#" data-toggle="modal" data-target="#myModal">查看更多</a> -->
									</div>
									<div class="bannergrids">
										<div class="col-md-4 grid1">
											<i class="fa fa-truck" aria-hidden="true"></i>
											<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
										</div>
										<div class="col-md-4 grid1">
											<i class="fa fa-ship" aria-hidden="true"></i>
											<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
										</div>
										<div class="col-md-4 grid1">
											<i class="fa fa-bus" aria-hidden="true"></i>
											<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="col-md-4">
								<%-- <!-- 引入快速下单Model begin-->
									<jsp:include   page="model/placeorder.jsp" flush="true"/>		
								<!-- 引入快速下单Model end--> --%>
								</div>
								<script type="text/javascript">
										  /* 根据数据库制指定格式的数据来设置首页显示数据 */
										  var array='${item.title}'.split("-");
										  $('.w3layouts-banner-top${item.group}').find('h2').text(array[0]);
										  $('.w3layouts-banner-top${item.group}').find('h4').text(array[1]);
								</script>
							</div>
						</div>
						</div>
					</div>
				</li>
			</c:forEach>			
			<%-- <li>
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="banner-dott">
					<div class="container">
						<div class="slider-info">
							<div class="col-md-8" >
								<h2>国内汽运</h2>
								<h4>加来士黄金陆运</h4>
								<div class="w3ls-button">
									<!-- <a href="#" data-toggle="modal" data-target="#myModal">查看更多</a> -->
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4">
							<!-- 引入快速下单Model begin-->
								<jsp:include   page="model/placeorder.jsp" flush="true"/>		
							<!-- 引入快速下单Model end-->
							</div>
						</div>
					</div>
					</div>
				</div>
			</li>
			<li>
				<div class="w3layouts-banner-top">
					<div class="banner-dott">
					<div class="container">
						<div class="slider-info">
							<div class="col-md-8  fadeInLeftBig animated">
								<h3>优质空运资源</h3>
								<h4>注重可靠性和速度的结合</h4>
								<div class="w3ls-button">
									<!-- <a href="#" data-toggle="modal" data-target="#myModal">查看更多</a> -->
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4">
								<!-- 引入快速下单Model begin-->
								<jsp:include   page="model/placeorder.jsp" flush="true"/>		
							    <!-- 引入快速下单Model end-->
							</div>
						</div>
					</div>
					</div>
				</div>
			</li>
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top3">
					<div class="banner-dott">
					<div class="container">
						<div class="slider-info">
							<div class="col-md-8  fadeInLeftBig animated">
								<h3>优势海运资源</h3>
								<h4>优质和高效率的服务</h4>
								<div class="w3ls-button">
									<!-- <a href="#" data-toggle="modal" data-target="#myModal">查看更多</a> -->
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4">
								<!-- 引入快速下单Model begin-->
								   <jsp:include   page="model/placeorder.jsp" flush="true"/>		
							    <!-- 引入快速下单Model end-->
							</div>
						</div>
					</div>
					</div>
				</div>
			</li>
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top2">
					<div class="banner-dott">
					<div class="container">
						<div class="slider-info">
							<div class="col-md-8  fadeInLeftBig animated">
								<h3>优势快递资源</h3>
								<h4>运送及跟踪解决方案</h4>
								<div class="w3ls-button">
									<!-- <a href="#" data-toggle="modal" data-target="#myModal">查看更多</a> -->
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4">
								<!-- 引入快速下单Model begin-->
								<jsp:include   page="model/placeorder.jsp" flush="true"/>		
							    <!-- 引入快速下单Model end-->
							</div>
						</div>
					</div>
					</div>
				</div>
			</li>
			
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top4">
					<div class="banner-dott">
					<div class="container">
						<div class="slider-info">
							<div class="col-md-8  fadeInLeftBig animated">
								<h3>仓储配送</h3>
								<h4>整合装运仓储</h4>
								<div class="w3ls-button">
									<a href="#" data-toggle="modal" data-target="#myModal">查看更多</a>
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>加来士黄金陆快是加来士国内陆路输板块的核心品牌</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4">
								<!-- 引入快速下单Model begin-->
								<jsp:include   page="model/placeorder.jsp" flush="true"/>		
							    <!-- 引入快速下单Model end-->
							</div>
						</div>
					</div>
					</div>
				</div>
			</li> --%>
		</ul>		
	</div>
	<div class="clearfix"></div>
</div>
<!-- //Slider -->	





<!-- banner-bottom -->
<div class="banner-bottom">
	<div class="col-md-7 bannerbottomleft">
			<div class="video-grid-single-page-agileits">
				<div data-video="d3q5mRA5djY" id="video"> <img src="<%=basePath%>/static/calais/website/commonality/images/bg2.jpg" alt="" class="img-responsive" /> </div>
			</div>
	</div>
	<div class="col-md-5 bannerbottomright">
		<h3>我们的优势</h3>
		<p>您只需一个指令，剩下的事情由我们来帮您完成.</p>
		<h4><i class="fa fa-taxi" aria-hidden="true"></i>国际运输交付系统</h4>
		<h4><i class="fa fa-shield" aria-hidden="true"></i>快速和最好的送货服务</h4>
		<h4><i class="fa fa-ticket" aria-hidden="true"></i>标准快递价值</h4>
		<h4><i class="fa fa-space-shuttle" aria-hidden="true"></i>便捷的汽车运输服务</h4>
		<h4><i class="fa fa-truck" aria-hidden="true"></i>完善的包装与贮存技术</h4>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //banner-bottom -->

<!-- 引入运输体系 begin-->
<jsp:include  page="model/transport.jsp" flush="true"/>		
<!-- 引入运输体系 end-->

<!-- Clients -->
	<div class=" col-md-6 clients" style="height: 620px;">
			<h3 style="font-weight: 400;"><a href="gallery" style="color:white;">我们的风采</a></h3>
			<!-- 引入 我们的风采-->
				 <%-- <jsp:include   page="model/redirection.jsp" flush="true">
				 	<jsp:param value="action" name="/gallerymainshow"/>
				 </jsp:include>  --%>	
			<!-- 引入我们的风采 end-->
			<iframe src="<%=basePath%>/gallerymainshow" style="height:100%;width: 100%;border: 0px;"  name="leftFrame" scrolling="No"  noresize="noresize"  id="leftFrame"></iframe>
			
			<%-- <section class="slider" style="height: 430px;">
				<div class="flexslider">
					<ul class="slides">
						<li>
								<div class="client">
									<img src="<%=basePath%>/static/calais/website/commonality/images/t1.jpg" alt="" />
									<h5>Brian Fantana</h5>
									<div class="clearfix"> </div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>
								
						</li>
						<li>	
								<div class="client">
								<img src="<%=basePath%>/static/calais/website/commonality/images/t2.jpg" alt="" />
									<h5>Brick Tamland</h5>
									<div class="clearfix"> </div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>
								
						</li>
						<li>
								<div class="client">
								<img src="<%=basePath%>/static/calais/website/commonality/images/t3.jpg" alt="" />
									<h5>Ron Burgundy</h5>
									<div class="clearfix"> </div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>
								
						</li>
						<li>
								<div class="client">
								<img src="<%=basePath%>/static/calais/website/commonality/images/t4.jpg" alt="" />
									<h5>Arturo Mendez</h5>
									<div class="clearfix"> </div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .</p>
								
						</li>
					</ul>
				</div>
			</section> --%>
</div>
<!-- //Clients -->
<!-- Counter -->
	<div class="col-md-6 services-bottom" style="height: 620px;">
			<div class="col-md-6 agileits_w3layouts_about_counter_left">
				<div class="countericon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<div class="counterinfo">
					<p class="counter">1126</p> 
					<h3>限时送达</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 agileits_w3layouts_about_counter_left">
				<div class="countericon">
					<i class="glyphicon glyphicon-plane" aria-hidden="true"></i>
				</div>
				<div class="counterinfo">
					<p class="counter">224</p> 
					<h3>直达224个国家地区</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<div class="col-md-6 agileits_w3layouts_about_counter_left">
				<div class="countericon">
					<i class="fa fa-calendar" aria-hidden="true"></i>
				</div>
				<div class="counterinfo">
					<p class="counter">365</p>
					<h3>全天候为您服务</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 agileits_w3layouts_about_counter_left">
				<div class="countericon">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div class="counterinfo">
					<p class="counter">800</p>
					<h3>专业客服解决问题</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
	</div>
			<div class="clearfix"> </div>
<!-- //Counter -->

<!-- our blog -->
<section class="blog" id="blog">
	<div class="container">
		<div class="heading">
			<h3>成功案例</h3>
		</div>
		<div class="blog-grids">
		
		<c:forEach var="item"  items="${requestScope.caseList}">
			<div class="col-md-4 blog-grid">
				<a href="<%=basePath%>/classicase/ShowCaseDetails?id=${item.id}" ><img src="<%=basePath%>${item.picture}" alt="" /></a>
				<h5>${item.createtime}</h5>
				<h4><a href="#" data-toggle="modal" data-target="#myModal">${item.title}</a></h4>
				<p>...</p>
				<div class="readmore-w3">
					<a class="readmore" href="<%=basePath%>/classicase/ShowCaseDetails?id=${item.id}">阅读全文</a>
				</div>
			</div>
			<script type="text/javascript">
				/* 设置多出的内容不作显示  */
				var content="${item.content}";
				if(content.length>150){
					var content=content.substr(0,150);
					content+="......";
				}
				$(".blog-grids").find(".blog-grid:last").find("p").text(content);
				
				/* 格式化显示时间  */
				var time="${item.createtime}";
				var timeArray=time.split("-");
				$(".blog-grids").find(".blog-grid:last").find("h5").text("June "+timeArray[1]+"."+timeArray[0]);
			</script>
		</c:forEach>
		<%-- <div class="col-md-4 blog-grid">
			<a href="#" data-toggle="modal" data-target="#myModal"><img src="<%=basePath%>/static/calais/website/commonality/images/gongyinglian.jpg" alt="" /></a>
			<h5>June 8,2015</h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">加来士物流正式迈进供应链时代</a></h4>
			<p> 追溯加来士进入物流行业的发展历史，不过十余年时间，但也正是得益于这短短十余年，使得加来士公司脱颖而出，成为物流行业乐道的对象。事实上，加来士自成立以来.....</p>
			<div class="readmore-w3">
				<a class="readmore" href="#" data-toggle="modal" data-target="#myModal">Read More</a>
			</div>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#" data-toggle="modal" data-target="#myModal2"><img src="<%=basePath%>/static/calais/website/commonality/images/timg.jpg" alt="" /></a>
			<h5>June 12,2016</h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">加来士启动越南陆运专线！</a></h4>
			<p>为顺应越南与中国日益紧密的经济合作潮流，以更专业、更高效的要求服务广大客商，加来士于2016年12月正式开通华南至越南跨境门到门服务业务。业务覆盖整个华南地区和越南重要经济城市。</p>
			<div class="readmore-w3">
				<a class="readmore" href="#" data-toggle="modal" data-target="#myModal2">Read More</a>
			</div>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#" data-toggle="modal" data-target="#myModal3"><img src="<%=basePath%>/static/calais/website/commonality/images/20161104141747_361.jpg" alt="" /></a>
			<h5>June 26,2017</h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">马不停蹄珠三角 相聚东莞度今宵</a></h4>
			<p>2016年12月31日，一年一度的加来士岁末迎春联谊会在东莞富盈酒店热烈举行！参加本届晚会的人士，除了加来士全体员工和一如既往坚持邀请的加来士员工家属，还特地邀请了加来士的部分客户和生意伙伴。整个会场100多号人欢聚一堂，其乐融融。</p>
			<div class="readmore-w3">
				<a class="readmore" href="#" data-toggle="modal" data-target="#myModal3">Read More</a>
			</div>
		</div> --%>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //our blog -->

<!-- 引入底部 begin-->
<jsp:include   page="footer.jsp" flush="true"/>		
<!-- 引入底部 end-->



<!-- js-scripts -->					
<!-- js -->
	<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->	

<!-- start-smoth-scrolling -->
<script src="<%=basePath%>/static/calais/website/commonality/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- start-smoth-scrolling -->

<!-- Baneer-js -->
	<script src="<%=basePath%>/static/calais/website/commonality/js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				pager:false,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
					//设置当前字体特效增加
					 //设置当前字体特效消失
					
				    $('#slider').find('li').each(function(){
				    	if($(this).hasClass('callbacks1_on')){
				    		$(this).find(".col-md-8").find("h2").addClass('fadeInLeftBig animated');
				    		$(this).find(".col-md-8").find("h4").addClass('fadeInLeftBig animated');
				    	}else{
				    		$(this).find(".col-md-8").find("h2").removeClass('fadeInLeftBig animated');
				    		$(this).find(".col-md-8").find("h4").removeClass('fadeInLeftBig animated');
				    	}    	
					})
				},
				after: function () {//首页轮播图完成后
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
<!-- //Baneer-js -->

<!-- banner bottom video script -->
<script src="<%=basePath%>/static/calais/website/commonality/js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
</script>
<!-- //banner bottom video script -->

<!-- Stats-Number-Scroller-Animation-JavaScript -->
				<script src="<%=basePath%>/static/calais/website/commonality/js/waypoints.min.js"></script> 
				<script src="<%=basePath%>/static/calais/website/commonality/js/counterup.min.js"></script> 
				<script>
					jQuery(document).ready(function( $ ) {
						$('.counter').counterUp({
							delay: 100,
							time: 1000
						});
					});
				</script>
<!-- //Stats-Number-Scroller-Animation-JavaScript -->


<!-- FlexSlider-JavaScript -->
	<script defer src="<%=basePath%>/static/calais/website/commonality/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
			$(function(){
				SyntaxHighlighter.all();
			});
			$(window).load(function(){
			$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
						$('body').removeClass('loading');
					}
			});
		});
	</script>
<!-- //FlexSlider-JavaScript -->
<!-- //js-scripts -->
</body>
</html>