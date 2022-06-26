<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.menu.model.vo.Menu" %>
<%@ page import="com.siksin.store.model.vo.Store" %>    
<%
	Store s=(Store)request.getAttribute("store");
	List<Menu> menuList=(List<Menu>)request.getAttribute("menuList");
%>


 <div id="wrap">
    <nav>	 
        <h1 id="store_name" data-store_name="<%=s.getStoreName() %>" ><%=s.getStoreName() %></h1>
		<div class="inf">
			<div>
				<%-- 
				<span class="score_box">
             		<c:forEach begin="0" end="4" var="i">
             			<c:choose>
	           				<c:when test="${Math.round(info.score) > i }">
		                   		<i class="far fas fa-star"></i>
		                   	</c:when>
		                   	<c:otherwise>
		                   		<i class="far fa-star"></i>
		                   	</c:otherwise>
             			</c:choose> 
             		</c:forEach>
                  		
                  	<span class="store_score" data-score="${info.score }">${info.score }</span>
                  	
				</span><br>
                 --%>
                   
           		<span><i class="fas fa-heart" ></i> 찜 </span>
                   	
                    
                <span class="likes_count" data-count=0 >0</span>
                  
			</div>
				<div>
               		<span class="store_review_count" data-review_count="0"> 리뷰 0 </span>
               		
               		<span>사장님 댓글 0</span>
            	</div>				
		                
               	<div id="min_delevery" data-min_delevery="<%=s.getMinDelevery() %>">최소주문금액 <%=s.getMinDelevery() %>원</div>
               	<div>예상 배달시간 <%=s.getDeleveryTime() %>분</div>
               	<div id="delevery_tip" data-delevery_tip="<%=s.getDeleveryTip() %>">배달팁 <%=s.getDeleveryTip() %>원</div>
		</div>
    </nav>
	


    
    
	<!-- 장바구니 -->    
    <aside id="cart">
        <div class="cart">	
            <h2>장바구니</h2>
            <i class="far fa-trash-alt deleteAll" ></i>
            
            <div class="cart_list">
	            <ul>
	            	<!-- 
					<li>
						<h3>메뉴</h3>
  							<div>가격</div>
  							<div>수량 : 0 </div>
  							<div> 옵션  </div>
  							<div>합계 : 0원</div>
  							<button class="cancle_btn"> ｘ </button> 
		            </li>
  							-->
	            </ul>
            </div>
            
            <div class="order_btn_box">
            	<div class="total">장바구니가 비었습니다.</div>
	            <button class="order_btn" disabled>주문하기</button>
            </div>
        </div>
        
    </aside>
    <div class="alarm">장바구니에 담았습니다</div>
	<!-- 장바구니 -->    
	   

	<main>
		<div class="offset"></div>
        <ul class="tab ">
            <li class="select">메뉴</li>
            <li>정보</li>
            <li>리뷰</li>
        </ul>
	
			
		<!-- 메뉴 탭 -->	
        <ul class="menu">
        <%for(Menu m : menuList){ %> 
	            <li>	            		             		                             
	                <div class="menu_box">
	                    <div>
							<h2><%=m.getMenuName()%> </h2>		                    
   		                   	<%=m.getMenuPrice() %>원
		                    <input type="hidden" value="<%=m.getStoreId() %> }" name="storeId" >
				            <input type="hidden" value="<%=m.getMenuId()%>" name="foodId" class="food_id"   >
				            <input type="hidden" value="<%=m.getMenuName()%>" name="foodName" class="food_name" >
				            <input type="hidden" value="<%=m.getMenuPrice()%>" name="foodPrice" class="food_price"   >
				            <input type="hidden" value="<%=m.getMenuDec()%>" name="foodDec" class="food_dec"   >
				            <input type="hidden" value="<%=m.getMenuImg() %>" name="foodImg" class="food_img"   >
				            <input type="hidden" value="<%=m.getMenuThumb()%>" name="foodThumb" class="food_thumb"   >
		                </div>
		                
                    	<div><img src="<%=m.getMenuImg() %>" alt="이미지"></div>
                    </div>
	             </li>
	        <%} %>
        
        
        
        
        </ul>
			
		
		<!-- 정보 탭 -->
	    <ul class="info" >
	    
	    
	    
	       
	    </ul>
	   
	
		
		
		<!-- 리뷰 탭 -->        
		<ul class="comment" >
	    
	    
	    
	        
		</ul>
	</main>
</div>

	
	<input type="hidden" value="<%=s.getStoreId() %>" id="store_id">
	<input type="hidden" value="<%=s.getStoreCategory() %>" id="store_category">  
	<input type="hidden" value="<%=s.getOpeningTime() %>" id="store_opening_time"> 
	<input type="hidden" value="<%=s.getClosingTime() %>" id="store_closing_time"> 	
	<input type="hidden" value="<%=s.getStoreAddress2() %> " id="delevery_address">
	
	




 