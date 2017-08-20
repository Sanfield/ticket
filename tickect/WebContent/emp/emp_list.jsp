<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>

	<h1>emp_list</h1>
	<table class="table table-striped table-bordered table-hover table-condensed">
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
			<c:forEach items="${empList}" var="emp">
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

					<td><a href="#">编辑 </a>&nbsp;<a href="${pageContext.request.contextPath }/emp/delete?info.empId=${emp.empId}">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<ul class="pagination">
		<c:if test="${pageNow>=2}">
			<li><a href="${pageContext.request.contextPath }/emp/list2?pageNow=${pageNow-1}">&laquo;</a></li>
		</c:if>
		<c:if test="${pageNow<2}">
			<li><a href="#">&laquo;</a></li>
		</c:if>
		<c:if test="${pageNow>=2}">
			<li><a href="${pageContext.request.contextPath }/emp/list2?pageNow=${pageNow-1}">${pageNow-1}</a></li>
		</c:if>
			<li><a href="#">${pageNow }</a></li>
		<c:if test="${pageNow<pageCount}">
			<li><a href="${pageContext.request.contextPath }/emp/list2?pageNow=${pageNow+1}">${pageNow+1}</a></li>
		</c:if>
		<c:if test="${pageNow<pageCount}">
			<li><a href="${pageContext.request.contextPath }/emp/list2?pageNow=${pageNow+1}">&raquo;</a></li>
		</c:if>
		<c:if test="${pageNow>=pageCount}">
			<li><a href="#">&raquo;</a></li>
		</c:if>
	</ul>
</body>
</html>