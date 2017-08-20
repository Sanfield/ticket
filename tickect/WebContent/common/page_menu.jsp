<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="panel-group" id="menu">

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a data-toggle="collapse" data-parent="#menu" href="#div1"> 员工管理
				</a>
			</h5>
		</div>
		<div id="div1" class="panel-collapse in">
			<div class="list-group">
				<a href="${pageContext.request.contextPath }/emp/list2"
					target="menu_context" class="list-group-item">员工列表</a> <a
					href="${pageContext.request.contextPath }/emp/emp_add.jsp"
					target="menu_context" class="list-group-item">录入员工</a> <a
					href="${pageContext.request.contextPath }/emp/emp_search.jsp"
					target="menu_context" class="list-group-item">员工查询</a>
			</div>
		</div>
	</div>


	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div2">车辆管理</a>
			</h5>
		</div>
		<div id="div2" class="panel-collapse collapse">
			<div class="list-group">
				<a href="${pageContext.request.contextPath }/vehicle/list.action"
					target="menu_context" class="list-group-item">车辆列表</a> <a
					href="${pageContext.request.contextPath }/vechile/vechicle_add.jsp"
					target="menu_context" class="list-group-item">录入车辆</a> <a
					href="${pageContext.request.contextPath }/vechile/vechicle_search.jsp"
					target="menu_context" class="list-group-item">车辆查询</a>
			</div>
		</div>
	</div>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div3">线路和站点</a>
			</h5>
		</div>
		<div id="div3" class="panel-collapse collapse">
			<div class="list-group">
				<a href="${pageContext.request.contextPath }/station/list"
					target="menu_context" class="list-group-item">站点列表</a> <a
					href="${pageContext.request.contextPath }/station/station_search.jsp"
					target="menu_context" class="list-group-item">站点查询</a> <a 
					href="${pageContext.request.contextPath }/route/list"
					target="menu_context" class="list-group-item">线路列表</a>
			</div>
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div4">附加费和站务费</a>
			</h5>
		</div>
		<div id="div4" class="panel-collapse collapse">
			<div class="list-group">
				<a href="${pageContext.request.contextPath }/extraFree/charge.jsp" class="list-group-item"
				target="menu_context">费用查看</a>
			</div>
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div5">班次模块</a>
			</h5>
		</div>
		<div id="div5" class="panel-collapse collapse">
			<div class="list-group">
				<a href="#" class="list-group-item">班次列表</a> <a href="#"
					class="list-group-item">录入班次</a>
			</div>
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div6">售票</a>
			</h5>
		</div>
		<div id="div6" class="panel-collapse collapse">
			<div class="list-group">
				<a href="#" class="list-group-item">售票</a> <a href="#"
					class="list-group-item">售票信息</a> <a href="#"
					class="list-group-item">退票</a><a href="#" class="list-group-item">预订票交付</a>
			</div>
		</div>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h5 class="panel-title">
				<a class="collapsed" data-toggle="collapse" data-parent="#menu"
					href="#div7">行包管理</a>
			</h5>
		</div>
		<div id="div7" class="panel-collapse collapse">
			<div class="list-group">
				<a href="#" class="list-group-item">行包列表</a> <a href="#"
					class="list-group-item">行包查询</a>
			</div>
		</div>
	</div>
</div>
</div>