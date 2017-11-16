<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact</title>
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
<link rel="stylesheet" href="<%=basePath%>/static/public/layui/css/layui.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- web-fonts -->
<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //web-fonts -->

<!-- //js files -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/Animate/jquery-migrate-1.2.1.min.js"></script><!-- Animate-js -->
<script type="text/javascript" src="<%=basePath%>/static/calais/website/commonality/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=pGjmSXd0DHMM5Vx4PRU5ypR12FVZ2Vfc"></script>
<script type="text/javascript" src="<%=basePath%>/static/calais/website/contact/css/BaiDuMap.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.all.js"></script>
<!-- js files -->

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
			<li>联系我们</li>
		</ul>
	</div>
</div>
<div class="w3ls_address_mail_footer_grids">
	<div class="heading">
		<h2>联系我们</h2>
	</div>
	<!-- 百度地图div -->
	<div class="container" >
	   	<div class="row">
			 <div class="col-md-12">
			 	<div id="baiduMap" style="height: 500px;width: 1000px;margin-bottom: 20px;">
				
				</div>
			 </div>
		</div>
	</div>
			
	<div class="container">
			
			<div class="col-md-6 contact-form">
				<h4 class="white-w3ls">意见 <span>反馈</span></h4>
				<form action="#" method="post" class="layui-form">
					<div class="styled-input agile-styled-input-top">
						<input type="text" name="name" autocomplete="off" lay-verify="name" required="">
						<label>姓名</label>
						<span></span>
					</div>
					<div class="styled-input">
						<input type="email" name="email" autocomplete="off" lay-verify="email"  required=""> 
						<label>邮箱</label>
						<span></span>
					</div> 
					<div class="styled-input">
						<input type="text" name="phone" autocomplete="off" lay-verify="phone"   required="">
						<label>手机</label>
						<span></span>
					</div>
					<div class="styled-input">
						<textarea name="content" autocomplete="off" lay-verify="content"  required=""></textarea>
						<label>内容</label>
						<span></span>
					</div>	 
					<input type="button" class="layui-btn" lay-submit="" lay-filter="demo1" value="提交">
				</form>
			</div>
			<div class="col-md-6 contactright">
				<h3>公司地址</h3>
				<div class="w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-map-marker" aria-hidden="true"></i>
					</div>
					<p name="address"> 东莞市南城区黄金路蓝堡花园门口C3-C4.<span></span></p>
				</div>
				<div class="w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<p name="specialplane">0769-22988780  <span>22988927</span></p>
				</div>
				<div class="w3ls_footer_grid_left">
					<div class="wthree_footer_grid_left">
						<i class="fa fa-envelope-o" aria-hidden="true"></i>
					</div>
					<p><a href="mailto:info@example.com" name="emaile">info@example1.com</a> 
						<!-- <span><a href="mailto:info@example.com">info@example2.com</a></span></p> -->
				</div>
			</div>
			<div class="clearfix"> </div>
	</div>
</div>

<!-- 引入底部 begin-->
<jsp:include   page="footer.jsp" flush="true"/>		
<!-- 引入底部 end-->


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
		
		layui.use(['form', 'layedit', 'laydate'], function(){  
			  var form = layui.form
			  ,layer = layui.layer  
			  ,layedit = layui.layedit  
			  ,laydate = layui.laydate;  
			   
			  //自定义验证规则  
			  form.verify({  
			        name: function(value){  
			          if(value.length < 2){  
			            return '请输入至少2位的用户名';  
			          }  
			        }, contact: function(value){  
			          if(value.length < 4){  
			            return '内容请输入至少4个字符';  
			          }  
			        }  
			        ,phone: [/^1[3|4|5|7|8]\d{9}$/, '手机必须11位，只能是数字！']  
			        ,email: [/^[a-z0-9._%-]+@([a-z0-9-]+\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\d{9}$/, '邮箱格式不对']  
			  });  
			    
			  //创建一个编辑器  
			  layedit.build('LAY_demo_editor');  
			    
			  //监听提交  
			  form.on('submit(demo1)', function(data){  
			    postAjax(data.field);
			    return false;  
			  });  
			    
		 });  
	});
	
	
	function postAjax(data){
    	 $.ajax({
			    url:'<%=basePath%>/contact/postMessage',
			    type:'POST', //GET
			    data:{
			    	name:data.name,
			    	email:data.email,
			    	phone:data.phone,
			    	content:data.content
			    },
			    async:true,    //或false,是否异步
			    timeout:5000,    //超时时间
			    dataType:'json',
			    success:function(data,textStatus,jqXHR){
			        if(data.code =='1'){
			        	layer.msg("提交成功，请耐心等待回复！");
			        }else{
			        	layer.msg("系统出错,请联系管理员！");
			        }
			        
			    },
			    error:function(xhr,textStatus){
			        console.log('错误')
			    }
		})
     }
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
<!-- //footer -->
<script type="text/javascript">
			$.ajax({
			    url:'<%=basePath%>/contact/getOneOverhead',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    timeout:5000,    //超时时间
			    dataType:'json',
			    success:function(data,textStatus,jqXHR){
			        $("[name='specialplane']").text(data.data.specialPlane);
			        $("[name='emaile']").text(data.data.emaile);
			        $("[name='address']").text(data.data.address);
			    },
			    error:function(xhr,textStatus){
			        console.log('错误')
			    }
			})
</script>


</body>
</html>