<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row logo">
	<div class="col-md-10">
		<h1 style="color: #dbdbcc;">西安汽车站客运管理系统</h1>
		欢迎你:${sessionScope.empInfo.realName }
	</div>

	<div class="col-md-2">
		<p class="text-right ">
			<a href="#" class="btn btn-xs btn-info">修改个人信息</a>
			 <a href="#" class="btn btn-xs btn-info">修改密码</a><br /> <br /> 
			 <a href="${pageContext.request.contextPath}/emp/logOut" class="btn btn-xs btn-warning">退出系统</a>
		</p>
	</div>
</div>