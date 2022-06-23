<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<div id="bodyContainer" class="row">
	
		<div id="myPageSidebars"class="col-4 row d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px; height:430px; float:left;">
		    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
		      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
		      <span class="fs-4">@@@@@</span>
		    </a>
		    <br>
		    <hr>
		    <ul class="nav nav-pills flex-column mb-auto">
		      <li class="nav-item">
		        <a href="<%=request.getContextPath() %>/mypage.do" class="nav-link active" aria-current="page">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
		          마이페이지
		        </a>
		      </li>
		      <li>
		        <a href="<%=request.getContextPath() %>/mypageupdate.do" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
		          내 정보 수정
		        </a>
		      </li>
		      <li>
		        <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
		          포인트
		        </a>
		      </li>
		      <li>
		        <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
		          찜 한 가게
		        </a>
		      </li>
		      <li>
		        <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
		          리뷰관리
		        </a>
		      </li>
		      <li>
		        <a href="<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		          주문내역
		        </a>
		      </li>
		    </ul>
		</div>
		
		
		<!-- 마이페이지 -->

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPage.css">

		<div class="col">
		
			<section class="title">
				<h1 style="text-align:center;">마이페이지</h1>
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