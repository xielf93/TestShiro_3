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

<title>My JSP 'index1.jsp' starting page</title>

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
<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrap-treeview.min.js"></script>

</head>

<body>

	<div class="row">
		<div class="col-sm-2" id="treeView">
			

		</div>
		<div class="col-sm-10">
			<ol class="breadcrumb">
				<li class="active">组织机构管理</li>
				<li class="active">查看</li>
			</ol>

			<div class="panel panel-default">
				
				<div class="panel-body">
					<div class="embed-responsive embed-responsive-16by9" >
						<iframe class="embed-responsive-item" name="content" id="content" ></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
$(function(){
	function buildNode(node){
		var str = '';
		str += ' {"text": "'+node.name+'", "href":"javascript:ondeClick('+node.id+')'+'" ';
		if(node.childList!=null && node.childList.length>0){
			str += ' ,"nodes":[ ';
			$.each(node.childList,function(index,value){
				str += buildNode(value);
			})
			str = str.substring(0, str.length-1);
			str += '] ';
		}
		str +=' },';
		return str;
	}
	function askForTree(){
		$.ajax({
			url:"organization/tree",
			type:"post",
			dataType:"json",
			success:function(data){				
				var str = '[ ';
				if(data!=null && data.length>0){
					$.each(data,function(index,value){
						str += buildNode(value);
					})
					str = str.substring(0, str.length-1);
					str += ']';
					$("#treeView").treeview({
			          color: "#428bca",
			          levels: 5,
			          expandIcon: 'glyphicon glyphicon-chevron-right',
			          collapseIcon: 'glyphicon glyphicon-chevron-down',
			          nodeIcon: 'glyphicon glyphicon-bookmark',
			          enableLinks: true ,
			          data: str
			        });
				}
				
			}
		})
	}
	askForTree();
	
	 
})
function ondeClick(id){
		document.getElementById("content").src="organization/view/"+id;
	}
</script>
</body>
</html>
