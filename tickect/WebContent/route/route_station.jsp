<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../common/page_common.jsp"%>
<script type="text/javascript">
//载入线路途径站点列表
	var newStationList = null;
	var routeId = "${param.routeId}";
	$(function() {
		//载入线路途径站点列表
		loadByWayStationList();
		//载入新站点列表
	//	loadNewStationList();
	});
function loadByWayStationList() {
	$.get("${pageContext.request.contextPath}/ajax/ajaxByWayList.action", {
		"routeInfo.routeId" : routeId
	}, function(r) {
		console.info(r);
		if (r) {
			if (r.code == 0) {
				//设置途径站点
				setByWayStation(r.result);
			} else {
				alert(r.message);
			}
		} else {
			alert("系统故障,无应答!");
		}
	}, "json");
}

function setByWayStation(statList) {
	var tbody1 = $("#tbody1");
	var stat = null;
	if (statList && statList.length > 0) {
		for (var i = 0; i < statList.length; i++) {
			stat = statList[i];
			var tr = $("<tr>");
			var td = $("<td>");
			//站点编号
			td.append(stat.stationId);
			tr.append(td);
			//站点名称
			td = $("<td>");
			td.text(stat.stationName);
			if (stat.orderValue == 0) {
				td.append("<span class='label label-success'>起始</span>");
			} else if (stat.orderValue == 999) {
				td.append("<span class='label label-danger'>终点</span>");
				//设置新的途径站点的托运费和终点站的托运费一致
				$("#baggageFee").val(stat.baggageFee);
			}
			tr.append(td);
			//距离
			td = $("<td>");
			td.text(stat.distance);
			tr.append(td);
			//票价
			td = $("<td>");
			td.text(stat.price);
			tr.append(td);
			//托运费
			td = $("<td>");
			td.text(stat.baggageFee);
			tr.append(td);
			//
			td = $("<td>");
			if (stat.orderValue != 0 && stat.orderValue != 999) {
				a = $("<a>");
				a
						.append("<span class='glyphicon glyphicon-arrow-up'></span>");
				a.prop("href",
						"${pageContext.request.contextPath}/ajax/upStationOrder.action?rid="
								+ stat.routeInfo.routeId + "&sid="
								+ stat.stationId);
				td.append(a);

				td.append("&nbsp;");

				a = $("<a>");
				a
						.append("<span class='glyphicon glyphicon-arrow-down'></span>");
				a.prop("href",
						"${pageContext.request.contextPath}/ajax/downStationOrder.action?rid="
								+ stat.routeInfo.routeId + "&sid="
								+ stat.stationId);
				td.append(a);

				td.append("&nbsp;");

				a = $("<a>");
				a
						.append("<span class='glyphicon glyphicon-remove'></span>");
				a.prop("href",
						"${pageContext.request.contextPath}/ajax/delByWayStation.action?rid="
								+ stat.routeInfo.routeId + "&sid="
								+ stat.stationId);
				td.append(a);
			}

			tr.append(td);

			tbody1.append(tr);
		}
	} else {
		var tr = $("<tr>");
		var td = $("<td colspan='6'>");
		td.text("未找到任何途径站点!");
		tr.append(td);
	}
}
</script>
</head>
<body>
	<div class="col-md-9">
		<!-- main content -->
		<ol class="breadcrumb">
			<li><a href="#">线路和站点</a></li>
			<li class="active">途径站点列表</li>
		</ol>

		<div class="row">

			<div class="col-md-7 col-xs-7">
				<span class="label  label-info">途径站点列表:</span>
				<table
					class="table table-striped table-bordered table-hover table-condensed">
					<thead>
						<tr>
							<th>站点编号</th>
							<th>站点名称</th>
							<th>距离(KM)</th>
							<th>票价(元)</th>
							<th>托运费(元/KG)</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody1">
					</tbody>
				</table>
			</div>
			<div class="col-md-5 col-xs-5">
				<span class="label label-warning">加入新的途经站点:</span>
				<form action="" class="form-horizontal"
					style="background-color: #cacccc;">
					<div class="form-group">
						<div id="msgPrompt" class="col-md-10 col-md-offset-2 col-xs-2 text-danger">&nbsp;</div>
					</div>
					<div class="form-group">
						<label for="stationId" class="col-md-4  col-xs-3 control-label">站点:</label>
						<div class="col-md-6 col-xs-6" >
							<select id="stationId" name="stationId" class="form-control"></select>
						</div>
					</div>
					<div class="form-group">
						<label for="price" class="col-md-4 col-xs-3 control-label">票价:</label>
						<div class="col-md-6 col-xs-6">
							<input type="text" id="price" name="price" class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="baggageFee" class="col-md-4 col-xs-3 control-label">托运费:</label>
						<div class="col-md-6 col-xs-6">
							<input type="text" id="baggageFee" name="baggageFee"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-5 col-md-offset-4 col-xs-offset-4">
							<button type="button" class="btn btn-primary"
								onclick="checkInput();">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>