<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/style1.css">
<link rel="stylesheet" href="static/css/bootstrapValidator.min.css">
<script src="static/js/jquery-1.11.0.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/bootstrapValidator.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				
				<form class="form-horizontal" action="" method="post" id="loginForm">
					<span class="heading">用户登录</span>
					<div class="error">${error}</div>
					<div class="form-group">
						<div class="col-sm-10">
						<input type="text" name="username" value="<shiro:principal/>" class="form-control" id="username"
							placeholder="请输入用户名" > <i class="fa fa-user"></i>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
						<input type="password" name="password" class="form-control" id="password"
							placeholder="请输入密码" > <i class="fa fa-lock"></i> <a href="#"
							class="fa fa-question-circle"></a>
						</div>
					</div>
					<div class="form-group">
						<div class="main-checkbox">
							<input type="checkbox" name="rememberMe" value="true" id="checkbox1" />
							<label for="checkbox1"></label>
						</div>
						<span class="text">Remember me</span>
						<div class="col-sm-10">
							<button type="submit" id="sub" name="sub" class="btn btn-primary">登录</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		 $(function () {
		 	var faIcon = {  
	           		valid: 'glyphicon glyphicon-ok',  
	                invalid: 'glyphicon glyphicon-remove',  
	                validating: 'glyphicon glyphicon-refresh'  
	        }  
			 
		 
	       $('#loginForm').bootstrapValidator({
	　　　　　　　　message: 'This value is not valid',
	            　	   feedbackIcons:faIcon,  
	            fields: {
	                username: {
	                    message: '用户名验证失败',
	                    validators: {
	                        notEmpty: {
	                            message: '用户名不能为空'
	                        }
	                    }
	                },
	                password: {
	                    validators: {
	                        notEmpty: {
	                            message: '密码不能为空'
	                        },
	                        stringLength:{
	                        	min:6,
	                        	max:18,
	                        	message:'用户名长度必须在6~18位之间'
	                        }
	                    }
	                }
	            }
	        });
	        
	       
	    }); 
	</script>
</body>
</html>