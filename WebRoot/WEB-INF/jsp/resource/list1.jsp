<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/bootstrap-table.min.css" rel="stylesheet">
	<script src="static/js/jquery-1.9.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/bootstrap-table.min.js"></script>
	<script src="static/js/bootstrap-table-zh-CN.min.js"></script>
	<script src="static/js/jquery.treegrid.extension.js"></script>
  </head>
  
  <body>
  <button  type="button" class="btn btn-default" id="refresh">刷新</button>
  <shiro:hasPermission name="resource:create">
	<button  type="button" class="btn btn-default" id="addResource">增加</button>
  </shiro:hasPermission>
  <table id="treeTab">
    
  </table>
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
	
	<div class="modal fade" id="editResource" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">编辑资源信息</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="editForm">
						<input type="hidden" name="id" id="reid" value="">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">名称</label>
							<div class="col-sm-10">
								<input type="text" name="name" class="form-control"
									id="rename" value="" placeholder="请输入">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="org" class="col-sm-2 control-label">类型</label>
							<div class="col-sm-10">
								<select name="type" class="form-control" id="retype">
									<option value="menu">menu</option>
									<option value="button">button</option>
								</select>
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">地址</label>
							<div class="col-sm-10">
								<input type="text" name="url" class="form-control"
									id="reurl" value="" placeholder="请输入">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">父节点</label>
							<div class="col-sm-10">
								<select name="parentId" class="form-control" id="reparent">
									
								</select>
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">权限字符</label>
							<div class="col-sm-10">
								<input type="text" name="permission" class="form-control"
									id="repermission" value="" placeholder="请输入">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">状态</label>
							<div class="col-sm-10">
								<select name="available" class="form-control" id="reavailable">
									<option value="true">正常</option>
									<option value="false">停用</option>
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="sub" class="btn btn-default"
						data-dismiss="modal">提交</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="createResource" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">新增资源信息</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal" id="addForm">
						<input type="hidden" name="id" id="reid" value="">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">名称</label>
							<div class="col-sm-10">
								<input type="text" name="name" class="form-control"
									id="addname" value="" placeholder="请输入">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="org" class="col-sm-2 control-label">类型</label>
							<div class="col-sm-10">
								<select name="type" class="form-control" id="addtype">
									<option value="menu">menu</option>
									<option value="button">button</option>
								</select>
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">地址</label>
							<div class="col-sm-10">
								<input type="text" name="url" class="form-control"
									id="addurl" value="" placeholder="请输入">
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">父节点</label>
							<div class="col-sm-10">
								<select name="parentId" class="form-control" id="addparent">
									
								</select>
							</div>
						</div>
						<br />
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">权限字符</label>
							<div class="col-sm-10">
								<input type="text" name="permission" class="form-control"
									id="addpermission" value="" placeholder="请输入">
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
<script type="text/javascript">
	$.ajaxSetup({  
		async : false  
	});
	var data;
	function askForResource(){
		$.get("resource/tab",function(re){
			data=re;
			
		},"json");
	}
	askForResource();
            
$(function () {
	window.operateEvents = {
            'click .RoleOfA': function (e, value, row, index) {  
            	 $.get("resource/parentResource/"+row.Id,function(data){
            		str="";
            		$("#reparent option:not(0)").remove();
            		$.each(data,function(index,value){
            			if(value.id==row.ParentId){
            				str+="<option value='"+value.id+"' selected='selected'>"+value.name+"</option>";
            			}else{
            				str+="<option value='"+value.id+"'>"+value.name+"</option>";
            			}
            		})
            		$("#reparent").append(str);
            	},"json")
            	$("#reid").val(row.Id);
            	$("#rename").val(row.name);
            	$.each($("#retype option"),function(index,value){            		
            		if($(value).val()==row.type){
            			$(value).attr("selected",true);
            		}else{
            			$(value).removeAttr("selected");
            		}
            	})
            	$("#reavailable option:eq(0)").attr("selected",row.available);
            	$("#reavailable option:eq(1)").attr("selected",!row.available);
            	$("#reurl").val(row.url);
            	$("#repermission").val(row.permission); 
            	$("#editResource").modal("toggle");
         },
            'click .RoleOfC': function (e, value, row, index) {           	     
         }
        };


    //表格的初始化
    $('#treeTab').bootstrapTable({
        data: data,                         //直接从本地数据初始化表格
        method: 'get',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        queryParams: function (params) {
            return params;
        },                                  //传递参数（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                      //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [5, 25, 50, 100],        //可供选择的每页的行数（*）
        //search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        //strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        pagination: true,
        treeView: true,
        treeId: "Id",
        treeField: "name",
        treeRootLevel: 1,
        height: 500,
        showRefresh: false,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "Id",                     //每一行的唯一标识，一般为主键列
        showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
        selectItemName: 'parentItem',
        columns: [{
            field: 'name',
            title: '资源名称'
            
        }, {
            field: 'url',
            title: '资源url',
            
        },
        {
            field: 'type',
            title: '类型',
            
        },
        {
            field: 'permission',
            title: '权限字符',
            
        }, {
                field: 'available',
            title: '是否可用',
            
        },{  
	            field: 'operate',  
	            title: '操作',  
	            events: operateEvents,  
	            formatter: operateFormatter  
	        },],
    });  
    
    function operateFormatter(value, row, index) {
             return [
                 '<shiro:hasPermission name="resource:update"><button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">修改信息</button></shiro:hasPermission>',
                 '<shiro:hasPermission name="resource:delete"><button type="button" class="RoleOfC btn btn-default  btn-sm" style="margin-right:15px;">删除</button></shiro:hasPermission>'
             ].join('');
    }
    
    $("#refresh").click(function(){
         location.reload();
    })   
    
    $("#sub").click(function(){
    	$.post("resource/update",$("#editForm").serialize(),function(data){
    		if(data=="1"){
         		$("#tip").text("保存成功!");       			
         	}else{
         		$("#tip").text("保存失败!");
         	}
         	$("#tips").modal("toggle");
    	})
    }) 
    
    $("#addResource").click(function(){
    	$.get("resource/create",function(data){
            $("#addparent option:not(0)").remove();
            $("#addForm")[0].reset();
            str="";
            $.each(data,function(index,value){
            	str+="<option value='"+value.id+"'>"+value.name+"</option>";          	
            })
            $("#addparent").append(str);
            $("#createResource").modal("toggle");
        })     		 
    })   
    
    $("#add").click(function(){
    	$.post("resource/create",$("#addForm").serialize(),function(data){
    		if(data=="1"){
         		$("#tip").text("保存成功!");       			
         	}else{
         		$("#tip").text("保存失败!");
         	}
         	$("#tips").modal("toggle");
    	})
    })   
});
</script>
  </body>
</html>
