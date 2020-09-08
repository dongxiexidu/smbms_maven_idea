<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>超市订单管理系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style.default.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/custom/general.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/custom/index.js"></script>
</head>

<body class="loginpage">
	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1 class="logo">Management.<span>Order</span></h1>
				<span class="slogan">超市订单管理系统</span>
            </div><!--logo-->
            
            <br clear="all" /><br />
            
            <div class="nousername">
				<div class="loginmsg">密码不正确.</div>
            </div><!--nousername-->
            
            <div class="nopassword">
				<div class="loginmsg">密码不正确.</div>
                <div class="loginf">
                    <div class="thumb"><img alt="" src="${pageContext.request.contextPath }/statics/images/thumbs/avatar1.png" /></div>
                    <div class="userlogged">
                        <h4></h4>
                        <a href="${pageContext.request.contextPath }/loginGo">不是 <span></span>?</a> 
                    </div>
                </div><!--loginf-->
            </div><!--nopassword-->
            
            <form name="actionForm" id="actionForm" method="post" action="${pageContext.request.contextPath }/loginGo">
            	
                <div class="username">
                	<div class="usernameinner">
                    	<input type="text" name="userCode" id="userCode" placeholder="请输入用户名" required/>
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<input type="password" name="userPassword" id="userPassword" placeholder="请输入密码" required/>
                    </div>
                </div>
                
                <input type="submit" value="登录" style="width: 48%;"/>
				<input type="reset" value="重置" style="width: 48%;"/>
            </form>
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->

</body>
</html>
