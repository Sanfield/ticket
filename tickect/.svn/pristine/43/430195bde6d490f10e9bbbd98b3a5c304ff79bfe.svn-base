<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({
			language : 'zh-CN'
		});	
		$("#vechNum").blur(checkVehicleNum);
});
var flag=true;
function checkVehicleNum() {
			var num=$("input[name='vehInfo.vechNum']").val();
			if(num){
				$.get("${pageContext.request.contextPath}/ajax/getVehByNum.action",{"vehInfo.vechNum":num},function(data) {
					if (data) {
						if (data.code == 0) {	
								if (data.result) {
									
								} else {
									$("#msgPrompt").text("系统中已经存在此车牌号码");
									$("#vechNum").focus();
								}
							} else {
								alert(data.message);
							}
						}
					}, "json");
		} 
	}
function checkRequired(ids) {
	var r = true;
	var v;
	if (ids && ids.length > 0) {
		for (var i = 0; i < ids.length; i++) {
			v = $("#" + ids[i]);
			if (v) {
				if (v.val()) {
					v.css("backgroundColor", "white");
				} else {
					v.css("backgroundColor", "#CCCC00");
					r = false;
				}
			}
		}
	}
	return r;
}
function checkInput() {
	if (!flag) {
		return;
	}
	var r = checkRequired([ "vechNum", "verchBuyDate", "vechBrand", "vechMax" ]);
	if (!r)
		return;
	document.forms[0].submit();
}
</script>
</head>
<body>
	<h1>
		车辆管理<small>添加车辆信息</small>
	</h1>
	<div class="container" >
	<div class="row" >
	<div class="col-md-7 col-xs-12">
			<form action="${pageContext.request.contextPath}/vehicle/add.action" class="form-horizontal">
			<div class="form-group">
				<label for="account" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-cog"></span> 车牌号:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-plane"></span>
					</div>
					<input type="text" name="vehInfo.vechNum" id="vechNum" class="form-control" />
					<div class="input-group-addon">车牌号</div><span id="msgPrompt"></span>
				</div>
					<div id="msgPrompt" class="col-md-10 col-md-offset-2 text-danger">&nbsp;</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-bold"></span> 品牌:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<input type="text" name="vehInfo.vechBrand" id="vechBrand" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-asterisk"></span> 型号:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<input type="text" name="vehInfo.vechModel" id="vechModel" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-warning-sign"></span> 最大载客量:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.vechMax" id="vechMax" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-lock"></span> 排气量:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.vechDisplay" id="vechDisplay" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-align-center"></span> 发动机型号:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.verchEnge" id="verchEnge" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 col-xs-2 control-label" for="dob">购买日期:</label>
				<div class="col-md-9 col-xs-5 input-group date" id="datepicker"
					data-date-format="yyyy-mm-dd">
					<input class=" form-control" size="16" type="text" readonly id="verchBuyDate" name="vehInfo.verchBuyDate">
					<div class="input-group-addon">
						<span class="add-on glyphicon glyphicon-calendar"></span>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-xs-5 form-group " align="center">
				<button type="button" class="btn btn-primary col-md-4 col-md-offset-4" onclick="checkInput();">录入</button>
			</div>
		</form>
	</div>
</div>
</div>
</body>
</html>