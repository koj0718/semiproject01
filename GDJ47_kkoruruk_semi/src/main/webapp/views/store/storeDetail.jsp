<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.menu.model.vo.Menu" %>
<%@ page import="com.siksin.store.model.vo.Store" %>
<%
	Store s=(Store)request.getAttribute("store");
	List<Menu> menuList=(List<Menu>)request.getAttribute("menuList");
%>  
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">	
    <title>Blog Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/blog/">	
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/store/storeDetail.css">    

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


  </head>
  <body>
    
<div class="container">


</div>

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
	    
	    <div class="owner_intro_message" ng-show="restaurant_info.introduction_by_owner" ng-click="toggle_tab(&quot;info&quot;, &quot;owner_alarm&quot;)" id="ccc">
	      <strong>사장님알림</strong>
	      <span class="tc ng-binding">문의사항 및 불편사항은 언제든지 매장으로 연락주세용! </span>
	    </div>
	    
	    <script>
	    document.getElementById("ccc").onclick = coco;
	    
	    function coco() {
	    	
	    }
	    
	   
	    </script>
	    
	        
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
     <form action="<%=request.getContextPath() %>/menuoption.do" method="post" > 	
      	<div onclick="chch();">
	        <div  class="row g-5">
		        <div class="col-md-10">
		        	<div ><%=m.getMenuName() %></div>
		        	<div><%=m.getMenuDec() %></div>
		        </div>
		        <div class="col-md-2"><%=m.getMenuImg() %></div>
	        </div>
        </div>
       </form>
   <%} %>
      </article>
  
  
    
      <script>
      const chch=()=>{
    	  const div=document.createElement("div");
    	  const hr=document.createElement("hr");
    	  const p=document.createElement("p");
    	  p.innerText="dddd";
    	  document.getElementById("cart").appendChild(div);
    	  document.getElementById("cart").appendChild(div).appendChild(p);
    	  
    	  
    	  document.getElementById("cart").appendChild(hr);
      }
      
      
      </script>

    </div>
    
    
    

    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">
        <div class="p-4 mb-3 bg-light rounded" id="subtitle">
          <span>주문표</span>         
        </div>
        
        <div class="p-4" id="cart">       
          <div class="row g-5">
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
