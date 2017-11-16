<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>公司新闻</title>
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
			<li><a href="index.html">首页</a><i>></i></li>
			<li>公司新闻</li>
		</ul>
	</div>
</div>
<div class="w3ls_address_mail_footer_grids">
	<div class="heading">
		<h2>公司新闻</h2>
	</div>
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
			 <div class="col-md-12 contenttext">
			 		<!-- <div class="row newsList">
			 			<div class="col-sm-12" style="margin: 5px;">
			 				<div class="col-sm-1">
			 					<div class="day">06</div>
			 					<div class="year">2017-01</div>
			 			    </div>
			 			    <div class="col-sm-2">
			 					<a style="border:1px solid #cccccc;display:inline-block;"><img src="http://www.calais.cc/upfile/20170106164936_599.jpg" alt="" style="width:130;heigth:120px;margin:2px;"/></a>
			 			    </div>
			 			    <div class="col-sm-7">
			 					<ul class="newsul">
			 			   			<li>标题:<span>加来士物流正式迈进供应链时代</span></li>
			 			   			<li>作者:<span>加来士物流编辑部</span></li>
			 			   			<li>缩略:<span>进入物流行业的发展历史，不过十余年时间，但也正是得益于这短短十余年，使得加来士公司脱颖而出，成为物流行业乐道的对象。事实上，加来士自成立以来就已经在悄然树立了供应链管理思维——从管理到技术.</span></li>
			 			   		</ul>
			 			    </div>
			 			    <div class="col-sm-2">
			 			    	<a href="#"><span class="label label-primary">查看详情</span></a>
			 			    </div>
			 			</div>
			 		</div>		  -->		
			 </div>
		</div>
		<div class="row">
			<div class="col-sm-offset-3 col-sm-8">
				<div style="text-align: center;">
				    <div id="pageNum">
					    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
						  <legend>显示完整功能</legend>
						</fieldset>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 引入底部 begin-->
<jsp:include   page="../footer.jsp" flush="true"/>		
<!-- 引入底部 end-->
<script type="text/javascript">
$(function(){
	 /***
     * 初始化LayiUI分页插件
     */
	getAjaxData(1);
})
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


function getAjaxData(curr){
	$.ajax({
	    url:'<%=basePath%>/news/getAllNews',
	    type:'POST', //GET
	    async:true,    //或false,是否异步
	    data:{
	    	newsType:1,
	    	curr:curr,
	    	limit:10,
	    },
	    dataType:'json',
	    success:function(data,textStatus,jqXHR){
	    	$('.newsList').remove();
	        var listData=data.data;
	        for(var i=0;i<listData.length;i++){
	        	
	        	var createDate=listData[i].createtime;
	        	createDate=parseDate(listData[i].createtime);
	        	
	        	
	        	var text=listData[i].content;
	        	if(text.length>150){
	        		text=text.substr(0,100);
	        		text+='......';
	        	}
	        	
	        	var id=listData[i].id;
	        	
	        	var content='';
	        	content='<div class="row newsList" onClick="opDetails('+id+')">'
		 			+'<div class="col-sm-12" style="margin: 5px;">'
		 			+	'<div class="col-sm-1">'
		 			+		'<div class="day">'+createDate.getDate()+'</div>'
		 			+		'<div class="year">'+createDate.getFullYear()+'-'+createDate.getMonth()+'</div>'
		 			+    '</div>'
		 			+   '<div class="col-sm-2">'
		 			+		'<a style="border:1px solid #cccccc;display:inline-block;"><img src="<%=basePath%>'+listData[i].picture+'" alt=""  style="width:171px;height:120px;margin:2px;"/></a>'
		 			+    '</div>'
		 			+    '<div class="col-sm-7">'
		 			+		'<ul class="newsul">'
		 			+   			'<li>标题:<span>'+listData[i].title+'</span></li>'
		 			+   			'<li>作者:<span>'+listData[i].editor+'</span></li>'
		 			+   			'<li>缩略:<span>'+text+'</span></li>'
		 			+   		'</ul>'
		 			+    '</div>'
		 			+    '<div class="col-sm-2">'
		 			+    	'<a href="#"><span class="label label-primary">查看详情</span></a>'
		 			+    '</div>'
		 			+  '</div>'
		 		    + '</div>	';	
		 		    $('.contenttext').append(content);
	        }
	        
	        /***
	         * 初始化LayiUI分页插件
	         */
	         layui.use(['layer', 'laypage'], function(){
	        	  var layer = layui.layer
	        	  ,laypage= layui.laypage;
	        	  
	        	  laypage.render({
	        		    elem: 'pageNum'
	        		    ,count: data.total
	        		    ,curr:data.pages
	        		    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
	        		    ,jump: function(obj,fix){
	        		      console.log(obj)
	        		      if(!fix){
	        		    	  getAjaxData(obj.curr);
	        		      }
	        		      
	        		    }
	        	  });
	        	 
	        	 
	      	 });
	    },
	    error:function(xhr,textStatus){
	        console.log('错误')
	    }
	})
}

function opDetails(id){
	console.log(id);
	location.href="<%=basePath%>/news/ShowNewsDetails?newsId="+id;
}
 
</script>



</body>
</html>