<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="static/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="static/css/font-awesome.min.css" rel="stylesheet" />
    <!--[if IE 7]>
    <link href="/Content/font-awesome/css/font-awesome-ie7.min.css" rel="stylesheet" />
    <![endif]-->
    <link href="static/css/sidebar-menu.css" rel="stylesheet" />
    <link href="static/css/ace-rtl.min.css" rel="stylesheet" />
    <link href="static/css/ace-skins.min.css" rel="stylesheet" />
    <link href="static/css/toastr.min.css" rel="stylesheet" />

    <script src="static/js/jquery-1.9.1.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/sidebar-menu.js"></script>
    <script src="static/js/bootstrap-tab.js"></script>
  </head>
  
  <body>
    <div class="navbar navbar-default" id="navbar">
        <div class="navbar-container" id="navbar-container">
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand">
                    <small>
                        <i class="icon-leaf"></i>
                        	后台管理系统
                    </small>
                </a>
            </div>

            <div class="navbar-header pull-right" role="navigation">
		    <div style="background-color: #579ec8 !important; color: #fff; height:45px; line-height:45px; margin-right: 50px;">
			  欢迎光临,<shiro:principal/>
			    <a href="logout" style="color: #fff;">
                                    <i class="icon-off"></i>
                                    退出
                                </a>
		    </div>
            </div>
		<div class="navbar-header ace-settings-container" id="ace-settings-container" style="float:right;top:15px;">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="icon-cog bigger-150"></i>
                </div>
                <div class="ace-settings-box" id="ace-settings-box">
                    <div>
                        <div class="pull-left">
                            <select id="skin-colorpicker" class="hide">
                                <option data-skin="default" value="#438EB9">#438EB9</option>
                                <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                            </select>
                        </div>
                        <span>&nbsp; 选择皮肤</span>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                        <label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                        <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
                    </div>
                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                        <label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                        <label class="lbl" for="ace-settings-rtl">切换到左边</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                        <label class="lbl" for="ace-settings-add-container">
                            切换窄屏
                            <b></b>
                        </label>
                    </div>
                </div>
            </div>
        </div>
	    
    </div>
    <div class="main-container" id="main-container">
        <div class="main-container-inner">
            <a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>
            <div class="sidebar" id="sidebar">
                <ul class="nav nav-list" id="menu"></ul>
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
                </div>
            </div>
            <div class="main-content">
                <div class="page-content">
                    <div class="row">
                        <div class="col-xs-12" style="padding-left:5px;">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#Index" role="tab" data-toggle="tab">首页</a></li>
                            </ul>
                            <div class="tab-content" style="height:865px">
                                <div role="tabpanel" class="tab-pane active" id="Index" style="height:100%">
					<h2>欢迎进入后台管理系统</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="icon-double-angle-up icon-only bigger-110"></i>
        </a>
    </div>
    <script type="text/javascript">
    	$(function () {
    		/* var data;
    		$.ajax({
    			url:"menu",
    			type:"get",
    			dataType:"json",
    			async : false,
    			success:function(re){
    				data=re;
    				console.log(re);
    			}
    		})  */
            $('#menu').sidebarMenu({
            	url:"menu"
            });
        })
    </script>
    <script src="static/js/ace-extra.min.js"></script>
    <script src="static/js/ace.min.js"></script>
  </body>
</html>
