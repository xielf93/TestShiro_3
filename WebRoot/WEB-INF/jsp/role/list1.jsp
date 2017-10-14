<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'list1.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache,must-revalidate">
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
	<script src="static/js/bootstrap-table-zh-CN.min.js"></script>
	<script src="static/js/jquery.treegrid.extension.js"></script>
</head>

<body>
	<button  type="button" class="btn btn-default" id="refresh">刷新</button>
	<shiro:hasPermission name="role:create">
		<button  type="button" class="btn btn-default" id="addRole">增加</button>
	</shiro:hasPermission>
	<table id="tb_role">

	</table>
	<input type="hidden" id="ids">
	<div class="modal fade" id="tips" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">提示</h4>
				</div>
				<div class="modal-body">
					<p id="tip">操作成功!</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="editRole" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">编辑角色信息</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="roleForm">
						<input type="hidden" name="id" id="id" value="">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">名称</label>
							<div class="col-sm-10">
								<input type="text" name="role" class="form-control"
									id="name" value="" >
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-10">
								<input type="text" name="description" class="form-control"
									id="description" value="" >
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="locked" class="col-sm-2 control-label">状态</label>
							<div class="col-sm-10">
								<select name="available" class="form-control" id="available">
									<option value="true">可用</option>
									<option value="false">停用</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="save" class="btn btn-default"
						data-dismiss="modal">保存</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="userRoles" tabindex="-1">
		
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">分配权限</h4>
				</div>
				<div class="modal-body">

					<table id="resourceTable"></table>

				</div>
				<div class="modal-footer">
					<button id="saveRole" type="button" class="btn btn-default"
						data-dismiss="modal">保存</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="ask" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">提示</h4>
				</div>
				<div class="modal-body">
					<p id="tip">是否要删除?</p>
				</div>
				<div class="modal-footer">
					<button id="enter" type="button" class="btn btn-default" data-dismiss="modal">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="reRole" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">新增角色信息</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="addForm">
						<input type="hidden" name="id" id="reid" value="">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">名称</label>
							<div class="col-sm-10">
								<input type="text" name="role" class="form-control"
									id="rename" value="" placeholder="请输入名称">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-10">
								<input type="text" name="description" class="form-control"
									id="redescription" value="" placeholder="请输入描述">
							</div>
						</div>
						<br />
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="add" class="btn btn-default"
						data-dismiss="modal">提交</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
  	$(function () {

  		function buildNode(re){
  			str="["
  			$.each(re,function(index,value){
  				str += '{ "id": "'+value.id+'" ,"name":"'+value.role+'","description":"'+value.description+'"},';				
  			})
  			str = str.substring(0,str.length-1);
  			str +=" ]";
  			console.log(str);
  			str = eval("("+str+")");
  			
  			return str;
  		}
  		
  		
  		function askForData(){
  			var data;
  			$.ajax({
  				url:"role/tab",
  				dataType:"json",
  				async: false,
  				success:function(re){
  					data=re;
  				}
  			})
			
  			return buildNode(data);
  		}
  		
  		window.operateEvents = {
            'click .RoleOfA': function (e, value, row, index) {  
            	$.get("role/view/"+row.id,function(data){
            		console.log(data);
            		if(data !=null){
            			$("#id").val(data.id);
            			$("#name").val(data.role);
            			$("#name").attr("readonly","readonly");
            			$("#description").val(data.description);
            			if(data.available==true){
            				$("#available option:eq(0)").attr("selected",true);
            			}else{
            				$("#available option:eq(1)").attr("selected",true);
            			}
            		}
            	},"json")
                $("#editRole").modal("toggle");            
         },
            'click .RoleOfB': function (e, value, row, index) {
            	$("#ids").val(row.id)
/*             	var data;
            	$.get("role/updateResource/"+row.id,function(re){
            		data=re;
            		$.each(re,function(index,value){
            			console.log(value.hasNot);
            		})
            	},"json") */
            	$('#resourceTable').bootstrapTable('destroy'); 
            	$('#resourceTable').bootstrapTable({
			        //data: data,                         //直接从本地数据初始化表格
			        url:"role/updateResource/"+row.id,
			        method: 'get',                      //请求方式（*）
			        toolbar: '#toolbar',                //工具按钮用哪个容器
			        striped: true,                      //是否显示行间隔色
			        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			        //pagination: true,                   //是否显示分页（*）
			        //sortable: false,                     //是否启用排序
			        //sortOrder: "asc",                   //排序方式
			        /* queryParams: function (params) {
			            return params;
			        },  */                                 //传递参数（*）
			        //sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
			        //pageNumber: 1,                      //初始化加载第一页，默认第一页
			        //pageSize: 10,                       //每页的记录行数（*）
			        //pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
			        //search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			        //strictSearch: true,
			        //showColumns: true,                  //是否显示所有的列
			        //pagination: false,
			        treeView: true,
			        treeId: "Id",
			        treeField: "name",
			        treeRootLevel: 1,
			        //showRefresh: true,                  //是否显示刷新按钮
			        minimumCountColumns: 2,             //最少允许的列数
			        clickToSelect: true,                //是否启用点击选中行
			        uniqueId: "Id",                     //每一行的唯一标识，一般为主键列
			        //showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
			        selectItemName: 'reId',
			        columns: [{			        	
			            checkbox: true,
			            formatter:function(value,row,index){
						   return {
						   		reId: row.Id,
						   		disabled:!row.available,
						   		checked:row.hasNot
						   };
						}
			        },{
			            field: 'name',
			            title: '资源名称'
			            
			        }],
			    }); 
			    $("#userRoles").modal("toggle");    
         },
          'click .RoleOfC': function (e, value, row, index) {
          		$("#ids").val(row.id);
                $("#ask").modal("toggle");        
         }
        };
  		
 		//初始化Table
        $('#tb_role').bootstrapTable({
            //url: 'user/tab',         //请求后台的URL（*）
            method: 'get',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            //cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
           // pagination: true,                   //是否显示分页（*）
            //sortable: false,                     //是否启用排序
            //sortOrder: "asc",                   //排序方式
            //sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            //pageNumber: 1,                       //初始化加载第一页，默认第一页
            //pageSize: 10,                       //每页的记录行数（*）
           // pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            //search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            //strictSearch: true,
            //showColumns: true,                  //是否显示所有的列
            //showRefresh: true,                  //是否显示刷新按钮
            //minimumCountColumns: 2,             //最少允许的列数
            //clickToSelect: true,                //是否启用点击选中行
            //height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            //uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            //showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
            //cardView: false,                    //是否显示详细视图
            //detailView: false,                   //是否显示父子表
            
            columns: [{
                checkbox: true
            }, {
                field: 'id',
                title: '编号'
            }, {
                field: 'name',
                title: '名称'
            }, {
                field: 'description',
                title: '描述'
            }, {  
	            field: 'operate',  
	            title: '操作',  
	            events: operateEvents,  
	            formatter: operateFormatter  
	        },],
            data:askForData()
        });
        
        function operateFormatter(value, row, index) {
             return [
                 '<shiro:hasPermission name="role:update"><button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">修改信息</button></shiro:hasPermission>',
                 '<shiro:hasPermission name="role:update"><button type="button" class="RoleOfB btn btn-default  btn-sm" style="margin-right:15px;">分配权限</button></shiro:hasPermission>',
                 '<shiro:hasPermission name="role:delete"><button type="button" class="RoleOfC btn btn-default  btn-sm" style="margin-right:15px;">删除</button></shiro:hasPermission>'
             ].join('');
         }
         
         $("#save").click(function(){
         	$.post("role/update",$("#roleForm").serialize(),function(data){
         		if(data=="1"){
         			$("#tip").text("保存成功!");       			
         		}else{
         			$("#tip").text("保存失败!");
         		}
         		$("#tips").modal("toggle");
         	})
         })
         
         $("#saveRole").click(function(){
         	var reList = $("#resourceTable input:checked");
         	var list="";
         	$.each(reList,function(index,value){
         		list+=$(value).parent().parent().attr("data-uniqueid")+",";
         	})

         	list = list.substring(0,list.length-1);

         	$.post("role/updateResource/"+$("#ids").val(),{reIds:list},function(data){
         		if(data=="1"){
         			$("#tip").text("保存成功!");       			
         		}else{
         			$("#tip").text("保存失败!");
         		}
         		$("#tips").modal("toggle");
         	}) 
         })
         
         $("#enter").click(function(){
        	$.get("role/delete/"+$("#ids").val(),function(data){
        		if(data=="1"){
         			$("#tip").text("删除成功!");       			
         		}else{
         			$("#tip").text("删除失败!");
         		}
         		$("#tips").modal("toggle");
        	})
         })
         
         $("#refresh").click(function(){
         	location.reload();
         })
         
         $("#addRole").click(function(){
         	$("#rename").val("");
         	$("#redescription").val("");
         	$("#reRole").modal("toggle");
         })
         
         $("#add").click(function(){
         	$.post("role/create",$("#addForm").serialize(),function(data){
         		if(data=="1"){
         			$("#tip").text("操作成功!");       			
         		}else{
         			$("#tip").text("操作失败!");
         		}
         		$("#tips").modal("toggle");
         	})
         })
  	})
  </script>
</html>
