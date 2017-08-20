<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<h1>
		车辆管理<small>搜索车辆详细信息</small>
	</h1>
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-xs-7">
				<form
					action="${pageContext.request.contextPath}/vehicle/search.action">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="车牌号"
							name="vehInfo.vechNum"> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">Search</button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
	<table class="table">
		<thead>
			<td>车牌号</td>
			<td>购买日期</td>
			<td>车辆品牌</td>
			<td>车辆型号</td>
			<td>最大载客人数</td>
			<td>排气量</td>
			<td>发动机号</td>
			<td>编辑</td>
		</thead>
		<tbody>
			<c:forEach items="${vehlist }" var="veh">
				<tr>
					<th><a href="${pageContext.request.contextPath}/vehicle/edit.action?vehInfo.vechNum=${veh.vechNum }">${veh.vechNum }</a></th>
					<th>${veh.verchBuyDate }</th>
					<th>${veh.vechBrand }</th>
					<th>${veh.vechModel }</th>
					<th>${veh.vechMax }</th>
					<th>${veh.vechDisplay }</th>
					<th>${veh.verchEnge }</th>
					<th><a href="${pageContext.request.contextPath}/vehicle/edit.action?vehInfo.vechNum=${veh.vechNum }">编辑 </a>
  	  				&nbsp;<a href="${pageContext.request.contextPath}/vehicle/delete.action?vehInfo.vechNum=${veh.vechNum }">删除</a>
  	  				</th>
				</tr>
			</c:forEach>
	</table>
</body>
</html>