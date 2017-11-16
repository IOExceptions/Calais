<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Gallery</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->

<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/lightbox.css"> <!-- portfolio-CSS -->

<!-- css files -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/commonality/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->
<!-- //js files -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
<!-- //js files -->

</head>
<body>
<!-- 引入头部 begin-->
<jsp:include   page="head.jsp" flush="true"/>		
<!-- 引入头部 end-->

<div class="banner1">
</div>
<div class="about-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="index">首页</a><i>></i></li>
			<li>我们的风采</li>
		</ul>
	</div>
</div>
<!-- portfolio-inner-page -->
	<div id="portfolio" class="portfolio">
		<div class="heading">
			<h3>我们的风采</h3>
		</div>
		<div class="container">
			<div class="sap_tabs">			
				
				
				<%-- <div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item"><span>交通运输</span></li>
						<li class="resp-tab-item"><span>轮船运输</span></li>
						<li class="resp-tab-item"><span>卡车运输</span></li>
						<li class="resp-tab-item"><span>航空运输</span></li>					
					</ul>	
					<div class="clearfix"> </div>	
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content">
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h2>Transport Area</h2>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid2">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g4.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid3">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g3.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid4">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g7.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g7.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid5">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g5.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid6">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g6.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid6">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid6">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g3.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid6">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g2.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Transport Area</h5>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>		
						<div class="tab-1 resp-tab-content">
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/ship1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/ship1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Ship Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid2">
								<a href="<%=basePath%>/static/calais/website/commonality/images/ship2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/ship2.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Ship Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid3">
								<a href="<%=basePath%>/static/calais/website/commonality/images/ship3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/ship3.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Ship Transport</h5>
									</div>
								</a>
							</div>
								<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid4">
								<a href="<%=basePath%>/static/calais/website/commonality/images/ship4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/ship4.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Ship Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid5">
								<a href="<%=basePath%>/static/calais/website/commonality/images/ship5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/ship5.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Ship Transport</h5>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="tab-1 resp-tab-content">
						
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/train1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/train1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Truck Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids  portfolio-grid2">
								<a href="<%=basePath%>/static/calais/website/commonality/images/train2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/train2.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Truck Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids  portfolio-grid3">
								<a href="<%=basePath%>/static/calais/website/commonality/images/truck3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/truck3.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Truck Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/truck4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/truck4.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Truck Transport</h5>
									</div>
								</a>
							</div>
							
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid2">
								<a href="<%=basePath%>/static/calais/website/commonality/images/truck5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/truck5.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Truck Transport</h5>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="tab-1 resp-tab-content">
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid2">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight2.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids  portfolio-grid3">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight3.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid4">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight4.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid4">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight5.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid4">
								<a href="<%=basePath%>/static/calais/website/commonality/images/flight6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/flight6.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Flight Transport</h5>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>						
				</div> --%>
				
				
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<!-- <li class="resp-tab-item"><span>交通运输</span></li>	 -->				
					</ul>	
					<div class="clearfix"> </div>	
					<div class="resp-tabs-container">
						<%-- <div class="tab-1 resp-tab-content">
							<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid1">
								<a href="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
									<img src="<%=basePath%>/static/calais/website/commonality/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h2>Transport Area</h2>
									</div>
								</a>
							</div>					
							<div class="clearfix"> </div>
						</div>	 --%>	
					</div>						
				</div>
				
				
			</div>
		</div>
	</div>
	<!-- //portfolio-inner-page -->


<!-- 引入底部 begin-->
<jsp:include   page="footer.jsp" flush="true"/>		
<!-- 引入底部 end-->


<!-- 同通过ajax获取数据 -->
<script type="text/javascript">
	$.ajax({
	    url:'<%=basePath%>/demeanour/getDemeanourTypeExtendList',
	    type:'POST', //GET
	    async:true,    //或false,是否异步
	    timeout:5000,    //超时时间
	    dataType:'json',
	    success:function(data,textStatus,jqXHR){
	    	    var dateList=data.data;
	    	    for(var i=0;i<dateList.length;i++){
	    	    	$('.resp-tabs-list').append('<li class="resp-tab-item"><span>'+dateList[i].text+'</span></li>	');
	    	    	console.log(dateList[i]);
	    	    	var seed=dateList[i].demeanourList;
	    	    	var content='<div class="tab-1 resp-tab-content">';
	    	    	var num=1;
	    	    	for(var g=0;g<seed.length;g++){
	    	    		content+=  '<div class="col-md-4 col-sm-4 portfolio-grids portfolio-grid'+num+'">'
											+'<a href="<%=basePath%>'+seed[g].path+'" data-lightbox="example-set" data-title="'+seed[g].title+'">'
											+'<img src="<%=basePath%>'+seed[g].path+'" class="img-responsive zoom-img" alt=""/>'
											+'<div class="b-wrapper">'
											+	'<h2>'+seed[g].title+'</h2>'
											+'</div>'
								  			+'</a>'
								  +'</div>';
	    	    		if(num%3===0){
	    	    			num=0;
	    	    		}
	    	    		num++;
	    	    	}
	    	    	content+='<div class="clearfix"></div></div>';
	    	    	$('.resp-tabs-container').append(content);
	    	    }
	    },
	    error:function(xhr,textStatus){
	        console.log('错误')
	    }
	})
</script>
<!-- 同通过ajax获取数据 end -->


<!-- js-scripts -->					
<!-- js -->
	<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->	
<!-- //js-scripts -->

	<!--script for portfolio-->
			<script src="<%=basePath%>/static/calais/website/commonality/js/lightbox-plus-jquery.min.js"> </script>
			<script src="<%=basePath%>/static/calais/website/commonality/js/easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});		
			</script>
	<!--//script for portfolio-->
			

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

</body>
</html>