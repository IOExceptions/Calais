<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<!-- footer -->
	<footer>
		<div class="agileits-w3layouts-footer">
			<div class="container">
				<div class="col-md-4 w3-agile-grid">
					<h5>关于我们</h5>
					<p name="contents">
						 加來士(Calais)物流有限公司，2002年成立於東莞，是提供全方位物流方案和物流执行服务的专业物流服务集团，业务板块涉及：国际国内空运、国际国内海运、国际国内快递、国内陆地快运、货物仓储和配送。
					</p>
					<div class="footer-agileinfo-social">
						<ul>
							<li><a href="#"><i class="fa fa-weibo"></i></a></li>
							<li><a href="#"><i class="fa fa-tencent-weibo"></i></a></li>
							<li><a href="#"><i class="fa fa-qq"></i></a></li>
							<li><a href="#"><i class="fa fa-renren"></i></a></li>
						</ul>
					</div>
				</div>
				
				<div class="col-md-4 w3-agile-grid">
					<h5>联系我们</h5>
					<div class="w3-address">
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>直&nbsp;&nbsp;线</h6>
								<p name="specialplane">400-891-8698</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-file" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>传&nbsp;&nbsp;真</h6>
								<p>传真 :<a href="mailto:example@email.com" name="fax"> 0769-22989286</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>地&nbsp;&nbsp;址</h6>
								<p name="address"> 东莞市南城区黄金路蓝堡花园门口C3-C4
								</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				
				
				<div class="col-md-4 w3-agile-grid">
					<h5>公司地址</h5>
					<div class="w3ls-post-grids">
						<div class="w3ls-post-grid" id="fonterContentList">
							
						</div>
					</div>
			   </div>
						
						
		
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">加来士;</a></p>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<script type="text/javascript">
			$.ajax({
			    url:'<%=basePath%>/contact/getOneOverhead',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    timeout:5000,    //超时时间
			    dataType:'json',
			    success:function(data,textStatus,jqXHR){
			        $("[name='contents']").text(data.data.content);
			        $("[name='specialplane']").text(data.data.specialPlane);
			        $("[name='fax']").text(data.data.fax);
			        $("[name='address']").text(data.data.address);
			    },
			    error:function(xhr,textStatus){
			        console.log('错误')
			    }
			})
			
			$.ajax({
			    url:'<%=basePath%>/contact/getAllOverhead',
			    type:'POST', //GET
			    async:true,    //或false,是否异步
			    timeout:5000,    //超时时间
			    dataType:'json',
			    success:function(data,textStatus,jqXHR){
			    	var list=data.data;
			    	for(var i=0;i<list.length;i++){
			    		var str='<div class="w3ls-post-grid" id="fonterContentList" style="color:#FFFFFF;">'
								+'		<div class="w3ls-post-img">'
								+'			<h6>'+list[i].name+'</h6>'
								+'		</div>'
								+'	<div class="w3ls-post-info">'
								+'			<h6>地址:'+list[i].address+'</h6>'
								+'	</div>'
								+'	<div class="clearfix"> </div>'
								+'</div>';
								$('#fonterContentList').append(str);
			    	}
			    },
			    error:function(xhr,textStatus){
			        console.log('错误')
			    }
			})
	</script>
</body>
</html>