<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">修改用户密码</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">填写修改密码信息</h3>
	          </div><!--contenttitle-->
                    
					<form class="stdform stdform2" method="post" action="modifyPasswordGo">
                        <p><label>用户编码</label>
                            <span class="field"><input type="text" name="userCode" class="longinput" /></span>
                        </p>
                        
                        <p><label>旧密码</label>
                            <span class="field"><input type="text" name="userPassword" class="longinput" /></span>
                        </p>
                        
                        <p><label>新密码</label>
                            <span class="field"><input type="text" name="newPassword" class="longinput" /></span>
                        </p>
						
                        <p class="stdformbutton" align="center">
                        	<input type="submit" class="submit radius2" value="提交"/>
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
