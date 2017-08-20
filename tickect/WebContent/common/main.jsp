<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="page_common.jsp"%>
<title>main</title>
</head>
<script type="text/javascript">
	
</script>
<body background="../img/2.jpg">
	<div class="container">
		<%@include file="page_top.jsp"%>
		<div class="row">
			<div class="col-md-3 col-xs-3">
				<!-- 手风琴面板 -->
				<%@include file="page_menu.jsp"%>
				<!-- mainContext -->
				<div class="col-md-9 col-xs-9">
					<iframe
						src="${pageContext.request.contextPath }/emp/emp_search.jsp"
						name="menu_context" width=100% height="600px"> </iframe>

				</div>
			</div>
		</div>
</body>
</html>