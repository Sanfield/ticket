<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<h1>车辆管理<small>车辆列表</small></h1>
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
  <tr><th><a href="${pageContext.request.contextPath}/vehicle/edit.action?vehInfo.vechNum=${veh.vechNum }">${veh.vechNum }</a></th>
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
 </tbody>
</table>
<div class="col-lg-10 col-md-offset-4">
<ul class="pagination">
<c:if test="${pageNum==1 }">
<li><a href="#">&laquo;</a></li></c:if>
<c:if test="${pageNum!=1 }">
<li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum }&dir=pre">&laquo;</a></li>
</c:if>
<c:if test="${pageNum==1 }">
  <li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum }">${pageNum}</a></li>
    <li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum+1}">${pageNum+1}</a></li>
  <li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum+2}">${pageNum+2}</a></li>
</c:if>
<c:if test="${pageNum!=1 }">
<li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum -1}">${pageNum-1}</a></li>
  <li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum}">${pageNum}</a></li>
  <li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum+1}">${pageNum+1}</a></li>
</c:if>
<c:if test="${pageNum==pageCount }">
  <li><a href="#">&raquo;</a></li>
</c:if>
<c:if test="${pageNum<pageCount }">
<li><a href="${pageContext.request.contextPath }/vehicle/list?pageNo=${pageNum }&dir=next">&raquo;</a></li>
</c:if>
<c:if test="${pageNum>pageCount }">
<li><a href="#">&raquo;</a></li>
</c:if>
</ul>
</div>
</body>
</html>