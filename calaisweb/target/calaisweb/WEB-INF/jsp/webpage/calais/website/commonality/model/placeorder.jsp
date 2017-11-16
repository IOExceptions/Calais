<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=basePath%>/static/calais/website/commonality/css/flexslider.css"
	type="text/css" media="all" />
<!-- for testimonials -->

<!-- css files -->
<link rel="stylesheet"
	href="<%=basePath%>/static/calais/website/commonality/css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet"
	href="<%=basePath%>/static/calais/website/commonality/css/style.css"
	type="text/css" media="all" />
<!-- Style-CSS -->
<link rel="stylesheet"
	href="<%=basePath%>/static/calais/website/commonality/css/font-awesome.css">
<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- web-fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<!-- //web-fonts -->

<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/public/layui/layui.all.js"></script>
<title>快速下单</title>
</head>
<body>
	<div class="banner-form-agileinfo">
		<h5>
			体验 <span>Calais服务</span>?
		</h5>
		<p>快速下单,将于1小时内上门服务</p>
		<form action="#" method="post" class="layui-form">
			<input type="text" class="email" name="name"autocomplete="off" lay-verify="name" > 
			<input type="text" class="tel" name="phone" autocomplete="off" lay-verify="phone" >
			<select class="form-control option-w3ls"  autocomplete="off" name="cargo_type"  lay-verify="cargo_type" >
				<option value="0">货件类型</option>
				<option value="重货">重货</option>
				<option value="泡货">泡货</option>
				<option value="超限货物">超限货物</option>
				<option value="文件">文件</option>
			</select> 
			<select class="form-control option-w3ls"  autocomplete="off" name="carriage" lay-verify="carriage" >
				<option value="0">运输方式</option>
				<option value="国内空运">国内空运</option>
				<option value="国内快捷汽运">国内快捷汽运</option>
				<option value="铁路快运">铁路快运</option>
				<option value="国际空运">国际空运</option>
				<option value="国际海运">国际海运</option>
				<option value="跨境快捷汽运">跨境快捷汽运</option>
				<option value="国际快递">国际快递</option>
			</select> 
			<select class="form-control option-w3ls" autocomplete="off" name="weight" lay-verify="weight" >
				<option value="0">货重</option>
				<option value="0KG-10KG">0KG-10KG</option>
				<option value="10KG-20KG">10KG-20KG</option>
				<option value="20KG-40KG">20KG-40KG</option>
				<option value="40KG-100KG">40KG-100KG</option>
				<option value="100以上">100以上</option>
			</select> 
			<input type="button" class="layui-btn" lay-submit="" lay-filter="demo1" value="快速下单">
		</form>
	</div>
	<script type="text/javascript">
								
								layui.use(['form', 'layedit', 'laydate'], function(){  
									  var form = layui.form
									  ,layer = layui.layer  
									  ,layedit = layui.layedit  
									  ,laydate = layui.laydate;  
									   
									  //自定义验证规则  
									  form.verify({  
									        name: function(value){  
									          if(value.length < 2){  
									            return '请输入至少2位的用户名！';  
									          }  
									        },cargo_type: function(value){  
										          if(value == '0'){  
											            return '请选择货物类型！';  
											      }  
											 }  
									        , carriage: function(value){  
										          if(value == '0'){  
										            return '请选择运输方式！';  
										          }  
										        } 
									        , weight: function(value){  
										          if(value == '0'){  
										            return '请选择货物重量！';  
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
	function postAjax(data){
			$.ajax({
				 url:'<%=basePath%>/order/postOrder',
				type : 'POST', //GET
				data : {
					name : data.name,
					phone : data.phone,
					cargo_type : data.cargo_type,
					carriage: data.carriage,
					weight: data.weight
				},
				async : true, //或false,是否异步
			/* 	timeout : 5000, //超时时间 */
				dataType : 'json',
				success : function(data, textStatus, jqXHR) {
					if (data.code == '0') {
						layer.msg("提交成功，请耐心等待回复！");
					} else {
						layer.msg("系统出错,请联系管理员！");
					}

				},
				error : function(xhr, textStatus) {
					console.log('错误')
				}
			})
		}
	</script>
</body>
</html>