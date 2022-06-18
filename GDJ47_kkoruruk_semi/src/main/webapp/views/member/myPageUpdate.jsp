<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>


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
		        <a href="#" class="nav-link active" aria-current="page">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
		          마이페이지
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
		
		<section class="title">
			<h1>내 정보 수정</h1>
		</section>
		<br>
		
		<div class="col">
			
			<div id="myPageContent" class="row col-8">

	            <label for="address" class="form-label">주소</label>
	          	    <div class="col-8">
	                    주소<input type="text" class="form-control" id="address" placeholder="주소 고정값 가져오기" required>
	                </div>
	                <br>
	                <div class="col-8">
	                    <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력하세요 (건물명, 동/호수 등)"><br>
	                </div>
	                <div class="col-8">
	                    <input type="text" class="form-control" id="phone" placeholder="휴대전화번호를 입력하세요"><br>
	                </div>
			<button onclick="requestPay()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit">수정하기</button>
			</div>
			
			<br>
			
			<div id="myPageContent" class="row col-8">
				<button onclick="requestPay()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" style="background-color:tomato;">회원탈퇴</button>
			</div>
			
		</div>
		<!-- 회원탈퇴 버튼 같이 만들기 -->
	</div>

<%@ include file="/views/common/footer.jsp" %>