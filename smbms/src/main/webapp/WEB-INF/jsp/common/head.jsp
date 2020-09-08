<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>超市订单管理系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style.default.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/charCount.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/custom/general.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/custom/forms.js"></script>
</head>
<body>

<body class="withvernav">
<script type="text/javascript">
	var app = angular.module('app',["wui.date"]);
</script>

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
                <span> ${userSession.userName }</span>
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
                    <p class="email">·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·-·</p>
                    <ul>
                    	<li><a> 编码： ${userSession.userCode } </a></li>
                    	<li><a> 性别：
                    		<c:if test="${userSession.gender==2 }">男</c:if>
                           	<c:if test="${userSession.gender==1}">女</c:if>
                    	</a></li>
                        <li><a> 身份： 
                        	<c:if test="${userSession.userRole==1}">系统管理员</c:if>
                           	<c:if test="${userSession.userRole==2}">经理</c:if>
                           	<c:if test="${userSession.userRole==3}">普通员工</c:if>
                        </a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    <div class="vernav2 iconmenu">
    	<ul>
            <li><a href="${pageContext.request.contextPath }/getOrder" class="elements">订单管理</a></li>
            <li><a href="${pageContext.request.contextPath }/getProviders" class="widgets">供应商管理</a></li>
            <li><a href="${pageContext.request.contextPath }/getUserList" class="calendar">用户管理</a></li>
            <li><a href="${pageContext.request.contextPath }/modifyPasswd" class="support">修改密码</a></li>
            <li><a href="${pageContext.request.contextPath }/logout" class="support">退出系统</a></li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
    <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
    <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>