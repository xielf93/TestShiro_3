<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'leaveapply.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/bootstrap-treeview.min.css" rel="stylesheet">
<link href="static/css/bootstrap-table.min.css" rel="stylesheet">
<link href="static/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrap-table.min.js"></script>
<script src="static/js/bootstrap-treeview.min.js"></script>
<script src="static/js/bootstrap-datetimepicker.min.js"></script>
<script src="static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="static/js/bootstrap-table-locale-all.min.js"></script>
</head>

<body>
	<form role="form" class="form-horizontal" id="addForm">
		<div class="form-group">
			<label for="leaveType" class="col-sm-2 control-label">请假类型</label>
			<div class="col-sm-4">
				<select name="leaveType" class="form-control" id="leaveType">
					<option value="事假">事假</option>
					<option value="病假">病假</option>
					<option value="年假">年假</option>
					<option value="丧假">丧假</option>
					<option value="产假">产假</option>
				</select>
			</div>
		</div>
		<br />
		<div class="form-group">
			<label for="dtp_input1" class="col-sm-2 control-label">开始时间</label>
			<div class="input-group date form_date col-sm-4" data-date=""
				data-date-format="dd MM yyyy" data-link-field="dtp_input1"
				data-link-format="yyyy-mm-dd">
				<input class="form-control" size="16" type="text" value="" readonly>
				<span class="input-group-addon"><span
					class="glyphicon glyphicon-remove"></span>
				</span> <span class="input-group-addon"><span
					class="glyphicon glyphicon-calendar"></span>
				</span>
			</div>
			<input type="hidden" name="startTime" id="dtp_input1" value="" /><br />
		</div>
		<br />
		<div class="form-group">
			<label for="dtp_input2" class="col-sm-2 control-label">结束时间</label>
			<div class="input-group date form_date col-sm-4" data-date=""
				data-date-format="dd MM yyyy" data-link-field="dtp_input2"
				data-link-format="yyyy-mm-dd">
				<input class="form-control" size="16" type="text" value="" readonly>
				<span class="input-group-addon"><span
					class="glyphicon glyphicon-remove"></span>
				</span> <span class="input-group-addon"><span
					class="glyphicon glyphicon-calendar"></span>
				</span>
			</div>
			<input type="hidden" name="endTime" id="dtp_input2" value="" /><br />
		</div>
		<br />
		<div class="form-group">
			<label for="reason" class="col-sm-2 control-label">请假原因</label>
			<div class="col-sm-4">
				<textarea name="reason" rows="3" class="form-control"></textarea>
			</div>
		</div>
		<br />
		<div class="form-group">
			<div class="col-sm-4 col-sm-offset-2">
				<button type="button" id="apply" class="btn btn-default">提交</button>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		$(function() {
			 $('.form_date').datetimepicker({
		        language:  'zh-CN',
		        weekStart: 1,
		        todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
		    });
			 $("#apply").click(function(){
			 	$.ajax({
			 		url:"oa/startleave",
			 		type:"post",
			 		data:$("#addForm").serialize(),
			 		success:function(data){
			 			alert(data);
			 		},
			 		error:function(XMLHttpRequest){
			 			alert(XMLHttpRequest.responseText);
			 		}
			 	})
			 })
		})
	</script>
</body>
</html>
