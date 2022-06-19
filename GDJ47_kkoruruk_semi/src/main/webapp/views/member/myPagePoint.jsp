<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%@ include file="/views/common/myPageSidebars.jsp" %>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPagePoint.css">

		<section class="title">
			<h1>포인트</h1>
		</section>
		
		<br>
		
		<div class="col">
			<div id="myPageContent" class="row col-8">
				<main>
					<div class="my_point">
	            		<div>
	                		<span>보유 포인트</span>
	                		<span id="my_point" data-point="${point }"><fm:formatNumber value="${point }" /></span>
	            		</div>
	        		</div>
			
					<h2>사용내역</h2>
					<hr>
					<ul class="point_his">
						<c:forEach items="${myPoint }" var="myPoint">
							<li>
				                <div>
				                    <div>${myPoint.info }</div>
				                    <div><fm:formatDate value="${myPoint.usedDate }" pattern="yyyy.MM.dd" /> </div>
				                </div>
				
				                <div>
				                	<c:if test="${myPoint.point > 0 }">
				                		<div class="plus"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
				                	</c:if>
				                	
				                	<c:if test="${myPoint.point < 0 }">
				                		<div class="used"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
				                	</c:if>
				                	
				                </div>
							</li>
							<hr>
						</c:forEach>
					</ul>
				</main>
			</div>
				
			<br>
				
<!-- 				<div id="myPageContent" class="row col-8">
					임시창@@@
				</div> -->
			
		</div>

<%@ include file="/views/common/footer.jsp" %>