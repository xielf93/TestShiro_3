<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

<title>My JSP 'content.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</head>

<body>
	<form role="form" class="form-inline" id="orgForm">
		<input type="hidden" name="id" id="id" value="${org.id }">
		<div class="form-group">
			<label for="name">名称</label> <input type="text" name="name" class="form-control"
				id="name" value="${org.name }">
		</div>
		<div class="form-group">
			<label for="name">上级部门</label> 
			<select name="parentId" class="form-control">
			<c:forEach items="${orgList }" var="o">
				<c:if test="${o.id == org.parentId }">
				<option value="${o.id }" selected="selected">${o.name }</option>
				</c:if>
				<c:if test="${o.id != org.parentId }">
				<option value="${o.id }" >${o.name }</option>
				</c:if>
			</c:forEach>
			</select>
		</div>
		<div class="form-group">
			<label for="name">状态</label> 
			<select name="available" class="form-control">
				<c:if test="${org.available == true }" >
				<option value="true" selected="selected">启用</option>
				<option value="false" >停用</option>
				</c:if>
				<c:if test="${org.available == false }" >
				<option value="true" >启用</option>
				<option value="false" selected="selected" >停用</option>
				</c:if>
			</select>
		</div>
		<shiro:hasPermission name="organization:create">
		<div class="form-group">
			<button type="button" id="addChild" class="btn btn-default">添加下属部门</button>
		</div>
		</shiro:hasPermission>
		<shiro:hasPermission name="organization:delete">
		<div class="form-group">
			<button type="button" id="delete" class="btn btn-default">删除部门</button>
		</div>
		</shiro:hasPermission>
		<shiro:hasPermission name="organization:update">
		<div class="form-group">
			<button type="button" id="save" class="btn btn-default">保存</button>
		</div>
		</shiro:hasPermission>
	</form>
	<div class="modal fade" id="themodal" tabindex="-1">  
    <div class="modal-dialog">  
        <div class="modal-content">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>  
                <h4 class="modal-title">提示</h4>  
            </div>  
            <div class="modal-body">  
                <p>操作成功!</p>  
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>  
            </div>  
        </div> 
    </div>   
	</div>
	<div class="modal fade" id="fail" tabindex="-1">  
    <div class="modal-dialog">  
        <div class="modal-content">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>  
                <h4 class="modal-title">提示</h4>  
            </div>  
            <div class="modal-body">  
                <p>操作失败!</p>  
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>  
            </div>  
        </div> 
    </div>   
	</div>
	<div class="modal fade" id="child" tabindex="-1">  
    <div class="modal-dialog">  
        <div class="modal-content">  
        	<form action="" method="post" role="form" class="form-inline" id="childForm">
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>  
                <h4 class="modal-title">添加子节点</h4>  
            </div>  
            <div class="modal-body">  
               <input type="hidden" name="parentId" id="parentId" value="${org.id }">
               <div class="form-group">
               	<label for="name">部门名称</label>
               	<input type="text" name="name" class="form-control" id="newname"  placeholder="部门名称" >
               </div>       
            </div>  
            <div class="modal-footer">  
            	<button type="button" class="btn btn-primary" data-dismiss="modal" id="submit">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>  
            </div> 
       	</form> 
        </div> 
    </div>    
	</div>
	<div class="modal fade" id="deleteTips" tabindex="-1">  
    <div class="modal-dialog">  
        <div class="modal-content">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>  
                <h4 class="modal-title">提示</h4>  
            </div>  
            <div class="modal-body">  
                <p>是否要删除${org.name }?</p>  
            </div>  
            <div class="modal-footer">  
            	<button type="button" class="btn btn-default" data-dismiss="modal" id="enter">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>  
            </div>  
        </div> 
    </div>   
	</div>
<script type="text/javascript">
	$(function(){
		function re(){
			$('#themodal').on('hide.bs.modal',function() {
				window.parent.location.reload();
			})	
		}
		$("#save").click(function(){
			$.ajax({
				url:"organization/update",
				type:"post",
				data:$("#orgForm").serialize(),
				dataType:"json",
				success:function(data){
					if(data == "1"){
						$("#themodal").modal("toggle"); 
						re();					
					}
				}
			})
		})
		
		$("#addChild").click(function(){
			$("#newname").val("");
			$("#child").modal("toggle");		
		})
		
		$("#submit").click(function(){
			$.post("organization/create",$("#childForm").serialize(),function(data){
				if(data == "1"){
					$("#themodal").modal("toggle"); 
					re();
				}
			})
		})
		
		$("#delete").click(function(){
			$("#deleteTips").modal("toggle");		
		})
		
		$("#enter").click(function(){
			$.get("organization/delete/"+$("#id").val(),function(data){
				if(data == "1"){
					$("#themodal").modal("toggle");
					re();
				}else{				
					$("#fail").modal("toggle");
				}
			})
		})
		
	})
</script>
</body>
</html>
