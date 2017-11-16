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
<title>快速下单</title>
</head>
<body>
	<!-- team -->
	<div class="team" id="team">
		<div class="container">
		<div class="heading">
			<h3>整合运输方案</h3>
		</div>
			<div class="wthree_team_grids">
			
				<c:forEach var="item" items="${requestScope.programmeList}">
					<div class="col-md-3 wthree_team_grid">
						<div class="hovereffect">
							<img src="<%=basePath%>${item.picture}" alt=" " class="img-responsive" />
							<div class="overlay">
								<!-- <h6>空运</h6> -->
								<div class="rotate">
									<p class="group1">
										<a href="#">
											<i class="fa fa-weibo"></i>
										</a>
										<a href="#">
											<i class="fa fa-tencent-weibo"></i>
										</a>
									</p>
										<hr>
										<hr>
									<p class="group2">
										<a href="#">
											<i class="fa fa-instagram"></i>
										</a>
										<a href="#">
											<i class="fa fa-dribbble"></i>
										</a>
									</p>
								</div>
							</div>
						</div>
						<h4>${item.fence}</h4>
						<p>${item.title}</p>
					</div>
				</c:forEach>
				
				<%-- <div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team2.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>空运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>精准空运服务</h4>
					<p>VIP服务优先排仓</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team3.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>国内汽运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>限时汽运</h4>
					<p>速运服务·汽运价格</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team4.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>铁路</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>快捷铁运</h4>
					<p>比汽运经济·比海运更快</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team1.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>海运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>精明经济海运</h4>
					<p>船东底价稳定资源</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team1.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>海运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>联合跨境快递</h4>
					<p>整合各家优势-提供魔术方案</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team1.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>海运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>整合多联运输</h4>
					<p>陆海空无缝对接综合解决方案</p>
				</div>
				<div class="col-md-3 wthree_team_grid">
					<div class="hovereffect">
						<img src="<%=basePath%>/static/calais/website/commonality/images/team1.jpg" alt=" " class="img-responsive" />
						<div class="overlay">
							<!-- <h6>海运</h6> -->
							<div class="rotate">
								<p class="group1">
									<a href="#">
										<i class="fa fa-twitter"></i>
									</a>
									<a href="#">
										<i class="fa fa-facebook"></i>
									</a>
								</p>
									<hr>
									<hr>
								<p class="group2">
									<a href="#">
										<i class="fa fa-instagram"></i>
									</a>
									<a href="#">
										<i class="fa fa-dribbble"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
					<h4>联合云仓储</h4>
					<p>自建并整合优势仓库资源</p>
				</div> --%>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //team -->
</body>
</html>