<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<h1>
		站点/线路<small>查询站点信息</small>
	</h1>
	<div class="container">
		<form action="${pageContext.request.contextPath }/station/search"
			method="post" class="col-md-12 col-xs-12 ">
			<div class="col-xs-12 col-md-8">
				<div class="input-group">
					<input type="text" name="info.stationName" class="form-control">
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit">Search</button>
					</span>
				</div>
			</div>
		</form>
		<div class="row">
			<br> <br>
			<s:actionmessage />
			<br>
		</div>
		<div class="row">
			<div class="col-md-8 col-xs-10 col-xs-offset-1">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>站点编号</th>
							<th>站点名称</th>
							<th>站点距离</th>

						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty sta}">
							<tr>
								<td>${sta.stationId }</td>
								<td>${sta.stationName}</td>
								<td>${sta.distance }</td>
							</tr>
						</c:if>

					</tbody>
				</table>
			</div>
		</div>
		<!--分页-->
		<div class="col-lg-10 col-md-offset-4">
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>
</body>
</html>