<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- 마이페이지 사이드바 -->
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
		        <a href="<%=request.getContextPath()%>/checkOrder.do %>" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		          주문내역
		        </a>
		      </li>
		    </ul>
		</div>
		<!-- 사이드바 끝나는 부분 -->
		
		<%-- <%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %> --%>
		<!-- 주문내역 해당 아이디의 주문내역이 필요하니 loginId가 필요한데 LoginMember를 못 불러옴 import를 이 곳에 할 순 없음.-->
		