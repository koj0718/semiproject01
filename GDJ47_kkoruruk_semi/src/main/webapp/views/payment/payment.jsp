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
  		
		<div class="col-md-7 col-lg-8" style="position: relative; left:200px;"> <!-- 주문자정보 -->
		
		    <h4 class="mb-3">◆ 주문자 정보</h4>
		    <form class="needs-validation" novalidate>
		    
		        <div class="col-md-7 col-lg-8 center">
		            <label for="address" class="form-label">주소</label>
		          	    <div class="col-8">
		                    <input type="text" class="address2" id="mapAddress" placeholder="<%=mapAddress %>" style="width:400px;">
		                </div>
		                <br>
						<%if(!detAddress.equals("")){ %>
		                <div class="col-8">
		                    <input type="text" class="address3" id="detAddress" placeholder="<%=detAddress %>" style="width:400px;">
		                </div>
		                <% }else{%>
		                <div class="col-8">
		                    <input type="text" class="address3" id="detAddress" placeholder="상세주소를 입력하세요.(동/호수)" style="width:400px;"><br>
		                </div>
		                
		                <%} %>
		                
		                <br>
		                
		                <!-- 클라이언트 hidden 정보 -->
		                <input type="hidden" id="nickname1" value="<%=loginMember.getMemNick() %>" name="nickname1"> 
		        		<input type="hidden" id="deleveryAddress2" value="<%=mapAddress %>" name="deleveryAddress2">
		        		<input type="hidden" id="deleveryAddress3" value="<%=detAddress %>" name="deleveryAddress3">
		        		<input type="hidden" id="hiddenphone" value="<%=loginMember.getMemPhone() %>" name="hiddenphone">
		        		<input type="hidden" id="hiddenemail" value="<%=loginMember.getMemEmail() %>" name="hiddenemail">
						
		                <div class="col-8">
		                    <input type="text" class="form-control" id="phone" style="width:400px;" placeholder="<%=loginMember.getMemPhone() %>" readonly><br>
		                    <input type="checkbox" class="form-check-input" id="same-address">
			            	<label class="form-check-label" for="same-address">안심번호 체크</label>
		                </div>
		        </div>
		        
		        <br> 
		        
		        <div class="col-md-5">
		            <label for="country">요청사항</label>
		            <select class="form-select" id="country" required name="request">
		                <option value="">주문요청사항을 선택해주세요.</option>
		                <option>아이가 먹을거니 마라탕 안맵게 해주세요^^</option>
		                <option>심부름:강원평창수1L.오로나민씨2개.고추참치</option>
		                <option>*맛집블로거* 파스타양마니주새오ㅎㅎ</option>
		                <option>7명에서 먹는대 치킨 마니주세요ㅠㅠ</option>
		                <option>첫주문 서비스 빵빵하게 아시져?ㅎ</option>
		                <option>픽업시간 확인하고 돌려보냅니다(일산 20년 토박이)</option>
		                <input type="checkbox" class="form-check-input" id="same-address">
		            	<label class="form-check-label" for="same-address">일회용 수저, 포크가 필요해요.</label>
		            	<p style="color:green">환경보호를 위해 꼭 필요할 때만 선택해주세요!</p>
		            </select>
		        </div>
		        
		        <hr class="my-4">
		        
	            
		        <h4 class="mb-3" style="font-size: 30px; text-align: center;">내 장바구니</h4>
				
				<div class="store_name1" style="font-size: 40px; font-weight: bold;"><%=cartList.getStoreName() %></div>
				<hr class="my-4">
				<ul style="list-style-type:none;">
					
  					<%for(int j=0;j<cartList.getCart().size();j++) {%>
						<li>
							<div class="food_name_box">
								<div class="food_name" style="font-size: 25px;"><%=cartList.getCart().get(j).getFoodName() %></div>
								<div><i class="fas fa-times delete"></i></div>							
							</div>
							<div class="price" style="font-size: 20px;">ㆍ기본가격 <%=cartList.getCart().get(j).getFoodPrice() %> 원</div>
									
									<%if(cartList.getCart().get(0).getOptionName()!=null) {%>
									<%for(int i=0; i<cartList.getCart().get(j).getOptionName().length; i++) {%>
									<div class="menu_option"> 

										<span>+ <%=cartList.getCart().get(j).getOptionName()[i] %></span>
										<span><%=cartList.getCart().get(j).getOptionPrice()[i] %> 원</span>							
									</div>
										<%} %>
									<%} %>
							
							<div class="amount">
								<div class="sum" style="font-size: 25px;">
									<%=cartList.getCart().get(j).getTotalPrice() %> 원
								</div>
								<hr class="my-4">
								<!-- 메뉴 하나 총합 -->
<%-- 								<div class="amount_box">
				                    <button type="button" class="minus">-</button>
				                    <input type="number" class="amount_text" min="1" value="<%=cartList.getCart().get(j).getAmount() %>" readonly >
				                    <button type="button" class="plus">+</button>
			                   </div> --%>
							</div>
							
						</li>
					<%} %>
 					
				</ul>
     
	    
	        </div> <!-- 주문자정보 끝 -->
	
	        
	          
	        <div class="col-md-7 col-lg-8" style="position: relative; left:200px;">
	        
	          
	        
	        <hr class="my-4">
	
 	        <h4 class="mb-3">◆ 결제</h4>
 	        
			<div class="container">
        		<div class="row">
            		<div class="col">
                		총 상품금액
            		</div>
            		<div class="col">
                		<%=cartList.getCartTotal() %>
            		</div>
        		</div>
    		</div>
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		배달팁
            		</div>
            		<div class="col">
                		<%=cartList.getDeleveryTip() %>
            		</div>
        		</div>
    		</div>
    		
    		
    		<hr class="my-4">
    		
    		<div class="container">
        		<div class="row">
            		<div class="col">
                		총 결제 예상금액
            		</div>
            		<div class="col" class="total" id="totalPrice">
                		<%=cartList.getCartTotal()+cartList.getDeleveryTip() %>
            		</div>
        		</div>
    		</div>
    		
    		<br>
			
			<div>
  				<label><input type="radio" id="onlinePay" name="paymentType" value="온라인결제" checked="checked">온라인결제</label>
	        	<label><input type="radio" id="directPay" name="paymentType" value="만나서결제">만나서결제</label>
			</div>
			
	    	</form>
	    	
        	<hr>
        	
        	<!-- hidden -->
        	<input type="hidden" value="${userId }" id="userId">
        	<input type="hidden" value="${orderNum }" id="orderNum">
        	
			<div>
				<button onclick="payment()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="온라인결제">온라인 결제하기</button>
				<button onclick="payment()" id="diPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="만나서결제">만나서 결제하기</button>
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
   				payMethod : $("input[type='radio']:checked").val(),
   				orderNum: rndOrderNum(),
   				name: $(".store_name1").text(),
   				phone: $("#hiddenphone").val(),
   				request: $("select[name='request']").val(),
   	/*  			usedPoint: $("input[name='usedPoint']").val(), */
   	 			nickname: $("#nickname1").val(),
   	 			email: $("#hiddenemail").val(),
   				deleveryAddress2: $("#deleveryAddress2").val(),
   				deleveryAddress3: $("#deleveryAddress3").val(),
   				totalPrice: $("#totalPrice").text()
   			}
			
			if(!data.deleveryAddress2) {
				alert('배달 받으실 주소를 입력해 주세요')
				return;
			} if($(".food_name_box").length<1) {
				return;
			} if(!data.phone) {
				alert('전화번호를 입력해주세요');
				return;
			} if(data.payMethod=="만나서결제") {
				paymentCash(data);
				return;
			}
			paymentCard(data);
		}
   		
  		/* 만나서결제 */
    		function paymentCash(data){
  			
  				alert("주문이 완료되었습니다.");
  				location.href='http://localhost:9090/GDJ47_kkoruruk_semi/views/payment/paymentComplete.jsp';
	
/* 			$.ajax({
				url: "http://localhost:9090/GDJ47_kkoruruk_semi/",
		        method: "POST",
		        data: data,
			})
 			.done(function() {
					
		        alert({
					text: "주문이 완료되었습니다.",
					closeOnClickOutside : false
				})
				.then(function(){
					location.replace("/");
				})
				
			})
		    .fail(function() {
				alert("에러");
				location.replace("/");
			}) */
		}
		
  		/* 온라인결제 */
	    function paymentCard(data) {
			
			var IMP = window.IMP;
			IMP.init("imp87022146");
			
	        // 결제창 호출
	        IMP.request_pay({ // param
	        	
                pg: "html5_inicis",
               	pay_method: "card",
               	merchant_uid: rndOrderNum(),
               	name: data.name,
 	           	amount: data.totalPrice,
/*   	           	amount: 100, */
          		buyer_email: data.email,
               	buyer_name: data.nickname,
          		buyer_tel: data.phone,
          		buyer_addr: data.deleveryAddress2+" "+data.deleveryAddress3,
           		buyer_postcode: "08378",
   	            m_redirect_url: "http://localhost:9090/GDJ47_kkoruruk_semi/"
 	            
	        },
	        
	        function(rsp) { // callback
	        	
	            if (rsp.success) { // 성공로직
	            	
   	            	paymentComplete(data); 
    	
					/* 테스트용 */
/*   	            	var msg="주문성공";
	            	msg+='고유ID : '+rsp.imp+uid;
	            	msg+='상점거래ID : '+rsp.merchang_uid;
	            	msg+='결제금액 : '+rsp.paid_amount;
	            	msg+='카드승인번호 : '+rsp.apply_num; */
	            	
	            	
	            } else { // 실패로직
					
	            	var msg='결제실패 : ';
	            	msg+=rsp.error_msg;
	            	
	            }
	        	alert(msg);
	        	console.log(rsp);
	        });
	      }
  		
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
					location.replace("/order.do");
				})
				
			}) // done 
		    .fail(function() {
  				alert("주문성공");
				location.replace("http://localhost:9090/GDJ47_kkoruruk_semi/");
			}) 
		}
	  
  </script>
  
	<%@ include file="/views/common/footer.jsp" %> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="form-validation.js"></script>
</body>
</html>