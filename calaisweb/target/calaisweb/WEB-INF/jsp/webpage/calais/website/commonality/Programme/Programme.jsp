<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>整合运输方案</title>
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
			<li><a href="index.html">首页</a><i>></i></li>
			<li>整合运输方案</li>
		</ul>
	</div>
</div>
<div class="w3ls_address_mail_footer_grids">
	<div class="heading">
		<h2>整合运输方案</h2>
	</div>
	<div class="container" >
	   	<div class="row">
			 <div class="col-md-2">
			 	<div class="list-group">
			 		<!-- <a href="#" class="list-group-item active">
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
			 		<span class="badge">Test</span>联合云仓储</a> -->
			 	</div>
			 </div>
			 <div class="col-md-10 contenttext">
			 		<h1>
						<span style="color:#4C33E5;">限时汽运</span>
					</h1>
					<p>
						<br />
					</p>
					<hr />
					<p>
						<br />
					</p>
					<h3>
						<span style="color:#4C33E5;">优质和高效率的服务，有赖于精明的解决方案，更有赖与船东稳定的合作关系</span>
					</h3>
					<p>
						<img src="http://www.calais.cc.img.800cdn.com/web_file/images/server/ser_seai.jpg" alt="" />
					</p>
					<h2>
						<span style="color:#4C33E5;">优势海运资源整合 精细灵活服务</span>
					</h2>
					<p>
						<br />
					</p>
					<hr />
					<p>
						<img src="http://www.calais.cc.img.800cdn.com/web_file/images/server/ser_seass.jpg" alt="" />
					</p>
			 </div>
		</div>
	</div>
</div>

<!-- 引入底部 begin-->
<jsp:include   page="../footer.jsp" flush="true"/>		
<!-- 引入底部 end-->
<script type="text/javascript">
	$.ajax({
	    url:'<%=basePath%>/rogramme/getProgrammeList',
	    type:'POST', //GET
	    async:true,    //或false,是否异步
	    timeout:5000,    //超时时间
	    dataType:'json',
	    success:function(data,textStatus,jqXHR){
	    	for(var i=0;i<data.data.length;i++){
	    		 var titl= '<a href="#" onClick="javaScript:getContentById('+data.data[i].id+');" class="list-group-item">'
	 			     +'<span class="badge"></span>'+data.data[i].fence+'</a>';
	      	         $('.list-group').append(titl);
	    	}  	
	    },
	    error:function(xhr,textStatus){
	        console.log('错误')
	    }
	})
	
	function getContentById(id){
		$.ajax({
		    url:'<%=basePath%>/rogramme/getProgrammeById',
		    type:'POST', //GET
		    data:{
		    	id:id
		    },
		    async:true,    //或false,是否异步
		    timeout:5000,    //超时时间
		    dataType:'json',
		    success:function(data,textStatus,jqXHR){
		    	console.log(data.data);
		    	$(".contenttext").html(data.data.content);
		    },
		    error:function(xhr,textStatus){
		        console.log('错误')
		    }
		})
	}

</script>



</body>
</html>