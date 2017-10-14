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

<title>My JSP 'updateList.jsp' starting page</title>

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
	<table id="tab_reapply">

	</table>
	<div class="modal fade" id="deal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">处理</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="updateForm">
						<input type="hidden" id="taskid">
						<div class="form-group">
							<label for="userid" class="col-sm-2 control-label">申请人</label>
							<div class="col-sm-10">
								<input type="text" name="userid" class="form-control"
									id="userid" value="" readonly="readonly" >
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="leaveType" class="col-sm-2 control-label">请假类型</label>
							<div class="col-sm-10">
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
							<div class="input-group date form_date col-sm-10" data-date=""
								data-date-format="dd MM yyyy" data-link-field="dtp_input1"
								data-link-format="yyyy-mm-dd">
								<input id="startDefault" class="form-control" size="16" type="text" value=""
									readonly> <span class="input-group-addon"><span
									class="glyphicon glyphicon-remove"></span> </span> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-calendar"></span> </span>
							</div>
							<input type="hidden" name="startTime" id="dtp_input1"
								value="" /><br />
						</div>
						<br />
						<div class="form-group">
							<label for="dtp_input2" class="col-sm-2 control-label">结束时间</label>
							<div class="input-group date form_date col-sm-10" data-date=""
								data-date-format="dd MM yyyy" data-link-field="dtp_input2"
								data-link-format="yyyy-mm-dd">
								<input id="endDefault" class="form-control" size="16" type="text" value=""
									readonly> <span class="input-group-addon"><span
									class="glyphicon glyphicon-remove"></span> </span> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-calendar"></span> </span>
							</div>
							<input type="hidden" name="endTime" id="dtp_input2"
								value="" /><br />
						</div>
						<br />
						<div class="form-group">
							<label for="reason" class="col-sm-2 control-label">请假原因</label>
							<div class="col-sm-10">
								<textarea id="reason" name="reason" rows="3"
									class="form-control" ></textarea>
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="reason" class="col-sm-2 control-label">是否继续申请</label>
							<div class="col-sm-10">
								<select name="reapply" class="form-control" id="reapply">
									<option value="true">继续申请</option>
									<option value="false">不再申请</option>						
								</select>
							</div>
						</div>
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
			$('.form_date').datetimepicker({
				language : 'zh-CN',
				weekStart : 1,
				todayBtn : 1,
				autoclose : 1,
				todayHighlight : 1,
				startView : 2,
				minView : 2,
				forceParse : 0
			});
			window.operateEvents = {
				'click .RoleOfA' : function(e, value, row, index) {
					$("#taskid").val(row.taskid);
					var opList =$("#leaveType option");
					for(var i=0;i<opList.length;i++){
						if($(opList[i]).val()==row.leave_type){
							$(opList[i]).attr("checked","checked");
							break;
						}
					}
					$("#startDefault").val(row.start_time);
					$("#endDefault").val(row.end_time);
					$("#reason").val(row.reason);
					$("#userid").val(row.user_id);
					$("#deal").modal("toggle");
				}
			};
			$("#tab_reapply").bootstrapTable({
				url: 'oa/getUpdateList',         //请求后台的URL（*）
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
	                 '<shiro:hasPermission name="oa:updateapply"><button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">处理</button></shiro:hasPermission>'	                
	             ].join('');
	    	}
	    	
	    	$("#enter").click(function(){
	    		$.ajax({
					url:"oa/dealReapply/"+$("#taskid").val()+"/"+$("#reapply").val(),
					data:$("#updateForm").serialize(),
					type:"post",
					dataType:"text",
					success:function(data){
						alert("处理成功!");
					},
					error:function(XMLHttpRequest){
						alert("挂了");
					}
				})
	    	})
		})
	</script>
</body>
</html>
