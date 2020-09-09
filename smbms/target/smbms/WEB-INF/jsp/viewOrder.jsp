<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">查看订单</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">查看订单信息</h3>
	          </div><!--contenttitle-->
		                    
					<form class="stdform stdform2">
                        <p><label>订单编码</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.billCode }</span>
                        </p>
                        
                        <p><label>商品名称</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.productName }</span>
                        </p>
                        
                        <p><label>商品描述</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.productDesc }</span>
                        </p>
                        
                        <p><label>商品单位</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.productUnit }</span>
                        </p>
						
                        <p><label>商品数量</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.productCount }</span>
                        </p>
                        
                        <p><label>商品总价</label>
                            <span class="field" style=" padding:20px; height:30px;">${order.totalPrice }</span>
                        </p>
                        
                        <p><label>是否支付</label>
                            <span class="field" style=" padding:20px; height:30px;">
                            	<c:if test="${order.isPayment==2 }">已支付</c:if>
	 							<c:if test="${order.isPayment==1 }">未支付</c:if>
                            </span>
                        </p>
                        
                       <p class="stdformbutton">
                        	<button class="submit radius2"><a href="getOrder" class="submit radius2" >返回</a></button>
                        </p>
                    </form>
                  <br />

            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
</div><!--bodywrapper-->

</body>
</html>
