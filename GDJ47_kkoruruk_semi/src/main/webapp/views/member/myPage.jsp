<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%@ include file="/views/common/myPageSidebars.jsp" %>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPage.css">

		<div class="col">
		
			<section class="title">
				<h1>마이페이지</h1>
			</section>
			<br>
			
			<div id="myPageContent" class="row col-8">
				<div class="row">
			      <div class="col-8 col-sm-6">
			      	<div><img src="#">프로필 사진</div>
			      		<div><%=loginMember.getMemNick() %>님 안녕하세요.</div>
			      </div>
			      <div class="col-4 col-sm-6">
			        <%=loginMember.getMemPoint() %> 포인트
			      </div>
			    </div>
			    <hr>
			    <div style="height:40px;">
			    	<%=loginMember.getMemNick() %>님은 <%=loginMember.getRole() %>등급 입니다.
			    </div>
			</div>
			
			<br>
			
			<div id="myPageContent" class="row col-8">
				<div class="row">
			      <div class="col-12 col-sm-12">
			      	<div>등급 업 조건</div>
			      </div>
	<!--  		      <div class="col-4 col-sm-6">
			        요건
			      </div> -->
			    </div>
			    <hr>
			    <div style="height:40px;">
			    	SIKSIN 직전 월 터치주문 16회 이상
			    </div>
			    <div style="height:40px;">
			    	PLATINUM 직전 월 터치주문 11~15회
			    </div>
			    <div style="height:40px;">
			    	GOLD 직전 월 터치주문 6~10회
			    </div>
			    <div style="height:40px;">
			    	SILVER 직전 월 터치주문 3~5회
			    </div>
			    <div style="height:40px;">
			    	BRONZ 직전 월 터치주문 0~2회
			    </div>
			</div>
		</div>

<%@ include file="/views/common/footer.jsp" %>