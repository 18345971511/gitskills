<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>News Times a Entertainment Category Flat Bootstrap
	Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="News Times Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/res/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/res/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script
	src="${pageContext.request.contextPath}/res/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<div class="container-fluid">
		<jsp:include page="newsnav1.jsp" />
	</div>
	<!-- banner -->
	<div class="banner">
		<div class="banner-info">
			<div class="container">
				<nav class="navbar navbar-default" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="logo">
							<a class="navbar-brand" href="index.jsp"> <!-- <span>HIT</span> -->
								<span>HIT</span> 哈尔滨工业大学校园新闻网
							</a>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<c:if test="${username==null}">
							<ul class="nav navbar-nav cl-effect-18" id="cl-effect-18">
								<li class="act"><a id="modal-181250"
									href="#modal-container-181250" role="button" class="btn"
									data-toggle="modal">登录</a></li>
								<li><a id="modal-181251" href="#modal-container-181251"
									role="button" class="btn" data-toggle="modal">注册</a></li>
							</ul>
						</c:if>
						<c:if test="${username!=null}">
							<ul class="nav navbar-nav navbar-right"
								style="margin-right: 15px">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">${username}<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li <c:if test="${param.type==null}">class="active" </c:if>><a
											href="${pageContext.request.contextPath}/news/news_index.action">首页</a></li>
										<li
											class="<%="inf".equals(request.getParameter("fun")) ? "active" : ""%>"><a
											href="${pageContext.request.contextPath}/news/user_inf.action">个人中心</a></li>
										<li
											class="<%="collect".equals(request.getParameter("fun")) ? "active" : ""%>"><a
											href="${pageContext.request.contextPath}/news/user_collect.action?userid=${userid}">我的收藏</a></li>
										<li
											class="<%="comment".equals(request.getParameter("fun")) ? "active" : ""%>"><a
											href="${pageContext.request.contextPath}/news/user_comment.action?userid=${userid}">我的评论</a></li>
										<li class="divider"></li>
										<li><a
											href="${pageContext.request.contextPath}/news/userSignout.action">退出登录</a>
										</li>
									</ul></li>
							</ul>
						</c:if>
					</div>
					<!-- /.navbar-collapse -->

				</nav>
				<!--banner-Slider-->
				<script
					src="${pageContext.request.contextPath}/res/js/responsiveslides.min.js"></script>
				<script>
					// You can also use "$(window).load(function() {"
					$(function() {
						// Slideshow 4
						$("#slider3").responsiveSlides({
							auto : true,
							pager : true,
							nav : true,
							speed : 500,
							namespace : "callbacks",
							before : function() {
								$('.events').append("<li>before event fired.</li>");
							},
							after : function() {
								$('.events').append("<li>after event fired.</li>");
							}
						});
				
					});
				</script>
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="banner-info-slider">
								<ul>
									<li><a href="single.html">politics</a></li>
									<li>25 Jan 2018</li>
								</ul>
								<h1>哈尔滨工业大学新闻网</h1>
								<p>
									Ebola is a viral illness of which the initial symptoms can
									include a sudden fever, intense weakness, muscle pain and a
									sore throat.<span>By <i>ullamcoman</i> and <i>Micheal
											smithjos.</i></span>
								</p>
								<div class="more">
									<a href="single.html" class="type-1"> <span> Read
											More </span> <span> Read More </span>
									</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-info-slider">
								<ul>
									<li><a href="single.html">Business</a></li>
									<li>25 Jan 2018</li>
								</ul>
								<h1>magna perspiciatis unde omnis iste natus errors</h1>
								<p>
									Dolore ipsum dolor sit amet, consectetur adipiscing elit, sed
									do eiusmod tempor incididunt ut labore et dolore magna aliqua.<span>By
										<i>laborisman</i> and <i>Adom smithjos.</i>
									</span>
								</p>
								<div class="more">
									<a href="single.html" class="type-1"> <span> Read
											More </span> <span> Read More </span>
									</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-info-slider">
								<ul>
									<li><a href="single.html">sports</a></li>
									<li>25 Jan 2018</li>
								</ul>
								<h1>Sed ut perspiciatis unde omnis iste natus errors</h1>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.<span>By
										<i>ullamcoman</i> and <i>Micheal smithjos.</i>
									</span>
								</p>
								<div class="more">
									<a href="single.html" class="type-1"> <span> Read
											More </span> <span> Read More </span>
									</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-info-slider">
								<ul>
									<li><a href="single.html">general</a></li>
									<li>25 Jan 2018</li>
								</ul>
								<h1>Sed ut perspiciatis unde omnis iste natus errors</h1>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.<span>By
										<i>ullamcoman</i> and <i>Micheal smithjos.</i>
									</span>
								</p>
								<div class="more">
									<a href="single.html" class="type-1"> <span> Read
											More </span> <span> Read More </span>
									</a>
								</div>
							</div>
						</li>
						<li>
							<div class="banner-info-slider">
								<ul>
									<li><a href="single.html">international</a></li>
									<li>25 Jan 2018</li>
								</ul>
								<h1>Sed ut perspiciatis unde omnis iste natus errors</h1>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.<span>By
										<i>ullamcoman</i> and <i>Micheal smithjos.</i>
									</span>
								</p>
								<div class="more">
									<a href="single.html" class="type-1"> <span> Read
											More </span> <span> Read More </span>
									</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a
										href="<%=basePath%>news/news_list.action?type=1&&page=1">体育</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>忘了被1000米支配的恐惧了吗？</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>120
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>12,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt1">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="<%=basePath%>news/news_list.action?type=2&&page=1" class="sport">娱乐</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>学习累了怎么办，那就娱乐一下好了</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>200
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>13,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt2">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="plane">金融</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>穷逼请走开！走开！还看！说的就是你！</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>180
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt3">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="general">军事</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>加强军事建设，早日成为军事强国！</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>150
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>15,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="banner-bottom-grids">
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt4">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="pol">时尚</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>是谁说程序员不懂时尚？？？</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>450
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>12,965
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt5">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="world">教育</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>我们要好好学习，天天向上！</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>212
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt6">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="national">国际</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>关注国际时事，掌握最新动态！</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>261
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>15,536
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 banner-bottom-grid-left">
					<div class="br-bm-gd-lt br-bm-gd-lt7">
						<div class="overlay">
							<div class="arrow-left"></div>
							<div class="rectangle"></div>
						</div>
						<div class="health-pos">
							<div class="health">
								<ul>
									<li><a href="#" class="business">科技</a></li>
									<li>31 Jan 2018</li>
								</ul>
							</div>
							<h3>更多AI资讯全在这里！点我！点我！</h3>
							<div class="dummy">
								<p>哈尔滨工业大学欢迎您！</p>
							</div>
							<div class="com-heart">
								<ul>
									<li><a href="#"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span>297
											Comments</a></li>
									<li><a href="#"><span
											class="glyphicon glyphicon-heart" aria-hidden="true"></span>9,996
											Likes</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="move-text">
				<div class="breaking_news">
					<h2>Breaking News</h2>
				</div>
				<div class="marquee">
					<div class="marquee1">
						<a class="breaking" href="single.html">A 5-year-old boy who
							recently returned to the U.S from Ebola-stricken West Africa is
							under observation after experiencing a fever.</a>
					</div>
					<div class="marquee2">
						<a class="breaking" href="single.html">The surprisingly
							successful president of the Philippines and peacemaking in the
							Philippines: Shaking it all up.</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/res/js/jquery.marquee.js"></script>
				<script>
					$('.marquee').marquee({
						pauseOnHover : true
					});
					//@ sourceURL=pen.js
				</script>
			</div>
			<!-- video-grids -->
			<div class="video-grids">
				<div class="col-md-8 video-grids-left">
					<div class="video-grids-left1">
						<img src="${pageContext.request.contextPath}/res/images/9.jpg"
							alt=" " class="img-responsive" /> <a
							class="play-icon popup-with-zoom-anim" href="#small-dialog">
							<span> </span>
						</a>
						<div class="video-grid-pos">
							<h3>
								<span>Hurricanes</span> produce storm surges, tornadoes, and
								often the most deadly of all -inland flooding.
							</h3>
							<ul>
								<li>9:32 <label>|</label></li>
								<li><i>Adom Smith</i> <label>|</label></li>
								<li><span>Politics</span></li>
							</ul>
						</div>

						<!-- pop-up-box -->
						<script type="text/javascript"
							src="${pageContext.request.contextPath}/res/js/modernizr.custom.min.js"></script>
						<link 
						    href="${pageContext.request.contextPath}/res/css/popuo-box.css"
							rel="stylesheet" type="text/css" media="all" />
						<script
							src="${pageContext.request.contextPath}/res/js/jquery.magnific-popup.js"
							type="text/javascript"></script>
						<!--//pop-up-box -->
						<div id="small-dialog" class="mfp-hide">
						 <!-- <iframe src=""
								width="500" height="281" frameborder="0" webkitallowfullscreen="true"
								mozallowfullscreen="true" allowfullscreen="true"></iframe>  -->
	                     <p><embed src="${pageContext.request.contextPath}/res/vadio/hit.mp4" loop=false autostart =false></p>
						</div>

						<script>
							$(document).ready(function() {
								$('.popup-with-zoom-anim').magnificPopup({
									type : 'inline',
									fixedContentPos : false,
									fixedBgPos : true,
									overflowY : 'auto',
									closeBtnInside : true,
									preloader : false,
									midClick : true,
									removalDelay : 300,
									mainClass : 'my-mfp-zoom-in'
								});
						
							});
						</script>
					</div>
					<div class="video-grids-left2">
						<div class="course_demo1">
							<ul id="flexiselDemo1">
								<li>
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/res/images/10.jpg"
											alt=" " class="img-responsive" /> <a
											class="play-icon popup-with-zoom-anim" href="#small-dialog">
											<i> </i>
										</a>
										<div id="small-dialog" class="mfp-hide">
											<iframe src="https://player.vimeo.com/video/145787219"
												width="500" height="281" frameborder="0"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div>
										<div class="floods-text">
											<h3>
												The fed and inequality <span>Politics <label>|</label>
													<i>Adom Smith</i></span>
											</h3>
											<p>5:56</p>
										</div>
									</div>
								</li>
								<li>
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/res/images/11.jpg"
											alt=" " class="img-responsive" /> <a
											class="play-icon popup-with-zoom-anim" href="#small-dialog">
											<i> </i>
										</a>
										<div id="small-dialog" class="mfp-hide">
											<iframe src="https://player.vimeo.com/video/145787219"
												width="500" height="281" frameborder="0"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div>
										<div class="floods-text">
											<h3>
												The fastest insect in the world <span>Politics <label>|</label>
													<i>Adom Smith</i>
												</span>
											</h3>
											<p>5:56</p>
										</div>
									</div>
								</li>
								<li>
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/res/images/12.jpg"
											alt=" " class="img-responsive" /> <a
											class="play-icon popup-with-zoom-anim" href="#small-dialog">
											<i> </i>
										</a>
										<div id="small-dialog" class="mfp-hide">
											<iframe src=""
												width="500" height="281" frameborder="0"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div>
										<div class="floods-text">
											<h3>
												Billionaires versus Millionaires<span>Politics <label>|</label>
													<i>Adom Smith</i></span>
											</h3>
											<p>5:56</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- pop-up-box -->
						<script type="text/javascript"
							src="${pageContext.request.contextPath}/res/js/modernizr.custom.min.js"></script>
						<link
							href="${pageContext.request.contextPath}/res/css/popuo-box.css"
							rel="stylesheet" type="text/css" media="all" />
						<script
							src="${pageContext.request.contextPath}/res/js/jquery.magnific-popup.js"
							type="text/javascript"></script>
						<!--//pop-up-box -->
						<script>
							$(document).ready(function() {
								$('.popup-with-zoom-anim').magnificPopup({
									type : 'inline',
									fixedContentPos : false,
									fixedBgPos : true,
									overflowY : 'auto',
									closeBtnInside : true,
									preloader : false,
									midClick : true,
									removalDelay : 300,
									mainClass : 'my-mfp-zoom-in'
								});
						
							});
						</script>
						<!-- requried-jsfiles-for owl -->
						<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems : 3,
									animationSpeed : 1000,
									autoPlay : true,
									autoPlaySpeed : 3000,
									pauseOnHover : true,
									enableResponsiveBreakpoints : true,
									responsiveBreakpoints : {
										portrait : {
											changePoint : 480,
											visibleItems : 1
										},
										landscape : {
											changePoint : 640,
											visibleItems : 2
										},
										tablet : {
											changePoint : 768,
											visibleItems : 3
										}
									}
								});
						
							});
						</script>
						<script type="text/javascript"
							src="${pageContext.request.contextPath}/res/js/jquery.flexisel.js"></script>
					</div>
				</div>
				<div class="col-md-4 video-grids-right">
					<div class="sap_tabs">
						<div id="horizontalTab"
							style="display: block; width: 100%; margin: 0px;">
							<ul class="resp-tabs-list">
								<li class="resp-tab-item grid1" aria-controls="tab_item-0"
									role="tab"><span>向您推荐</span></li>
								<li class="resp-tab-item grid2" aria-controls="tab_item-1"
									role="tab"><span>最多评论</span></li>
								<div class="clear"></div>
							</ul>
							<div class="resp-tabs-container">
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/10.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#">Politics</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/11.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="green">international</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/12.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange">general</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/10.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange1">business</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/12.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange2">world</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/12.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#">Politics</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/11.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange1">business</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/10.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange2">world</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/12.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="green">international</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="facts">
										<div class="tab_list">
											<img
												src="${pageContext.request.contextPath}/res/images/11.jpg"
												alt=" " class="img-responsive" />
										</div>
										<div class="tab_list1">
											<ul>
												<li><a href="#" class="orange">general</a> <label>|</label></li>
												<li>31.12.2018</li>
											</ul>
											<p>
												<a href="#">Nam libero tempore, cum soluta nobis.</a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<script
								src="${pageContext.request.contextPath}/res/js/easyResponsiveTabs.js"
								type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function() {
									$('#horizontalTab').easyResponsiveTabs({
										type : 'default', //Types: default, vertical, accordion           
										width : 'auto', //auto or any width like 600px
										fit : true // 100% fit in a container
									});
								});
							</script>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- //video-grids -->
			<!-- video-bottom-grids -->
			<div class="video-bottom-grids">
				<div class="video-bottom-grids1">
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before">
								<img src="${pageContext.request.contextPath}/res/images/13.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>apple pay runs afoul of mcx, a group with a rival
										product.</p>
								</div>
							</div>
							<ul>
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more">
								<a href="<%=basePath%>news/news_list.action?type=1&&page=1">阅读更多体育新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before1">
								<img src="${pageContext.request.contextPath}/res/images/14.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>Facebook warns spending to rise.</p>
								</div>
							</div>
							<ul class="list">
								<c:if test="${sort2 ne null}">
									<c:forEach items="${sort2}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res">
								<a href="<%=basePath%>news/news_list.action?type=2&&page=1">阅读更多娱乐新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before2">
								<img src="${pageContext.request.contextPath}/res/images/15.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>the moment the us rocket exploded.</p>
								</div>
							</div>
							<ul class="list1">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res1">
								<a href="<%=basePath%>news/news_list.action?type=3&&page=1">阅读更多教育新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before3">
								<img src="${pageContext.request.contextPath}/res/images/16.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>making friends boardroom edition.</p>
								</div>
							</div>
							<ul class="list2">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res2">
								<a href="<%=basePath%>news/news_list.action?type=4&&page=1">阅读更多金融新闻</a>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="video-bottom-grids1">
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before4">
								<img src="${pageContext.request.contextPath}/res/images/10.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>the ultimate limits-info graphic.</p>
								</div>
							</div>
							<ul class="list2">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res3">
								<a href="<%=basePath%>news/news_list.action?type=5&&page=1">阅读更多军事新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before5">
								<img src="${pageContext.request.contextPath}/res/images/11.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>a cure for women's longing.</p>
								</div>
							</div>
							<ul class="list4">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res4">
								<a href="<%=basePath%>news/news_list.action?type=6&&page=1">阅读更多时尚新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before6">
								<img src="${pageContext.request.contextPath}/res/images/12.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>the moment the us rocket exploded.</p>
								</div>
							</div>
							<ul class="list5">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res5">
								<a href="<%=basePath%>news/news_list.action?type=7&&page=1">阅读更多国际新闻</a>
							</div>
						</div>
					</div>
					<div class="col-md-3 video-bottom-grid">
						<div class="video-bottom-grid1">
							<div class="video-bottom-grid1-before before7">
								<img src="${pageContext.request.contextPath}/res/images/17.jpg"
									alt=" " class="img-responsive" />
								<div class="video-bottom-grid1-pos">
									<p>evolution: why do your eyes face forwards.</p>
								</div>
							</div>
							<ul class="list6">
								<c:if test="${sort1 ne null}">
									<c:forEach items="${sort1}" var="news" varStatus="vs">
										<li><a
											href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a></li>
									</c:forEach>
								</c:if>
							</ul>
							<div class="read-more res6">
								<a href="<%=basePath%>news/news_list.action?type=8&&page=1">阅读更多科技新闻</a>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //video-bottom-grids -->
			<!-- news-and-events -->
			<div class="news">
				<div class="news-grids">
					<div class="col-md-8 news-grid-left">
						<h3>最新 &热点 事件</h3>
						<ul>
							<c:if test="${hotNews ne null}">
								<c:forEach items="${hotNews}" var="news" varStatus="vs">
									<li>
										<div class="news-grid-left1">
											<img
												src="<%=basePath%>news/pic.action?id=${news.id}"
												alt=" " class="img-responsive" />
										</div>
										<div class="news-grid-right1">
											<h4>
												<a href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
												${news.title}</a>
											</h4>
											<h5>
												By ${news.fromuser} <label>|</label> <i>2018.01.31</i>
											</h5>
											<c:if test="${news.outline ne null}">
											<p>${news.outline}</p>
											</c:if>
										</div>
										<div class="clearfix"></div>
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
					<div class="col-md-4 news-grid-right">
						<div class="news-grid-rght1">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a class="high"
									href="#home" aria-controls="home" role="tab" data-toggle="tab">weather
										in London</a></li>
								<li role="presentation"><a href="#profile"
									aria-controls="profile" role="tab" data-toggle="tab">edit
										location</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active london" id="home">
									<ul>
										<li>
											<h4>Wednesday</h4> <span></span>
											<p>
												21<sup>Â°</sup>
											</p>
										</li>
										<li>
											<h4>Thursday</h4> <span class="moon"></span>
											<p>
												25<sup>Â°</sup>
											</p>
										</li>
										<li>
											<h4>Friday</h4> <span class="sun"></span>
											<p>
												31<sup>Â°</sup>
											</p>
										</li>
										<div class="clearfix"></div>
									</ul>
								</div>
								<div role="tabpanel" class="tab-pane" id="profile">
									<iframe
										src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26359652.109742895!2d-113.72446020222534!3d36.24602872499641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1450786850582"
										frameborder="0" style="border:0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
						<div class="news-grid-rght2">
							<h3>subscribe to our newsletter</h3>
							<p>Get the latest news and updates by signing up to our daily
								newsletter.We won't sell your email or spam you !</p>
							<form>
								<input type="text" value="enter your Email address"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'enter your Email address';}">
								<input type="submit" value="Submit">
							</form>
						</div>
						<div class="news-grid-rght3">
							<img src="${pageContext.request.contextPath}/res/images/18.jpg"
								alt=" " class="img-responsive" />
							<div class="story">
								<p>story of the week</p>
								<h3>
									<a href="single.html">US hails west Africa Ebola progress</a>
								</h3>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //news-and-events -->
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- footer -->
	<div class="footer-top">
		<div class="container">
			<p>
				at least 150 missing and there dead in landslide after Jansoon rains
				in central Sri Lanka, officials say <a href="#">http//example.com</a>
			</p>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-4 footer-grid-left">
					<h3>twitter feed</h3>
					<ul>
						<li><a href="#">the moment an unlimited #antares rocket
								exploded seconds after launch <i>http//example.com</i>
						</a><span>15 minutes ago</span></li>
						<li><a href="mailto:info@example.com" class="cols">@NASA</a>
							& <a href="mailto:info@example.com" class="cols"> @orbital
								science</a> <a href="#">gathering data on failure #antares
								rocket bound for international space</a><span>45 minutes ago</span></li>
						<li><a href="#">ex-cabinet minister chris huhne loses
								legal challenge over $77,750 court costs incurred in speeding
								points</a><span>1 day ago</span></li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid-left">
					<h3>contact form</h3>
					<form>
						<input type="text" value="enter your full name"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'enter your full name';}"
							required=""> <input type="email"
							value="enter your email address" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'enter your email address';}"
							required="">
						<textarea onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Message...';}"
							required="">Message...</textarea>
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="col-md-4 footer-grid-left">
					<h3>about us</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
						eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
						enim ad minim veniam, quis nostrud exercitation ullamco laboris. <span>But
							I must explain to you how all this mistaken idea of denouncing
							pleasure and praising pain was born and I will give you a
							complete account of the system, and expound the actual teachings
							of the great explorer.</span> <i>- The Entire TLG Team</i>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-bottom">
				<div class="footer-bottom-left">
					<p>
						&copy 2016 News Times. All rights reserved | Template by <a
							href="http://w3layouts.com/">W3layouts.</a>
					</p>
				</div>
				<div class="footer-bottom-right">
					<ul>
						<li><a href="#" class="icon-button twitter"><i
								class="icon-twitter"></i><span></span></a></li>
						<li><a href="#" class="icon-button google"><i
								class="icon-google"></i><span></span></a></li>
						<li><a href="#" class="icon-button v"><i class="icon-v"></i><span></span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- for bootstrap working -->
	<script src="${pageContext.request.contextPath}/res/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script>
		$(function() {
			$("[data-toggle='tooltip']").tooltip();
		});
	</script>
</body>
</html>