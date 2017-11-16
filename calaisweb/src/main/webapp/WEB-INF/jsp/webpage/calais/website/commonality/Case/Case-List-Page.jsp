<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>成功案例</title>
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
<link rel="stylesheet" href="<%=basePath%>/static/calais/website/case/case-page.css"/>
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
			<li>经典案例</li>
		</ul>
	</div>
</div>
<div class="w3ls_address_mail_footer_grids">
	<div class="heading">
		<h2>经典案例</h2>
	</div>
	<div class="container caseContent">
	
 <%--    <div class="row case_title" >
        <div class="col-sm-offset-2 col-sm-3" style="margin: 20px;">
        	<a style="display:inline-block;" href="#"><img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/></a>
        	<p class="title">全权代理英国IVS公司全球供应链业务</p>
        	<p class="content"><a href="#">2010年年初，加来士物流通过多方努力，取得了英国IVS公司全球供应链代理业务。加来士得到了IVS公司的高度肯定。 IVS是英国大型玩具采...</a></p>
        </div>
        <div class="col-sm-3" style="margin: 20px;">
        	<img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/>
            <p>全权代理英国IVS公司全球供应链业务</p>
        </div>
        <div class="col-sm-3" style="margin: 20px;">
        	<img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/>
            <p>全权代理英国IVS公司全球供应链业务</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-1 col-sm-3" style="margin: 20px;">
        	<img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/>
        	<p>全权代理英国IVS公司全球供应链业务</p>
        </div>
        <div class="col-sm-3" style="margin: 20px;">
        	<img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/>
            <p>全权代理英国IVS公司全球供应链业务</p>
        </div>
        <div class="col-sm-3" style="margin: 20px;">
        	<img alt="" src="<%=basePath%>/webfile\anli\dailiying.png" style="height: 200px;padding: 5px;border:1px solid #CCCCCC"/>
            <p>全权代理英国IVS公司全球供应链业务</p>
        </div>
    </div> --%>
</div>
</div>

<!-- 引入底部 begin-->
<jsp:include   page="../footer.jsp" flush="true"/>		
<!-- 引入底部 end-->
<script type="text/javascript">
	$.ajax({
	    url:'<%=basePath%>/classicase/getCaseListPage',
	    type:'POST', //GET
	    async:true,    //或false,是否异步
	    timeout:5000,    //超时时间
	    dataType:'json',
	    success:function(data,textStatus,jqXHR){
	    	var content='<div class="row case_title" >';
	    	for(var i=0;i<data.data.length;i++){
	    		var text=data.data[i].content;
	    		if(text.length>50){
	    			text=text.substr(0,50);
	    			text+='......';
	    		}
	    		
	    		content+='<div class="col-sm-offset-2 col-sm-3" style="margin: 20px;">'
				        +'	<a style="display:inline-block;" href="<%=basePath%>/classicase/ShowCaseDetails?id='+data.data[i].id+'"><img alt="" src="<%=basePath%>'+data.data[i].picture+'" style="height: 200px;width:280px;padding: 5px;border:1px solid #CCCCCC"/></a>'
				        +'	<p class="title">'+data.data[i].title+'</p>'
				        +'	<p class="content"><a href="#">'+text+'</a></p>'
				        +' </div>';
			    
				if((i+1)%3===0){
					console.log("i%3===0&&i!=(data.data.length-1)"+i);
					content+='</div><div class="row case_title" >';
				}
				if(i==(data.data.length-1)){
					console.log("i==(data.data.length-1)"+i);
			    	content+='</div>';
			    }
	    		console.log(data.data[i]);
	    	}  	
	    	$(".caseContent").append(content);
	    },
	    error:function(xhr,textStatus){
	        console.log('错误')
	    }
	})
</script>



</body>
</html>