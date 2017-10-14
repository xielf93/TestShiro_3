<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrap-table.min.js"></script>
<script src="static/js/bootstrap-treeview.min.js"></script>
<script src="static/js/bootstrap-table-locale-all.min.js"></script>
  </head>
  
  <body>
  	<button  type="button" class="btn btn-default" id="addModel">增加</button>
  	<button  type="button" class="btn btn-default" id="refresh">刷新</button>
    <table id="tab_model">

	</table>
	<div class="modal fade" id="modelMsg" tabindex="-1">		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">模型信息</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="addForm" >
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
					</form>
				</div>
				<div class="modal-footer">
					<button id="enter" type="button" class="btn btn-default"
						data-dismiss="modal">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			function approve(id,yesOrNo){
				$.ajax({
					url:"oa/complete/"+id+"/"+yesOrNo,
					type:"post",
					dataType:"text",
					success:function(data){
						alert("处理成功!");
					},
					error:function(){
						alert("挂了");
					}
				})
			}
			window.operateEvents = {
				'click .RoleOfA' : function(e, value, row, index) {
					window.open("static/modeler.html?modelId="+row.id,"_blank");
				},
				'click .RoleOfB' : function(e, value, row, index) {
					$.ajax({
						url:"model/deploy/"+row.id,
						type:"post",
						dataType:"text",
						success:function(data){
							alert(data);
						}
					})
				},
				'click .RoleOfC' : function(e,value,row,index) {
					$.ajax({
						url:"model/delmodel/"+row.id,
						type:"post",
						dataType:"text",
						success:function(data){
							alert(data);
						}
					})
				}
			};
			$("#tab_model").bootstrapTable({
				url: 'model/modelList',         //请求后台的URL（*）
	            method: 'post',                      //请求方式（*）
	            toolbar: '#toolbar',                //工具按钮用哪个容器
	            striped: true,                      //是否显示行间隔色
	            //cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
	            pagination: true,                   //是否显示分页（*）
	            //sortable: false,                     //是否启用排序
	            //sortOrder: "asc",                   //排序方式
	            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
	            pageNumber: 1,                       //初始化加载第一页，默认第一页
	            pageSize: 10,                       //每页的记录行数（*）
	            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
	            //search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
	            //strictSearch: true,
	            //showColumns: true,                  //是否显示所有的列
	            //showRefresh: true,                  //是否显示刷新按钮
	            //minimumCountColumns: 2,             //最少允许的列数
	            //clickToSelect: true,                //是否启用点击选中行
	            height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	            //uniqueId: "id",                     //每一行的唯一标识，一般为主键列
	            //showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
	            //cardView: false,                    //是否显示详细视图
	            //detailView: false,    
				columns : [ {
					field : 'id',
					title : '模型编号'

				}, {
					field : 'name',
					title : '模型名称'

				}, {
					field : 'key',
					title : '模型标识',

				}, {
					field : 'version',
					title : '版本号',

				}, {
					field : 'createTime',
					title : '创建时间',

				}, {
					field : 'lastUpdateTime',
					title : '最后更新时间',

				}, {
					field : 'operate',
					title : '操作',
					events : operateEvents,
					formatter : operateFormatter
				}, ],
			})


			 function operateFormatter(value, row, index) {
	             return [
	                 '<shiro:hasPermission name="oa:approve"><button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">编辑</button></shiro:hasPermission>',
	                 '<shiro:hasPermission name="oa:approve"><button type="button" class="RoleOfB btn btn-default  btn-sm" style="margin-right:15px;">部署</button></shiro:hasPermission>',
	                 '<shiro:hasPermission name="oa:approve"><button type="button" class="RoleOfC btn btn-default  btn-sm" style="margin-right:15px;">删除</button></shiro:hasPermission>'
	             ].join('');
	    	}
		})
		
		$("#addModel").click(function(){
			$("#modelMsg").modal("toggle");
		})
		$("#enter").click(function(){
			$.ajax({
				url:"model/create",
				type:"post",
				data:$("#addForm").serialize(),
				dataType:"text",
				success:function(data){
					alert(data);
				}
			})
		})
		
		$("#refresh").click(function(){
			location.reload();
		})
	</script>
  </body>
</html>
