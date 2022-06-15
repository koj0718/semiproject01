<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/store/store_header.jsp" %>

	<script>
	
	</script>
	
	<style>

	</style>

		<div class="container">
		  <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3" style="cursor:pointer; text-align:center;">
		    <div class="col">
		      <div onclick="location.href='https://www.naver.com/';" class="p-3 border bg-light">주문확인</div>
		    </div>
		    <div class="col">
		      <div onclick="location.href='';" class="p-3 border bg-light">내 가게 정보</div>
		    </div>
		    <div class="col">
		      <div onclick="location.href='';" class="p-3 border bg-light">품질 메뉴 관리</div>
		    </div>
		    <div class="col">
		      <div onclick="location.href='';" class="p-3 border bg-light">영업일 관리</div>
		    </div>
		    <div class="col">
		      <div onclick="location.href='';" class="p-3 border bg-light">배달지역/배달요금</div>
		    </div>
		  </div>
		</div>
		
   		<hr class="my-4"><br>
   		
   		<div class="row">
   			<div class="col-md-8">
   			<!-- 베너 -->
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <!-- <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button> -->
				  </div>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="" class="d-block w-100" alt="배너이미지부분입니다 이미지는 미정입니다 - 스타일 주고 나서 삽입할 것(크기문제)">
				    </div>
				    <div class="carousel-item">
				      <img src="" class="d-block w-100" alt="배너이미지부분입니다 이미지는 미정입니다 - 스타일 주고 나서 삽입할 것(크기문제)">
				    </div>
				<!--     <div class="carousel-item">
				      <img src="http://cdn.tgdaily.co.kr/news/photo/202110/311920_75255_537.png" alt="...">
				    </div> -->
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
   			</div>
   			<div class="col-md-4">
   			<!-- 로그인 -->
        	<div class="own-login">
            	<div class="status-logout">
                <div class="login">
                    <div class="one-id">
                        <a href="https://ceo.yogiyo.co.kr/login?by_dowant=1"><button type="button" class="btn-own-login">로그인</button></a>
                        <a href="https://ceo.yogiyo.co.kr/sign-up"><button type="button" class="btn-own-login signup">회원가입</button></a>
                        <div class="id_pw_opt">
                            <a href="https://ceo.yogiyo.co.kr/forgot-id">아이디 찾기</a>
                            <a href="https://ceo.yogiyo.co.kr/forgot-password">비밀번호 찾기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   		</div>
   		</div>
   		
   		<hr class="my-4"><br>

<%@ include file="/views/store/store_footer.jsp" %>