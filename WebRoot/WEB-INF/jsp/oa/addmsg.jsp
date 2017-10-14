<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addmsg.jsp' starting page</title>
    
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
    <form role="form" class="form-horizontal" id="addForm" action="model/create">
		<div class="form-group">
			<label for="leaveType" class="col-sm-2 control-label">名称</label>
			<div class="col-sm-4">
				<input name="name" class="form-control" >					
			</div>
		</div>
		<br />
		<div class="form-group">
			<label for="leaveType" class="col-sm-2 control-label">KEY</label>
			<div class="col-sm-4">
				<input name="key" class="form-control" >					
			</div>
		</div>
		<br />
		<div class="form-group">
			<label for="leaveType" class="col-sm-2 control-label">说明</label>
			<div class="col-sm-4">
				<input name="description" class="form-control" >					
			</div>
		</div>
		<br />
		
		<div class="form-group">
			<div class="col-sm-4 col-sm-offset-2">
				<button type="submit" id="apply" class="btn btn-default">提交</button>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		
	</script>
  </body>
</html>
