<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<title>Calais-特色服务</title>
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
<!-- //css files -->

<!-- //js files -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
<!-- //js files -->


<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->

<style type="text/css">
.servicegrid1:hover{
	cursor:pointer
}
</style>
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
				<li><a href="index.html">首页</a><i>></i></li>
				<li>特色服务</li>
			</ul>
		</div>
	</div>
<!-- services section -->
<div class="services" id="services">
		<div class="heading">
			<h2>我们的优势</h2>
		</div>
	<div class="container">
		<div class="servicegrids">
			<!-- <div class="servicetopgrids">
				<div class="col-md-4 servicegrid1">
					<h5>01</h5>
					<h4>综合解决方案</h4>
					<p>任何货件只要委托加来士，都可以在几个小时内到达全国各地任何地方。
						不仅如此，加来士可以根据客户的需要，联合各地代理，提供门到门服务。
						以航空运输的成本提供快递品质的的服务.</p>
				</div>
				<div class="col-md-4 servicegrid1">
					<h5>02</h5>
					<h4>道路运输</h4>
					<p>Calais全面整合全球各家优势 并以一对一、点对点 实时反馈的服务模式 规避了常规机构鞭长莫及、 反应迟钝的的状况。当您选择Calais快递，意味着您选择了具备卓越服务能力 的国际快递代理专家。不论快递文件还是大型货物，我们都能根据您的需求提供运送及跟踪解决方案.</p>
				</div>
				<div class="col-md-4 servicegrid1">
					<h5>03</h5>
					<h4>水路运输</h4>
					<p>优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系.加来士基于自身十几年的诚信和经验累积，整合了全球强大的运输网络和物流精英，以突破传统的海运思维，创建多层次、多纬度的解决方案，以充分满足各种客户各种特有需求。</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="servicebottomgrids">
				<div class="col-md-4 servicegrid1">
					<h5>04</h5>
					<h4>物流管理</h4>
					<p>加来士整合全国知名零担物流企业优势，运用现代先进的作业设备，信息化管理，以及全国统一的标准化流程，形成统一运营服务体系，为商家消费提供优质的陆地快运服务.</p>
				</div>
				<div class="col-md-4 servicegrid1">
					<h5>05</h5>
					<h4>仓储配送</h4>
					<p>加来士整合装运接收来自多个制造工厂指定送往同一市场区域的货物，通过专业物流师的整体规划,将各厂家货物集成为统一的货物配送。不仅实现最低的运输成本，并且减少了收货方站台的拥挤，提高配送效率。加来士整合装运仓储把从制造商到仓库的内向转移和从仓库到顾客的外向转移都整合成一个整体，让各厂商都能够享受到物流总成本低于其各自分别直接装运的成本。 .</p>
				</div>
				<div class="col-md-4 servicegrid1">
					<h5>06</h5>
					<h4>快速 & 安全服务</h4>
					<p>加来士充分站在商务的角度与时俱进，全面深入贸易全程各个环节，以节约时间，减少浪费为原则，为您提供紧密系统的一站式服务 。加来士, 全程效力就是优势.</p>
				</div>
				<div class="clearfix"></div>
			</div> -->
		</div>
	</div>
</div>
<!-- //services section -->

<!-- bootstrap-modal-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Transport 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
					<div class="modal-body">
						<img src="<%=basePath%>/static/calais/website/commonality/images/bg3.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
			</div>
		</div>
	</div>
<!-- //bootstrap-modal-pop-up --> 

<!-- services bottom -->
<div class="Servicebottom">
	<div class="layer">
	<div class="col-md-5">
	</div>
	<div class="col-md-7 Servicebottomtext">
		<h3>快速安全的运输服务。</h3>
		<h3>专门的重型车辆</h3>
		<h3>航运服务及物流管理</h3>
		<p> 加來士(Calais)物流有限公司，2002年成立於東莞，是提供全方位物流方案和物流执行服务的专业物流服务集团，业务板块涉及：国际国内空运、国际国内海运、国际国内快递、国内陆地快运、货物仓储和配送。</p>
		<h4><i class="fa fa-taxi" aria-hidden="true"></i>国际运输交付系统</h4>
		<h4><i class="fa fa-truck" aria-hidden="true"></i>卡车物流服务</h4>
	</div>
	<div class="clearfix"></div>
	</div>
</div>
<!-- //services bottom -->

<%-- <!-- 引入运输体系 begin-->
<jsp:include  page="model/transport.jsp" flush="true"/>		
<!-- 引入运输体系 end--> --%>


<!-- 引入底部 begin-->
<jsp:include   page="footer.jsp" flush="true"/>		
<!-- 引入底部 end-->



<!-- js-scripts -->					
<!-- js -->
	<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<!-- //js -->	
<!-- //js-scripts -->

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
<!-- 初始化我们的优势 -->
<script type="text/javascript">
			function isInteger(obj) {
			    return obj%1 === 0
			}
			$.ajax({
			    url:'<%=basePath%>/feature/getAllFaeatureList',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    timeout:5000,    //超时时间
			    dataType:'json',
			    success:function(data,textStatus,jqXHR){
			        var dataList=data.data;
			        var content='<div class="servicebottomgrids" style="margin-bottom:23px ;">';
			        for(var i=1;i<=dataList.length;i++){
			        	content+='<div class="col-md-4 servicegrid1" onClick="javaScript:hrefShowDetails('+dataList[i-1].id+')">'
			        					<%-- +'<h5><img src="<%=basePath%>'+dataList[i-1].picture+'"></h5>' --%>
			        					+'<h5>'+i+'</h5>'
										+'<h4>'+dataList[i-1].fence+'</h4>'
										+'<p>'+dataList[i-1].title+'</p>'
								        +'</div>';
						if(i%3===0){
							console.log("追加尾部clearfix");
							content+='<div class="clearfix"></div></div>';
						}
						if(i%3===0&&i!=dataList.length){
							content+='<div class="servicebottomgrids" style="margin-bottom:23px ;">';
						}
			        }
			        content+='</div>';
			        $(".servicegrids").append(content);
			    },
			    error:function(xhr,textStatus){
			        console.log('错误')
			    }
			})
			
			function hrefShowDetails(id){
					location.href="<%=basePath%>/feature/ShowServiceDetails?id="+id;
			}
	</script>


</body>
</html>