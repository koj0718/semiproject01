<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Checkout example · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/checkout/">

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      div {
      	border : 1px solid darkgray; 
      }
    </style>

    
    <!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
	    <img class="d-block mx-auto mb-4" src="..." alt="" width="100%" height="100%">
	    헤더부분@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	    <h2>주문하기</h2>
	    <p class="lead">설명란@@@@@@@@@@@@???????????? 필요???????</p>
	</div>
  
<div class="col-md-7 col-lg-8"> <!-- 주문자정보 -->
    <h4 class="mb-3">1. 주문자 정보</h4>
    <form class="needs-validation" novalidate>
        <div class="col-md-7 col-lg-8 center">
            <label for="address" class="form-label">주소</label>
          	    <div class="col-8 text-center">
                    <input type="text" class="form-control" id="address" placeholder="원래는주소고정값받아오기" required>
                </div>
                <br>
                <div class="col-8">
                    <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력하세요 (건물명, 동/호수 등)"><br>
                </div>
                <div class="col-8">
                    <input type="text" class="form-control" id="phone" placeholder="휴대전화번호를 입력하세요"><br>
                    <input type="checkbox" class="form-check-input" id="same-address">
	            	<label class="form-check-label" for="same-address">안심번호 체크</label>
                </div>
            
        </div>
        <br> 
        <div class="col-md-5">
            <label for="country" class="form-label">요청사항</label>
            <select class="form-select" id="country" required>
                <option value="">주문요청사항을 선택해주세요.</option>
                <option>배송전연락바람</option>
                <option>벨x 등등</option>
                <option>@@@@@@</option>
                <option>@@@@@@</option>
                <option>@@@@@@</option>
                <input type="checkbox" class="form-check-input" id="same-address">
            	<label class="form-check-label" for="same-address">일회용 수저, 포크가 필요해용</label>
            	<p style="color:green">환경보호를 위해 꼭 필요할 때만 선택해주세요!</p>
            </select>
        </div>
        <br>
          
        <div>주문메뉴정보
            <div><img src="https://pelicana.co.kr/resources/images/menu/original_menu01_200529.png" style="width:200px; height:200px;">사진</div>
            <div>선택한 메뉴</div>
            <div>선택한 메뉴옵션</div>
            <div>가격</div>	
        </div>

        <hr class="my-4">
          
        <div class="col-md-7 col-lg-8">
          	<h4 class="mb-3">2. 할인/포인트</h4>
          	<div>포인트
          		<div>선택한 포인트</div>
          		<button>모두 사용</button>
          		<div>사용가능 포인트</div>
          		<div>총 보유 포인트</div>
          	</div>
        </div>
          
        <hr class="my-4">

        <h4 class="mb-3">3. 결제수단</h4>

		<div>온라인결제<br>
		    <input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">신용카드</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">네이버페이</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">카카오페이</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">PAYCO</label>
		  	<br>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">휴대폰</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">페이코인</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">Smilypay</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">LPAY</label>
		</div>
        <br>
		<div>만나서 결제<br>
		    <input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">만나서 카드결제</label>
		  	<input type="checkbox" class="form-check-input" id="same-address">
		  	<label class="form-check-label" for="same-address">만나서 현금결제</label>
		</div>

        <hr class="my-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">결제하기</button>
    </form>
</div>
</div>
</main>

<footer class="my-5 pt-5 text-muted text-center text-small">
    <h1 class="mb-1">&copy;♥footer♥</h1>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">배고파</a></li>
      <li class="list-inline-item"><a href="#">꼬르르륵</a></li>
      <li class="list-inline-item"><a href="#">꼬르륵</a></li>
    </ul>
</footer>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="form-validation.js"></script>
</body>
</html>