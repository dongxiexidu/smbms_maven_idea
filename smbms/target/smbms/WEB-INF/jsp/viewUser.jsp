<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">查看用户</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">查看用户信息</h3>
	          </div><!--contenttitle-->
	                    
					<form class="stdform stdform2">
                        <p><label>用户编码</label>
                            <span class="field" style=" padding:20px; height:30px;">${user.userCode }</span>
                        </p>
                        
                        <p><label>用户姓名</label>
                            <span class="field" style=" padding:20px; height:30px;">${user.userName }</span>
                        </p>
                        
                        <p><label>用户身份</label>
                            <span class="field" style=" padding:20px; height:30px;">
                           		<c:if test="${user.userRole==1}">系统管理员</c:if>
                           		<c:if test="${user.userRole==2}">经理</c:if>
                           		<c:if test="${user.userRole==3}">普通员工</c:if>
                            </span>
                        </p>
                        
                        <p><label>用户性别</label>
                            <span class="field" style=" padding:20px; height:30px;">
                           		<c:if test="${user.gender==2 }">男</c:if>
                           		<c:if test="${user.gender==1}">女</c:if>
							</span>
                        </p>
                        
                        <p><label>出生日期</label>
                            <span class="field" style=" padding:20px; height:30px;">${user.birthday }</span>
                        </p>
                        
                        <p><label>联系电话</label>
                            <span class="field" style=" padding:20px; height:30px;">${user.phone }</span>
                        </p>
                        
                        <p><label>用户住址</label>
                            <span class="field" style=" padding:20px; height:30px;">${user.address }</span>
                        </p>
                        
                        <p><label>证件照</label>
                            <span class="field" style=" padding:20px; height:30px;"><img src="${user.workPicPath }"></span>
                        </p>
                        
                        <p><label>用户头像</label>
                            <span class="field" style=" padding:20px; height:30px;"><img src="${user.idPicPath }"></span>
                        </p>
                        
               			<p class="stdformbutton">
                        	<button class="submit radius2"><a href="getUserList" class="submit radius2" >返回</a></button>	
                        </p>
                    </form>
                <br />

            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>