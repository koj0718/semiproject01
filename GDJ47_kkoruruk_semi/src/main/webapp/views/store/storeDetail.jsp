<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>   
<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.menu.model.vo.Menu" %>
<%@ page import="com.siksin.store.model.vo.Store" %>
<%
	Store s=(Store)request.getAttribute("store");
	List<Menu> menuList=(List<Menu>)request.getAttribute("menuList");
%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/store/storeDetail.css">    

<main class="container">
  <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">사진자리</h1>   
    </div>
  </div>

  

  <div class="row g-5">
    <div class="col-md-8">
    
	    <div class="restaurant-info">
	      <div class="restaurant-title">
	        <span class="restaurant-name ng-binding" ng-bind="restaurant.name"><%=s.getStoreName() %></span>
	      </div>
	      <hr>
	      <div class="restaurant-content">
	        <div ng-show="restaurant|restaurant_is_open" class="logo" ng-style="{'background-image':'url(' + get_logo_url(restaurant.logo_url) + '), url(\'image/default_restaurant_logo.png\')'}" style="background-image: url(&quot;https://rev-static.yogiyo.co.kr/restaurant_logos/20220304170321577209_업체자체_20220304_1058013_거기시켜덮밥n간식-구디직영점_대표사진_300x300.jpg&quot;), url(&quot;image/default_restaurant_logo.png&quot;);"></div>
	        <div ng-show="! (restaurant|restaurant_is_open)" class="logo not-available ng-binding ng-hide">사진없음</div>
	        <ul class="list">
	          <li>
		          <span class="stars star-point ng-binding">
		          <!-- ngRepeat: i in restaurant.review_avg|number_to_array track by $index -->
		          <span class="full ng-scope" ng-repeat="i in restaurant.review_avg|number_to_array track by $index">★</span>	
		          <!-- end ngRepeat: i in restaurant.review_avg|number_to_array track by $index -->
		          <span class="full ng-scope" ng-repeat= "i in restaurant.review_avg|number_to_array track by $index">★</span>
		          <!-- end ngRepeat: i in restaurant.review_avg|number_to_array track by $index -->
		          <span class="full ng-scope" ng-repeat="i in restaurant.review_avg|number_to_array track by $index">★</span>
		          <!-- end ngRepeat: i in restaurant.review_avg|number_to_array track by $index -->
		          <span class="full ng-scope" ng-repeat="i in restaurant.review_avg|number_to_array track by $index">★</span>
		          <!-- end ngRepeat: i in restaurant.review_avg|number_to_array track by $index --><!-- ngRepeat: i in (5.9 - (restaurant.review_avg|number:1))|number_to_array track by $index -->
		          <span class="empty ng-scope" ng-repeat="i in (5.9 - (restaurant.review_avg|number:1))|number_to_array track by $index">★</span>
		          <!-- end ngRepeat: i in (5.9 - (restaurant.review_avg|number:1))|number_to_array track by $index -->
		          4.9</span>
	           </li>
	          
	           <li>영업시간 : <span><%=s.getOpeningTime() %>~<%=s.getClosingTime() %></span></li>
	           <!-- <li ng-show="show_discount_description()" class="discount-desc ng-hide"><span class="ng-binding"></span></li> -->
	           
	           <li>최소주문금액 <span class="ng-binding"><%=s.getMinDelevery() %></span></li>
	           <!--li class="restaurant-address">위치 : <span>{{restaurant.address|trim_address|normalize_address}}</span></li-->
	
		       <li class="">결제
			       <span ng-show="restaurant.payment_methods.indexOf(&quot;creditcard&quot;) >= 0" class="ico-payment-yogiyo">신용카드</span>
			       <span ng-show="restaurant.payment_methods.indexOf(&quot;creditcard&quot;) >= 0 &amp;&amp; !restaurant.except_cash" class=""> , </span>
			       <span ng-show="!restaurant.except_cash" class="ico-payment-yogiyo">현금</span>			      
		       </li>
		       
	           <li class="delivery-time-tooltip" ng-show="restaurant.estimated_delivery_time">배달시간
	            <span class="ng-binding"><%=s.getDeleveryTime() %></span>
	          </li>
	                            
	        </ul>
	      </div>
	
	      <div class="clearfix"></div>
	    </div>
	    
	    <div class="owner_intro_message" ng-show="restaurant_info.introduction_by_owner" ng-click="toggle_tab(&quot;info&quot;, &quot;owner_alarm&quot;)" id="">
	      <strong>사장님알림</strong>
	      <span class="tc ng-binding">문의사항 및 불편사항은 언제든지 매장으로 연락주세용! </span>
	    </div> 
	        
	    <ul class="nav nav-tabs restaurant-tab">
	      <li class="active"><a data-toggle="tab">메뉴 <span class="ng-binding">34</span></a></li>
	      <li><a data-toggle="tab">클린리뷰 <span class="ng-binding">273</span></a></li>
	      <li><a data-toggle="tab">정보</a></li>
	    </ul>
	    
	       <article class="blog-post">    
        <h2 class="blog-post-title">대표메뉴</h2>   
        <div class="row g-5">
	        <div class="col-md-3">
	        	<div>사진</div>
	        	<div>허니순살</div>
	        	<div>19500</div>     
	        </div>
	        <div class="col-md-3">
	        	<div>사진</div>
	        	<div>허니순살</div>
	        	<div>19500</div>     
	        </div>
	        <div class="col-md-3">
	        	<div>사진</div>
	        	<div>허니순살</div>
	        	<div>19500</div>     
	        </div>
	        <div class="col-md-3">
	        	<div>사진</div>
	        	<div>허니순살</div>
	        	<div>19500</div>     
	        </div>
        </div>
               
        <hr>
        
      </article>
      
		
		
		
      <article class="blog-post">     
     <%for(Menu m : menuList){ %> 
     <form>  	
      	<div onclick="window.open('<%=request.getContextPath() %>/menuoption.do?menuId=<%=m.getMenuId() %>&menuName=<%=m.getMenuName() %>&menuPrice=<%=m.getMenuPrice() %>',
      	'메뉴옵션','width=300, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=yes');return false;">
	        <div  class="row g-5">
		        <div class="col-md-10">
		        	<div ><%=m.getMenuName() %></div>
		        	<div><%=m.getMenuDec() %></div>
		        	<div><%=m.getMenuPrice() %>원 </div>
		        </div>
		        <div class="col-md-2"><%=m.getMenuImg() %></div>
	        </div>
        </div>
     </form>	   
   <%} %>
      </article>

    </div>
    
    
    

    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">
        <div class="p-4 mb-3 bg-light rounded" id="subtitle">
          <span>주문표</span>         
        </div>
        
        <div class="p-4" id="cart" name="cart">       
          <div class="row g-5" name="menuName" id=""menuName"">
	          <div class="col-md-9">레드콤보</div>
	          <div class="col-md-1">X</div>
          </div>
          <div class="row g-5">
	          <div class="col-md-6">20000</div>
	          <div class="col-md-1">-</div>
	          <div class="col-md-1">수량</div>
	          <div class="col-md-1">+</div>
          </div>
          <hr>  
        </div>
        
        <div class="p-4">
        
	        <div class="row g-5">
		          <div class="col-md-8">상품금액</div>
		          <div class="col-md-1">40000</div>
	        </div>
	          
	        <div class="row g-5">
		          <div class="col-md-8">배달요금</div>
		          <div class="col-md-1">4000</div>
		    </div>
		    <hr>
		</div>
          
        <div class="p-4">
        
	        <div class="row g-5">
		          <div class="col-md-8">총금액</div>
		          <div class="col-md-1">44000</div>
		    </div>
		         
         	<button>담아두기</button>
        </div>
    </div>
  </div>

</main>




    
  </body>
</html>
