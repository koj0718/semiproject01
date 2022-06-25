<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %>

<%@ page import="com.siksin.order.model.vo.CartList" %>
<%@ page import="com.siksin.order.model.vo.Cart" %>

<%@ page import="java.util.List" %>  

<%
	CartList cartList=(CartList)request.getAttribute("cartList");
	Cart cc=cartList.getCart().get(0);
%>

  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  
<style>

</style>

<div class="container">
        
    <div class="py-5 text-center">
	    <h2>주문하기</h2>
	</div>
  
		<div class="col-md-7 col-lg-8"> <!-- 주문자정보 -->
		
		    <h4 class="mb-3">1. 주문자 정보</h4>
		    <form class="needs-validation" novalidate>
		    
		        <div class="col-md-7 col-lg-8 center">
		            <label for="address" class="form-label">주소</label>
		          	    <div class="col-8 text-center">
		                    <input type="text" class="form-control" id="address" placeholder="">
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력하세요 (건물명, 동/호수 등)"><br>
		                </div>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="phone" placeholder="<%=loginMember.getMemPhone() %>" readonly><br>
		                    <input type="checkbox" class="form-check-input" id="same-address">
			            	<label class="form-check-label" for="same-address">안심번호 체크</label>
		                </div>
		        </div>
		        
		        <br> 
		        
		        <div class="col-md-5">
		            <label for="country" class="form-label">요청사항</label>
		            <select class="form-select" id="country" required>
		                <option value="">주문요청사항을 선택해주세요.</option>
		                <option>배송 전 연락 바랍니다.</option>
		                <option>벨 누르지 말아주세요.</option>
		                <option>기사님이 드세요.</option>
		                <input type="checkbox" class="form-check-input" id="same-address">
		            	<label class="form-check-label" for="same-address">일회용 수저, 포크가 필요해요.</label>
		            	<p style="color:green">환경보호를 위해 꼭 필요할 때만 선택해주세요!</p>
		            </select>
		        </div>
		        
<%-- 		        <h4>주문 메뉴 정보</h4>
		        <div class="orderDetail">
		            <div><img src="" style="width:200px; height:200px;">메뉴사진</div>
	        		<div class="row">
	            		<div class="col">
	                		메뉴명
	            		</div>
	            		<%for() { %>
	            		<div class="col">
	                		<%=cartList.getCart() %>
	            		</div>
	            		<% } %>
	        		</div>
	    		</div>
	    		<div class="menuOption">
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
	    		</div> --%>
	    		
<%-- 	    		  <ul class="menu">
					<h2>주문정보</h2>
					
					<%for(int i=0; i<cartList.getCart().size(); i++) { %> 
					
               			<li>
               			<h4><%=cartList.getCart().get(i).getFoodName() %></h4>
               			
               			                          
                   			<div class="menu_box">
                   			
					<% for(int j=0; j<cartList.getCart().get(i).getOptionName().length; j++) { %>
					
		                     <div>
		                     <h4><%=cartList.getCart().get(i).getOptionName() %></h4>                          
		                               

		                      </div>
		                      
		                      <% } %>
		                      
		                      <div><img src="" alt="이미지">사진자리</div>
		                    </div>
		                </li>
		                
		            <% } %> --%>
		            
		        <h2>주문정보</h2>
				
				<ul>
					
<%-- 						<%for(CartList c : cartList) { %> --%>
						<li>
							<div class="food_name_box">
								<div class="food_name">${cart[j].foodName }</div>
								<div><i class="fas fa-times delete"></i></div>
							</div>
							<div class="price">ㆍ기본가격 <fm:formatNumber value="${cart[j].foodPrice }"  pattern="###,###" />원</div>
						
							
								
									<div class="menu_option"> 
										<span>ㆍ${cart[j].optionName[i]  }</span>
										<span><fm:formatNumber  value="${cart[j].optionPrice[i] }" pattern="###,###" />원</span>
									</div>
							
							<div class="amount">
								<div class="sum">
									<fm:formatNumber value="${cart[j].totalPrice }" pattern="###,###" />원
								</div>
								<!-- 메뉴 하나 총합 -->
								<div class="amount_box">
				                    <button type="button" class="minus">-</button>
				                    <input type="number" class="amount_text" min="1" value="${cart[j].amount }" readonly >
				                    <button type="button" class="plus">+</button>
			                   </div>
							</div>
							
						</li>
						
<%-- 					<% } %> --%>
				</ul>


        
	    
	        </div> <!-- 주문자정보 끝 -->
	
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
                		선택한 포인트
            		</div>
            		<div class="col">
                		-n원
            		</div>
        		</div>
        		<div class="row">
            		<div class="col">
                		사용 후 포인트
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
	
<!--  			<div>온라인결제<br>
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
				
 				<label><input type="radio" id="onlinePay" name="paymentType" value="온라인결제" checked="checked">온라인결제</label>
	        	<label><input type="radio" id="directPay" name="paymentType" value="만나서결제">만나서결제</label>

	    	</form>
	    	
        	<hr>
        	
        	<!-- hidden -->
        	<input type="hidden" value="${userId }" id="userId">
        	<input type="hidden" value="${orderNum }" id="orderNum">
        	
			<div>
				<button onclick="paymentCard()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="온라인결제">온라인 결제하기</button>
				<button onclick="paymentCard()" id="diPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="만나서결제">만나서 결제하기</button>
			</div>
		</div>
	</div>
	
   <script>
		
  		/* 온라인결제 버튼 */
  		$("#onlinePay").click(function(){
  			$("#onPayBtn").show();
  			$("#diPayBtn").hide();
  			$("input:radio[name='paymentType'][value='온라인결제']").prop("checked", true);	
  		});
  		/* 만나서결제 버튼 */
  		$('#diPayBtn').hide(); /* 기본 숨겨두기 */
  		$("#directPay").click(function(){
  			$("#diPayBtn").show();
  			$("#onPayBtn").hide();
  			$("input:radio[name='paymentType'][value='만나서결제']").prop("checked", true);
  		});
  		
  		/* 랜덤 주문번호 생성 */
  		function rndOrderNum() {
			const date=new Date();
			const year=date.getFullYear();
			const month=String(date.getMonth()+1).padStart(2, "0");
			const day=String(date.getDate()).padStart(2, "0");
			
			let orderNum=year+month+day;
			for(let i=0;i<10;i++) {
				orderNum+=Math.floor(Math.random()*8);	
			}
			
			return orderNum;
		}
  		
  		/* 결제 */
  		function payment(){
			
			const data= {
				payMethod: $("button[type='submit']:checked").val(),
				orderNum: rndOrderNum(),
				name: $(".orderDetail").eq(0).find(".menuName").text(),
				amount: Number($("#total").val()) - Number($(".pointInput").val()),
				phone: $("input[name='phone']").val(),
				request: $("textarea[name='request']").val(),
				usedPoint: $("input[name='usedPoint']").val(),
				deleveryAddress1: $("#deleveryAddress1").val(),
			 	deleveryAddress2: $("#deleveryAddress2").val(),
			 	deleveryAddress3: $("#deleveryAddress3").val(),
			 	totalPrice: $("#total").val()
			}
			
			if(!data.deleveryAddress1 || !data.deleveryAddress2 ) {
				alert('배달 받으실 주소를 입력해 주세요')
				return;
			}
			
			if($(".order_info li").length < 1) {
				return;
			}
			
			if(!data.phone) {
				alert('전화번호를 입력해주세요');
				return;
			}
			
			if(data.payMethod == "만나서결제") {
				paymentCash(data);
				return;
			}
			paymentCard(data);
		}
  		
	  
  		/* 온라인결제 */
	    function paymentCard(data) {
  			
    		const pathName=location.pathname;
  			const href=location.href;
  			const m_redirect=href.replaceAll(pathName, ""); 
			
			var IMP = window.IMP;
			IMP.init("imp87022146");
			
	        // 결제창 호출
	        IMP.request_pay({ // param
	        	
   	            pg: "html5_inicis",
	            pay_method: data.payMethod,
 	            merchant_uid: data.orderNum,
	            name: data.name,
	            amount: data.amount,
	            buyer_email: "",
	            buyer_name: "",
	            buyer_tel: data.phone,
	            buyer_addr: data.deleveryAddress2+" "+data.deleveryAddress3,
	            buyer_postcode: data.deleveryAddress1,
	            m_redirect_url : m_redirect,
	            	
	            	/* 테스트용 */
/*    		            pg: "html5_inicis",
		            pay_method: "card",
	 	            merchant_uid: "ORD20180131-0000011",
	 	            merchant_uid: 'merchant'+new Date().getTime(),
		            name: "결제테스트",
		            amount: 100,
		            buyer_email: "gildong@gmail.com",
		            buyer_name: "홍길동",
		            buyer_tel: "010-4242-4242",
		            buyer_addr: "서울특별시 강남구 신사동",
		            buyer_postcode: "01181" */
		            /* m_redirect_url : 모바일결제만 설정 -> 랜딩URL */
	            
	        },
	        
	        function (rsp) { // callback
	        	
	            if (rsp.success) { // 성공로직
	            	
  	            	data.impUid=rsp.imp_uid;
	            	data.merchant_uid=rsp.merchant_uid;
	            	paymentComplete(data);
	            	
					/* 테스트용 */
/*   	            	var msg="주문완료";
	            	msg+='고유ID : '+rsp.imp+uid;
	            	msg+='상점거래ID : '+rsp.merchang_uid;
	            	msg+='결제금액 : '+rsp.paid_amount;
	            	msg+='카드승인번호 : '+rsp.apply_num; */
	            	
	            } else { // 실패로직
					
	            	var msg='결제실패!!!!';
	            	msg+='(에러 : '+rsp.error_msg+')';
	            	
	            }
	        	alert(msg);
	        	console.log(rsp);
	        });
	      }
  		
  		/* 만나서결제 */
  		
  		/* 결제완료 */
 		function paymentComplete(data) {
			
			 $.ajax({
				url: "/views/payment/paymentComplete.jsp",
		        method: "POST",
		        data: data,
			})
			
			.done(function(result) {
				messageSend();
		        alert({
					text: result,
					closeOnClickOutside : false
				})
				.then(function(){
					location.replace("/orderList"); // 장바구니 주소확인
				})
				
			}) // done 
		    .fail(function() {
				alert("에러");
				location.replace("/");
			}) 
		}
  		
	  
  </script>
  
	<%@ include file="/views/common/footer.jsp" %> 
	
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="form-validation.js"></script>
</body>
</html>