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

<title>My JSP 'taskList.jsp' starting page</title>

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
	<table id="tab_task">

	</table>
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
					approve(row.taskid,true);
				},
				'click .RoleOfC' : function(e, value, row, index) {
					approve(row.taskid,false);
				}
			};
			$("#tab_task").bootstrapTable({
				url: 'oa/taskList',         //请求后台的URL（*）
	            method: 'get',                      //请求方式（*）
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
					field : 'taskid',
					title : '编号'

				}, {
					field : 'user_id',
					title : '申请人'

				}, {
					field : 'leave_type',
					title : '类型',

				}, {
					field : 'start_time',
					title : '请假开始时间',

				}, {
					field : 'end_time',
					title : '请假结束时间',

				}, {
					field : 'reason',
					title : '请假原因',

				}, {
					field : 'apply_time',
					title : '任务创建时间',

				}, {
					field : 'operate',
					title : '操作',
					events : operateEvents,
					formatter : operateFormatter
				}, ],
			})


			 function operateFormatter(value, row, index) {
	             return [
	                 '<shiro:hasPermission name="oa:approve"><button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">同意</button></shiro:hasPermission>',
	                 '<shiro:hasPermission name="oa:approve"><button type="button" class="RoleOfC btn btn-default  btn-sm" style="margin-right:15px;">拒绝</button></shiro:hasPermission>'
	             ].join('');
	    	}
		})
	</script>
</body>
</html>
