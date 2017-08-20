<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>燃油附加费/服务费</title>
<script type="text/javascript">
	$(function(){
		getStations();
	});
	function getStations(){
		$.get("${pageContext.request.contextPath}/ajax/getStations.action",function(data){
		//	console.info(data);
			if(data){
				for(var i=0;i<data.length-1;i++){
					$("#staList").append("<option value="+data[i].stationId+">"+data[i].stationName+"</option>");
				}
			}else{
				alert("刷新后再试");
			}
		})
	}
	function getCharge(){
		var city=$("#staList").val();
	//	alert(city);
		$.get("${pageContext.request.contextPath}/ajax/getCharge",{"staInfo.stationId":city},function(data){
		//	alert(data);
			document.getElementById("charge").value=data;
		});
	}
</script>
</head>
<body>
<div class="col-md-5 col-xs-6">
				<span class="label label-warning">查看燃油附加费和服务费:</span>
				<form action="" class="form-horizontal"
					style="background-color: #cacccc;">
					<div class="form-group">
						<div id="msgPrompt" class="col-md-12 col-xs-12 text-danger">&nbsp;</div>
					</div>
					<div class="form-group">
						<label for="stationId" class="col-xs-4 control-label">出发站:</label>
						<div class="col-xs-4">
							<input type="text" id="stationId" name="stationId"
								class="form-control" maxlength="4" value="西安" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="stationName" class="col-xs-4 control-label">终点站:</label>
						<div class="col-xs-4">
						<select class="form-control" id="staList" name="staInfo.stationId">
							<option value="-1">选择站点</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="stationId" class="col-xs-4 control-label">附加费&服务费:</label>
						<div class="col-xs-4">
							<input type="text" id="charge" name="charge"
								class="form-control" maxlength="4"  readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-3 col-xs-offset-3">
							<button type="button" class="btn btn-primary" id="btn"
									onclick="getCharge();">查询</button>
						</div>
					</div>
				</form>
			</div>
</body>
</html>