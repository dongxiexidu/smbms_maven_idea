<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">查看供货商</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">查看供货商信息</h3>
	          </div><!--contenttitle-->
                    
					<form class="stdform stdform2">
                        <p><label>供货商编码</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proCode }</span>
                        </p>
                        
                        <p><label>供货商名称</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proName }</span>
                        </p>
                        
                        <p><label>详细描述</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proDesc }</span>
                        </p>
                        
                        <p><label>联系人</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proContact }</span>
                        </p>
                        
                        <p><label>联系电话</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proPhone }</span>
                        </p>
						
                        <p><label>地址</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proAddress }</span>
                        </p>
                        
                        <p><label>微信</label>
                            <span class="field" style=" padding:20px; height:30px;">${provider.proFax }</span>
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