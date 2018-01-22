<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<base href="<%=basePath%>">
<jsp:include page="newshead.jsp">
	<jsp:param value="新闻-列表" name="title" />
</jsp:include>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="newsnav.jsp">
			<jsp:param value="news_index" name="fun" />
		</jsp:include>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<c:if test="${newslist ne null}">
					<c:forEach items="${newslist}" var="news" varStatus="vs">
						<div style="margin-top: 0px; width:1000px; height:120px;">
							<div
								style="height: 100px;width:100px; margin-top:10px;float:left;">
								<%-- <img src="${pageContext.request.contextPath}/res/images/img.jpg" style="height: 100%;width:100%" /> --%>
								<img src="<%=basePath%>news/pic.action?id=${news.id}" height=100
									width=100 />
							</div>
							<div
								style="width:880px;height:40px;margin-left:10px;float:right;">
								<h2 class="title">${news.title }</h2>
							</div>

							<div
								style="width:880px;;margin-left:10px;float:right;margin-top:10px;">
								<a class=""
									href="${pageContext.request.contextPath}/news/news_inf.action?detail=${news.id }&&type=${news.sort}">
									${news.title }</a>
							</div>

						</div>
						<hr>
					</c:forEach>
				</c:if>
			</div>
			<div style="width:200px;margin:0 auto;">
				<button type="submit" class="btn btn-default" style="width: 180px">
					<B> 点击刷新 </B>
				</button>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>