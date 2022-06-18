<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>


	<!-- 마이페이지 사이드바 -->
	<div id="bodyContainer" class="col-12">
		<div id="myPageSidebars"class="col-4 row d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px; height:430px; float:left;">
		    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
		      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
		      <span class="fs-4">#####</span>
		    </a>
		    <hr>
		    <ul class="nav nav-pills flex-column mb-auto">
		      <li class="nav-item">
		        <a href="#" class="nav-link active" aria-current="page">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
		          #####
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
		          내 정보 수정
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
		          찜 한 가게
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
		          리뷰관리
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		          주문내역
		        </a>
		      </li>
		    </ul>
		</div>
		<!-- 사이드바 끝나는 부분 -->
		
		<div id="myPageContent" class="row col-8">
			<div class="row">
		      <div class="col-8 col-sm-6">
		      	<div><img src="#">프로필 사진</div>
		      	<div>@@@님 안녕하세요.</div>
		      </div>
		      <div class="col-4 col-sm-6">
		        nnnnnnnn 포인트
		      </div>
		    </div>
		    <hr>
		    <div style="height:80px;">
		    	@@@님은 @@@등급 입니다.
		    </div>
		</div>
		
	<ul id="list" class="list-group ">
	  <li class="list-group-item">An active item</li>
	  <li class="list-group-item">A second item</li>
	  <li class="list-group-item">A third item</li>
	  <li class="list-group-item">A fourth item</li>
	  <li class="list-group-item">And a fifth one</li>
	</ul>		
		
	</div>

<%@ include file="/views/common/footer.jsp" %>