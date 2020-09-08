<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">修改用户</h1>
        </div><!--pageheader-->
        
        <div class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">修改用户信息</h3>
	          </div><!--contenttitle-->
	                    
					<form class="stdform stdform2" method="post" action="modifyUserGo">
                        <p><label>用户编码</label>
                            <span class="field"><input type="text" name="userCode" class="longinput" value="${user.userCode }" /></span>
                        </p>
                        
                        <p><label>用户姓名</label>
                            <span class="field"><input type="text" name="userName" class="longinput" value="${user.userName}"/></span>
                        </p>
                        
                        <p><label>用户性别</label>
                            <span class="field">
                            	<input type="radio" name="gender" value="2" <c:if test="${user.gender==2 }"> checked</c:if>>男 &nbsp; &nbsp;
                            	<input type="radio" name="gender" value="1" <c:if test="${user.gender==1 }"> checked</c:if>>女 &nbsp; &nbsp;  
                            	<input type="hidden" name="id" value="${user.id }">      
                            </span>
                        </p>
                        
                        <p><label>出生日期</label>
                            <span class="field">
                           		<input type="text"  class="longinput"  name="birthday" value='<fmt:formatDate value="${user.birthday }" pattern="yyyy-MM-dd hh:mm"/>'>
                            </span>
                        </p>
                        
                        <p><label>身份</label>
                            <span class="field">
                            	<input type="radio" name="userRole" value="1" <c:if test="${user.userRole==1 }"> checked</c:if> />系统管理员 &nbsp; &nbsp;
                            	<input type="radio" name="userRole" value="2" <c:if test="${user.userRole==2 }"> checked</c:if> />经理 &nbsp; &nbsp;
                                <input type="radio" name="userRole" value="3" <c:if test="${user.userRole==3 }"> checked</c:if> />普通员工  &nbsp; &nbsp; 
                            </span>
                        </p>
                        
                        <p><label>联系电话</label>
                            <span class="field"><input type="text" name="phone" class="longinput" value="${user.phone }"/></span>
                        </p>
                        
                        <p><label>用户住址</label>
                            <span class="field"><input type="text" name="address" class="longinput" value="${user.address }" /></span>
                        </p>
                        
                        <p><label>头像</label>
                            <span class="field"><input type="file" name="idPicPath" class="longinput" /></span>
                        </p>
                        
                        <p><label>证件照</label>
                            <span class="field"><input type="file" name="workPicPath" class="longinput" /></span>
                        </p>
                        
                        <p class="stdformbutton">
                        	<input type="submit" class="submit radius2" value="提交" />
                            <input type="reset" class="reset radius2" value="重置" />
                        </p>
                    </form>
                <br />

            </div><!--subcontent-->
            
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
</div><!--bodywrapper-->

</body>
</html>