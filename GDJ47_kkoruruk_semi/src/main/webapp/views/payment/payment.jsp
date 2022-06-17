<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>

  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>결제</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/checkout/">

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
  
    <div class="my-5 pt-5 text-muted text-center text-small">
        <h1 class="mb-1">&copy;header</h1>
    </div>
        
        
    <div class="py-5 text-center">
	    <h2>주문하기</h2>
	    <p class="lead">설명란@@@@@@@@@@@@???????????? 필요???????</p>
	</div>
  
	<div class="col-md-7 col-lg-8"> <!-- 주문자정보 -->
	    <h4 class="mb-3">1. 주문자 정보</h4>
	    <form class="needs-validation" novalidate>
	        <div class="col-md-7 col-lg-8 center">
	            <label for="address" class="form-label">주소</label>
	          	    <div class="col-8 text-center">
	                    <input type="text" class="form-control" id="address" placeholder="주소 고정값 가져오기" required>
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
	                <option>(직접입력)</option>
	                <input type="checkbox" class="form-check-input" id="same-address">
	            	<label class="form-check-label" for="same-address">일회용 수저, 포크가 필요해용</label>
	            	<p style="color:green">환경보호를 위해 꼭 필요할 때만 선택해주세요!</p>
	            </select>
	        </div>
	        <hr class="my-4">
	        <br>
	          
	        <div class="container">
	            <div><img src="https://pelicana.co.kr/resources/images/menu/original_menu01_200529.png" style="width:200px; height:200px;">사진</div>
        		<div class="row">
            		<div class="col">
                		선택한 메뉴
            		</div>
            		<div class="col">
                		메뉴이름
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		메뉴 옵션
            		</div>
            		<div class="col">
                		+(옵션명)n원<br>
                		+<br>
                		+
            		</div>
        		</div>
    		</div>
	        </div>
	
	        <hr class="my-4">
	          
	        <div class="col-md-7 col-lg-8">
	          	<h4 class="mb-3">2. 할인/포인트</h4>
	          	
	        <div class="container">
        		<div class="row">
            		<div class="col">
                		포인트
            		</div>
            		<div class="col">
                		n
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		사용가능한 포인트
            		</div>
            		<div class="col">
						n
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		선택한 포인트
            		</div>
            		<div class="col">
                		-n원
            		</div>
        		</div>
        		<div class="row">
            		<div class="col">
                		총 보유 포인트
            		</div>
            		<div class="col">
                		n
            		</div>
        		</div>
    		</div>
	        
	        <hr class="my-4">
	
 	        <h4 class="mb-3">3. 결제</h4>
 	        
			<div class="container">
        		<div class="row">
            		<div class="col">
                		총 상품금액
            		</div>
            		<div class="col">
                		n원
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		배달팁
            		</div>
            		<div class="col">
                		+n원
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		적립금 사용
            		</div>
            		<div class="col">
                		-n원
            		</div>
        		</div>
    		</div>
    		
    		<hr class="my-4">
    		
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		총 결제 예상금액
            		</div>
            		<div class="col">
                		n원
            		</div>
        		</div>
    		</div>
    		
    		<br>
	
<!-- 				<div>온라인결제<br>
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
				</div> -->

	    	</form>
	    	
 	    	<label><input type="radio" name="paymentType" value="온라인결제">온라인결제</label>
        	<label><input type="radio" name="paymentType" value="만나서결제" checked="checked">만나서결제</label>
        	
        	
        	
        	<hr>
	    	
			<div>
				<button onclick="requestPay()" class="w-100 btn btn-primary btn-lg" type="submit">결제하기</button>
			</div>
		</div>
	</div>
	
  <script>
	  
  		/* import */
	    function requestPay() {
			
			var IMP = window.IMP; // 생략 가능
			IMP.init("imp87022146"); // 예: imp00000000 */
			
	        // IMP.request_pay(param, callback) 결제창 호출
	        IMP.request_pay({ // param
	            pg: "html5_inicis",
	            pay_method: "card",
/* 	            merchant_uid: "ORD20180131-0000011", */
 	            merchant_uid: 'merchant'+new Date().getTime(),
	            name: "결제테스트",
	            amount: 100,
	            buyer_email: "gildong@gmail.com",
	            buyer_name: "홍길동",
	            buyer_tel: "010-4242-4242",
	            buyer_addr: "서울특별시 강남구 신사동",
	            buyer_postcode: "01181"
	            /* m_redirect_url : 모바일결제만 설정 -> 랜딩URL */
	            
	        }, function (rsp) { // callback
	        	
	            if (rsp.success) {
					
	            	var msg="주문완료";
	            	msg+='고유ID : '+rsp.imp+uid;
	            	msg+='상점거래ID : '+rsp.merchang_uid;
	            	msg+='결제금액 : '+rsp.paid_amount;
	            	msg+='카드승인번호 : '+rsp.apply_num;
	            	
	            } else {
					
	            	var msg='결제실패!!!!';
	            	msg+='(에러 : '+rsp.error_msg+')';
	            	
	            }
	        	alert(msg);
	        	console.log(rsp); /* 콘솔 확인용 */
	        });
	      }
	  
  </script>
  
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