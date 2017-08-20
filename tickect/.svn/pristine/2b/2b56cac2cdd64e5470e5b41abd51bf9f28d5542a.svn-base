<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="common/page_common.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({
			language : 'zh-CN'
		});
	});
</script>
</head>

<body background="/tickect/img/2.jpg">
	<div>欢迎你:</div>

	<div>
		<p class="text-right ">
			<a href="#" class="btn btn-xs btn-info">新用户注册</a> <a
				href="emp/login.jsp" class="btn btn-xs btn-info">登录</a> <a
				href="${pageContext.request.contextPath}/passanger/login.jsp"
				class="btn btn-xs btn-info">后台管理</a> <a
				href="${pageContext.request.contextPath}/emp/logOut"
				class="btn btn-xs btn-warning">退出系统</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
	</div>
	<div class="container">
		<div class="col-md-12 col-xs-12">
			<div class="btn-group">
				<button type="button" style="width: 350px; height: 80px"
					class="btn btn-info">
					<span class="glyphicon glyphicon-road">汽车票</span>
				</button>
				<button type="button" style="width: 350px; height: 80px"
					class="btn btn-info">
					<span class="glyphicon glyphicon-plane">飞机票</span>
				</button>
				<button type="button" style="width: 350px; height: 80px"
					class="btn btn-info">
					<span class="glyphicon glyphicon-tower">火车票</span>
				</button>
			</div>
		</div>
	</div>
	<hr />
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-md-offset-2">
				<span class="label label-warning">出发城市:</span><br> <select>
					<option>西安</option>
				</select>
			</div>
			<div class="col-md-4">
				<span class="label label-warning">到达城市:</span><br> <select>
					<option>西安</option>
				</select>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="form-group">
				<span class="label label-warning col-md-1  col-md-offset-1">出发日期:</span>
				<div class="col-md-6 input-group date" id="datepicker"
					data-date-format="yyyy-mm-dd">
					<div class="input-group-addon">
						<span class="add-on glyphicon glyphicon-calendar"></span>
					</div>
					<input class="form-control" size="16" type="text" readonly
						name="info.dob" id="dob">
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<span class="label label-warning col-md-1  col-md-offset-1">学生票:</span>
			<input type="checkbox">
		</div>
		<br>
		<div class="row">
			<div class="col-md-4 col-md-offset-3 ">
				<input type="button" value="车票查询" class="btn btn-success"
					style="width: 400px">
			</div>
		</div>
	</div>

</body>
</html>