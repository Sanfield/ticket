<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<h1>
		员工管理<small>根据姓名和角色查询员工信息</small>
	</h1>
	<div class="container">
		<form action="${pageContext.request.contextPath }/emp/search"
			method="post" class="col-md-12 col-xs-12 ">
			<div class="col-xs-12 col-md-8">
				<div class="input-group">
					<input type="text" name="info.realName" class="form-control">
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit">Search</button>
					</span>
				</div>
			</div>
			<div class="col-md-6 col-xs-12">
				<div class="form-group">
					<label for="role" class="col-md-5 col-xs-4  control-label">
						<span class="glyphicon glyphicon-hand-right"></span>角色:
					</label>
					<div class="col-md-7 col-xs-8 input-group">
						<input type="radio" name="info.role" id="role" value="0">管理员
						<input type="radio" name="info.role" id="role" value="1">售票员
						<input type="radio" name="info.role" id="role" value="2">站务
						<input type="radio" name="info.role" id="role" value="3">司机
						<input type="radio" name="info.role" id="role" value="4">行包员
					</div>
				</div>
			</div>
		</form>
		<div class="row">
			<div class="col-xs-12">
				<table
					class="table table-striped table-bordered table-hover table-condensed">
					<thead>
						<tr>
							<th>编号</th>
							<th>帐号</th>
							<th>密码</th>
							<th>姓名</th>
							<th>证件号码</th>
							<th>电话</th>
							<th>职务</th>
							<th>角色</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty empList }">
							<c:forEach items="${empList }" var="emp">
								<tr>
									<td>${emp.empId }</td>
									<td>${emp.account }</td>
									<td>${emp.pwd }</td>
									<td>${emp.realName }</td>
									<td>${emp.certificateNumber }</td>
									<td>${emp.telephone }</td>
									<td>${emp.duty }</td>
									<c:if test="${emp.role==0}">
										<td>管理员</td>
									</c:if>
									<c:if test="${emp.role==1}">
										<td>售票员</td>
									</c:if>
									<c:if test="${emp.role==2}">
										<td>站务</td>
									</c:if>
									<c:if test="${emp.role==3}">
										<td>司机</td>
									</c:if>
									<c:if test="${emp.role==4}">
										<td>行包员</td>
									</c:if>

									<td><a href="#">编辑 </a>&nbsp;<a href="#">删除</a></td>
								</tr>
							</c:forEach>
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