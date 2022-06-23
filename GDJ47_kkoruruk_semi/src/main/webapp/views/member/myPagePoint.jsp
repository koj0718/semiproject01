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
	                		<span id="my_point"></span>
	            		</div>
	        		</div>
			
					<h2>사용내역</h2>
					<hr>
					<ul class="point_his">
							<li>
				                <div>
				                    <div></div>ㄴ
				                    <div>사용내역22</div>
				                </div>
				
				                <div>
<%-- 										<%if() %> --%>
				                		<div class="plus">적립내역</div>
<%-- 										<% %> --%>
<%-- 										<%if() %> --%>
				                		<div class="used">사용내역</div>
<%-- 										<% %> --%>
				                	
				                </div>
							</li>
							<hr>
					</ul>
				</main>
			</div>
				
			<br>
				
<!-- 				<div id="myPageContent" class="row col-8">
					임시창@@@
				</div> -->
			
		</div>

<%@ include file="/views/common/footer.jsp" %>