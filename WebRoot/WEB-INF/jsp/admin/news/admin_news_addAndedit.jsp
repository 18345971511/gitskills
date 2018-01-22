<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<base href="<%=basePath%>">
<script type="text/javascript">
	var basePath = "<%=path%>"
	window.UEDITOR_HOME_URL = "<%=path%>/ueditor/"
</script>
<title>编辑器完整版实例</title>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<link rel="stylesheet" type="text/css" href="ueditor/themes/iframe.css" />

<jsp:include page="../adminhead.jsp">
	<jsp:param value="新闻信息" name="title" />
</jsp:include>
</head>
<script type="text/javascript">

 
</script>
<body>
	<div class="container-fluid">
		<jsp:include page="../../admin/adminnav.jsp">
			<jsp:param value="newslist" name="fun" />
		</jsp:include>
	</div>
	<div class="container-fluid" style="margin-top: 120px">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-warning">
					<div class="panel-heading">
						<h3 class="panel-title">新闻信息</h3>
					</div>
					<div class="panel-body">
						<c:if test="${newsinf.id==null }">
							<form method="post"
								action="<%=basePath%>/admin/news/add_do.action"
								enctype="multipart/form-data">
						</c:if>
						<c:if test="${newsinf.id!=null }">
							<form method="post"
								action="<%=basePath%>/admin/news/edit_do.action"
								enctype="multipart/form-data">
						</c:if>
						<input name="id" type="hidden" value="${newsinf.id}">
						<div style="width:850px;">
							<div style="width: 150px; float:left;">
								<div class="input-group">
									<span class="input-group-addon">转载</span> <input type="text"
										maxlength="50" name="is_copy" value="" class="form-control"
										placeholder="请输入是否转载" required>
								</div>
							</div>
							<div style="width: 650px; margin-left:10px;">
								<div class="input-group">
									<span class="input-group-addon">标题</span> <input type="text"
										maxlength="50" name="title" value="${ newsinf.title}"
										class="form-control" placeholder="请输入新闻标题" required>
								</div>
							</div>
							<div style="width: 650px; margin-left:10px;">
								<div class="input-group">
									<span class="input-group-addon">请上传封面图片</span> <input
										type="file" name="pic" value="${ newsinf.title}" />
								</div>
							</div>
						</div>
						<br />

						<div style="width: 400px; margin-left: 230px; display:none;">
							<div class="input-group" style="margin-top: 30px; ">
								<span class="input-group-addon">内容</span>
								<textarea maxlength="500" rows="10" id="content" name="contect1"
									class="form-control" placeholder="请输入内容">${newsinf.contect }</textarea>
							</div>
						</div>

						<div id="editor" name="contect"
							style="width: 850px; height: 800px; margin: 0 auto;  display:block;">

							<script type="text/javascript" charset="utf-8">
								var editor = UE.getEditor('editor');
								editor.ready(function() {
									editor.setContent(document.getElementById('content').value);
								})
							</script>
						</div>
						<br />
						<hr />
						<div
							style="color:#daa520; font-size:20px; width:200px; margin-left:10px;margin-bottom:10px;">新闻标签</div>
						<div style="width:850px;margin:0 auto;">
							<div style="width: 300px;margin:0 auto;">
								<div class="input-group" style="">
									<span class="input-group-addon">分类</span> <select
										class="form-control" name="sort">
										<c:if test="${sortlist ne null}">
											<c:forEach items="${sortlist}" var="sort" varStatus="vs">
												<c:if test="${sort.id==1 }">
													<option value="${sort.id}" selected="selected">${sort.sortname}</option>
												</c:if>
												<c:if test="${sort.id!=1 }">
													<option value="${sort.id}">${sort.sortname}</option>
												</c:if>
											</c:forEach>
										</c:if>
									</select>
								</div>
							</div>
							<br />

							<div style="width: 300px; margin:0 auto;">
								<div class="input-group">
									<span class="input-group-addon">关键词</span> <input type="text"
										maxlength="50" name="key_words" value="" class="form-control"
										placeholder="至多输入5个并用/隔开">
								</div>
							</div>
							<br />
							<div style="width: 300px; margin:0 auto;">
								<div class="input-group" style="">
									<span class="input-group-addon">来源</span> <input type="text"
										maxlength="50" name="fromto" value="${newsinf.fromto }"
										class="form-control" placeholder="请输入新闻来源">
								</div>
							</div>
						</div>
						<div style="clear:both;"></div>
						<hr />
						<div style="width:850px;height:150px;">
							<div
								style="color:#daa520; font-size:20px; width:200px; margin-left:10px;margin-bottom:10px;">新闻特征</div>

							<div class="input-group"
								style="margin:0 auto;margin-bottom:10px;">
								<span style="width:50px;float:left;">新鲜度 </span> <select
									class="form-control" name="feature"
									style="width:200px; float:right;">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>


							<div class="input-group"
								style=" margin:0 auto;margin-bottom:10px;">
								<span style="width:50px;float:left;">八卦度 </span> <select
									class="form-control" name="feature"
									style="width:200px; float:right;">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>

							<div class="input-group"
								style="margin:0 auto;margin-bottom:10px;">
								<span style="width:50px;float:left;">干货度 </span> <select
									class="form-control" name="feature"
									style="width:200px; float:right;">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>


						</div>
						<hr />

						<div style="width:850px;height:150px;">
							<div
								style="color:#daa520; font-size:20px; width:200px; margin-left:10px;margin-bottom:10px;">新闻概要（必填）</div>

							<div style="width: 400px; margin-left: 230px;">
								<div class="input-group" style="margin-top: 30px; ">
									<span class="input-group-addon">内容</span>
									<textarea maxlength="100" rows="5" id="content"
										name="outline" class="form-control" placeholder="请输入内容">${newsinf.outline}</textarea>
								</div>
							</div>


						</div>
						<hr />

						<button class="btn btn-success"
							style="width: 400px; margin-top: 30px; margin-left: 230px"
							type="submit">提交</button>
						</form>
						<button class="btn btn-default"
							style="width: 400px; margin-top: 20px; margin-left: 230px"
							onClick="javascript :history.back(-1);">返回</button>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>