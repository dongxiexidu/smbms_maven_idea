<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>错误提示页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style.default.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/custom/general.js"></script>
</head>

<body>
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Management.<span>Order</span></h1>
            <span class="slogan">超市订单管理系统</span>

            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
            <div class="userinfo">
            	<img src="${pageContext.request.contextPath }/statics/images/thumbs/avatar.png" alt="" />
                <span>${userSession.userName }</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="${pageContext.request.contextPath }/statics/images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	改变主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
				<div class="userdata">
                	<h4> ${userSession.userName }</h4>
                    <p class="email"><a href="${pageContext.request.contextPath }/logout">·-·-·- 注 销 账 户 -·-·-·</a></p>
                    <ul>
                    	<li><a> 编码： ${userSession.userCode } </a></li>
                    	<li><a> 性别： ${userSession.gender } </a></li>
                        <li><a> 身份： ${userSession.userRole } </a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="contentwrapper padding10">
    	<div class="errorwrapper error404">
        	<div class="errorcontent">
                <h1>错误提示！</h1>
                <h3>我们没有在页面跳转时遇到了错误，这意味着这个页面存在问题。</h3>
                <p>你所跳转的页面出现错误的原因可能由以下几条引起：</p>
                <ul>
                    <li>${e}</li>
                </ul>
                <br />
                <button class="stdbtn btn_black" onclick="history.back()">返回先前页面</button> &nbsp; 
            </div><!--errorcontent-->
        </div><!--errorwrapper-->
    </div>    
</div><!--bodywrapper-->

</body>
</html>
