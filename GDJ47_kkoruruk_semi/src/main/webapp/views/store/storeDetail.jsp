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
    <title>Blog Template · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/blog/">	
	
    

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
      
      /* cyrillic */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTjYgFE_.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* vietnamese */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTPYgFE_.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTLYgFE_.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTzYgA.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTjYgFE_.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* vietnamese */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTPYgFE_.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTLYgFE_.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Playfair Display';
  font-style: normal;
  font-weight: 900;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/playfairdisplay/v29/nuFiD-vYSZviVYUb_rj3ij__anPXDTzYgA.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}

/* stylelint-disable selector-list-comma-newline-after */

.blog-header {
  line-height: 1;
  border-bottom: 1px solid #e5e5e5;
}

.blog-header-logo {
  font-family: "Playfair Display", Georgia, "Times New Roman", serif/*rtl:Amiri, Georgia, "Times New Roman", serif*/;
  font-size: 2.25rem;
}

.blog-header-logo:hover {
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display", Georgia, "Times New Roman", serif/*rtl:Amiri, Georgia, "Times New Roman", serif*/;
}

.display-4 {
  font-size: 2.5rem;
}
@media (min-width: 768px) {
  .display-4 {
    font-size: 3rem;
  }
}

.nav-scroller {
  position: relative;
  z-index: 2;
  height: 2.75rem;
  overflow-y: hidden;
}

.nav-scroller .nav {
  display: flex;
  flex-wrap: nowrap;
  padding-bottom: 1rem;
  margin-top: -1px;
  overflow-x: auto;
  text-align: center;
  white-space: nowrap;
  -webkit-overflow-scrolling: touch;
}

.nav-scroller .nav-link {
  padding-top: .75rem;
  padding-bottom: .75rem;
  font-size: .875rem;
}

.card-img-right {
  height: 100%;
  border-radius: 0 3px 3px 0;
}

.flex-auto {
  flex: 0 0 auto;
}

.h-250 { height: 250px; }
@media (min-width: 768px) {
  .h-md-250 { height: 250px; }
}

/* Pagination */
.blog-pagination {
  margin-bottom: 4rem;
}
.blog-pagination > .btn {
  border-radius: 2rem;
}

/*
 * Blog posts
 */
.blog-post {
  margin-bottom: 4rem;
}
.blog-post-title {
  margin-bottom: .25rem;
  font-size: 2.5rem;
}
.blog-post-meta {
  margin-bottom: 1.25rem;
  color: #727272;
}


    </style>

    
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
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
	        <span class="restaurant-name ng-binding" ng-bind="restaurant.name">교촌치킨</span>
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
	          
	           <li>영업시간 : <span>시간입력해</span></li>
	           <!-- <li ng-show="show_discount_description()" class="discount-desc ng-hide"><span class="ng-binding"></span></li> -->
	           
	           <li>최소주문금액 <span class="ng-binding">10,900원</span></li>
	           <!--li class="restaurant-address">위치 : <span>{{restaurant.address|trim_address|normalize_address}}</span></li-->
	
		       <li class="">결제
			       <span ng-show="restaurant.payment_methods.indexOf(&quot;creditcard&quot;) >= 0" class="ico-payment-yogiyo">신용카드</span>
			       <span ng-show="restaurant.payment_methods.indexOf(&quot;creditcard&quot;) >= 0 &amp;&amp; !restaurant.except_cash" class=""> , </span>
			       <span ng-show="!restaurant.except_cash" class="ico-payment-yogiyo">현금</span>			      
		       </li>
		       
	           <li class="delivery-time-tooltip" ng-show="restaurant.estimated_delivery_time">배달시간
	            <span class="ng-binding">55~65분</span>
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
	      <li ng-class="! active_tab || active_tab == &quot;menu&quot; ? &quot;active&quot; : &quot;&quot;" class="active"><a ng-click="toggle_tab(&quot;menu&quot;)" data-toggle="tab">메뉴 <span class="ng-binding">34</span></a></li>
	      <li ng-class="active_tab == &quot;review&quot; ? &quot;active&quot; : &quot;&quot;"><a ng-click="toggle_tab(&quot;review&quot;)" data-toggle="tab">클린리뷰 <span class="ng-binding">273</span></a></li>
	      <li ng-class="active_tab == &quot;info&quot; ? &quot;active&quot; : &quot;&quot;"><a ng-click="toggle_tab(&quot;info&quot;)" data-toggle="tab">정보</a></li>
	    </ul>



	      
	    <div class="panel panel-default ng-scope" ng-repeat="category in restaurant.menu" ng-show="is_show_menu(category)">
        <div class="panel-heading">
            <h4 class="panel-title ng-hide" ng-click="select_menu_category(category)" ng-show="show_menu_category(category.slug)">
              <a class="clearfix">
                <span class="menu-name pull-left ng-binding" ng-class="get_menu_class(category.slug)">Photo Menu Items</span>
                <i class="pull-right" ng-class="category.icon_down_up"></i>
              </a>
            </h4>
          </div>
          <div class="panel-collapse collapse in btn-scroll-container" ng-show="toggle_category(category)">
            <div ng-class="'panel-body' + (category.slug == 'photo_menu_items' ? ' photo-menu-container' : '')" class="panel-body photo-menu-container">
              <div class="category-desc ng-binding ng-hide" ng-show="category.description" ng-bind-html="category.description | strip_html | replace_newline_to_br"></div>
              <div ng-show="category.slug=='photo_menu_items'">
                <a class="btn-scroll left" ng-show="!is_mobile_width &amp;&amp; show_slide_button()" ng-click="scroll_slide('left')"></a>
                <a class="btn-scroll right" ng-show="!is_mobile_width &amp;&amp; show_slide_button()" ng-click="scroll_slide('right')"></a>
                <div ng-class="'photo-slide ' + (show_menu_discount() ? 'discount_mov' : '')" class="photo-slide" style="width: 896px;">
                  <!-- ngRepeat: item in category.items -->
                  <!-- ngIf: check_count(category.slug, $index) -->
                  <div ng-repeat="item in category.items" ng-click="select_menuitem(item)" ng-if="check_count(category.slug, $index)" ng-class="get_menu_item_class(item)" class="ng-scope photo-menu">
                    <!-- ngIf: item.soldout -->
                    <div class="photo" style="background-image: url('https://images.yogiyo.co.kr/image/yogiyo/REST_OWNER_IMG/OWNERS/1058013/20220215_161707_blob?width=384&amp;height=273&amp;quality=100'), url('https://img.hankyung.com/photo/202010/BF.24151232.1.jpg');"></div>
                    <div class="menu-name ng-binding" ng-bind-html="item.name|strip_html">구운삼겹살&amp;볶음김치 덮밥</div>
                    <div ng-class="'menu-price ' + (show_menu_discount() ? 'discount_mov' : '')" class="menu-price">
                      <span ng-class="is_discount(item) ? 'text-strike' : ''" ng-bind="item.price|krw" class="ng-binding">11,900원</span>
                      <span class="color-price ng-binding ng-hide" ng-show="is_discount(item)" ng-bind="get_discounted_price(item)|krw">11,900원</span>
                      <div class="menu-discount ng-binding ng-hide" ng-show="show_menu_discount(item)">개당 0원 할인</div>
                    </div>
                  </div
                  ><!-- end ngIf: check_count(category.slug, $index) -->
                  <!-- end ngRepeat: item in category.items --><!-- ngIf: check_count(category.slug, $index) -->                           
                </div>
              </div>
              <ul class="sub-list ng-hide" ng-show="category.slug!='photo_menu_items'">
                 <!-- ngRepeat: item in category.items --><!-- ngIf: check_count(category.slug, $index) -->
                 <li ng-repeat="item in category.items" ng-click="select_menuitem(item)" ng-if="check_count(category.slug, $index)" ng-class="get_menu_item_class(item)" class="ng-scope photo-menu">
                  <table>
                    <tbody>
                     <tr>
                      <td class="menu-text">                  
                        <div class="menu-name ng-binding" ng-bind-html="item.name|strip_html">음식이름</div>
                        <div class="menu-desc ng-binding" ng-show="item.description" ng-bind-html="item.description | strip_html | replace_newline_to_br">음식설명</div>
                        <div class="menu-price">
                          <span ng-class="is_discount(item) ? 'text-strike' : ''" ng-bind="item.price|krw" class="ng-binding">11,900원</span>
                          <span class="color-price ng-binding ng-hide" ng-show="is_discount(item)" ng-bind="get_discounted_price(item)|krw">11,900원</span>
                        </div>
                      </td>
                      <td class="photo-area" ng-show="item.image">                     	
                        <div class="photo" style="background-image: url('https://images.yogiyo.co.kr/image/yogiyo/REST_OWNER_IMG/OWNERS/1058013/20220215_161707_blob?width=384&amp;height=273&amp;quality=100'), url('image/ic_photomenu_default.png');">음식사진</div>
                      </td>
                     </tr>
                   </tbody>
                  </table>
                 </li>                 
              </ul>
            </div>
          </div>
        </div>
        
        
        
        
        
        <div class="panel panel-default ng-scope" ng-repeat="category in restaurant.menu" ng-show="is_show_menu(category)">
         <div class="panel-heading">
            <h4 class="panel-title" ng-click="select_menu_category(category)" ng-show="show_menu_category(category.slug)">
              <a class="clearfix">
                <span class="menu-name pull-left ng-binding pop-menu" ng-class="get_menu_class(category.slug)">인기메뉴</span>
                <i class="pull-right icon-arr-up" ng-class="category.icon_down_up"></i>
              </a>
            </h4>
          </div>
          <div class="panel-collapse collapse in btn-scroll-container" ng-show="toggle_category(category)">
            <div ng-class="'panel-body' + (category.slug == 'photo_menu_items' ? ' photo-menu-container' : '')" class="panel-body">
              <div class="category-desc ng-binding ng-hide" ng-show="category.description" ng-bind-html="category.description | strip_html | replace_newline_to_br"></div>
              <div ng-show="category.slug=='photo_menu_items'" class="ng-hide">
                <a class="btn-scroll left" ng-show="!is_mobile_width &amp;&amp; show_slide_button()" ng-click="scroll_slide('left')"></a>
                <a class="btn-scroll right" ng-show="!is_mobile_width &amp;&amp; show_slide_button()" ng-click="scroll_slide('right')"></a>
                <div ng-class="'photo-slide ' + (show_menu_discount() ? 'discount_mov' : '')" class="photo-slide" style="width: 896px;">
                  <!-- ngRepeat: item in category.items --><!-- ngIf: check_count(category.slug, $index) -->
                  <div ng-repeat="item in category.items" ng-click="select_menuitem(item)" ng-if="check_count(category.slug, $index)" ng-class="get_menu_item_class(item)" class="ng-scope photo-menu">
                    <!-- ngIf: item.soldout -->
                    <div class="promotion-info"><span class="coupon-base coupon-delivery-discount">요기서결제시 할인</span></div>
                    <div class="photo" style="background-image: url('https://images.yogiyo.co.kr/image/yogiyo/REST_OWNER_IMG/OWNERS/1058013/20220215_161707_blob?width=384&amp;height=273&amp;quality=100'), url('image/ic_photomenu_default.png');"></div>
                    <div class="menu-name ng-binding" ng-bind-html="item.name|strip_html">구운삼겹살&amp;볶음김치 덮밥</div>
                    <div ng-class="'menu-price ' + (show_menu_discount() ? 'discount_mov' : '')" class="menu-price">
                      <span ng-class="is_discount(item) ? 'text-strike' : ''" ng-bind="item.price|krw" class="ng-binding">11,900원</span>
                      <span class="color-price ng-binding ng-hide" ng-show="is_discount(item)" ng-bind="get_discounted_price(item)|krw">11,900원</span>             
                    </div>
                  </div><!-- end ngIf: check_count(category.slug, $index) --><!-- end ngRepeat: item in category.items -->
                  <!-- ngIf: check_count(category.slug, $index) -->  
                </div>
              </div>
              <ul class="sub-list" ng-show="category.slug!='photo_menu_items'">
                 <!-- ngRepeat: item in category.items --><!-- ngIf: check_count(category.slug, $index) -->
                 <li ng-repeat="item in category.items" ng-click="select_menuitem(item)" ng-if="check_count(category.slug, $index)" ng-class="get_menu_item_class(item)" class="ng-scope photo-menu">
                  <table>
                    <tbody><tr>
                      <td class="menu-text">
                        <div class="promotion-info"><span class="coupon-base">요기서결제시 할인</span></div>
                        <div class="menu-name ng-binding" ng-bind-html="item.name|strip_html">구운삼겹살&amp;볶음김치 덮밥</div>
                        <div class="menu-desc ng-binding" ng-show="item.description" ng-bind-html="item.description | strip_html | replace_newline_to_br">음식설명</div>
                        <div class="menu-price">
                          <span ng-class="is_discount(item) ? 'text-strike' : ''" ng-bind="item.price|krw" class="ng-binding">11,900원</span>
                          <span class="color-price ng-binding ng-hide" ng-show="is_discount(item)" ng-bind="get_discounted_price(item)|krw">11,900원</span>
                        </div>                   
                      </td>
                      <td class="photo-area" ng-show="item.image">
                        <div class="photo" style="background-image: url('https://img.hankyung.com/photo/202010/BF.24151232.1.jpg?width=384&amp;height=273&amp;quality=100'), url('https://img.hankyung.com/photo/202010/BF.24151232.1.jpg');"></div>
                      </td>
                    </tr>
                   </tbody>
                  </table>
                </li>
                <!-- end ngIf: check_count(category.slug, $index) -->
                <!-- end ngRepeat: item in category.items -->
                <!-- ngIf: check_count(category.slug, $index) -->
                
             
              </ul>
            </div>
          </div>
        </div>
        
	    
    
    
    
      

    </div>
    
    

    <div class="col-sm-4 hidden-xs restaurant-cart" style="top: 0px; position: relative;">       
      <div class="ng-scope" style="top: 2rem;">            
        <div class="subtitle" >
          <span>주문표</span>         
        </div>                
        <div class="cart">        
        	<ul class="list-group">
      			<!-- ngRepeat: item in cart.get().items -->
   			</ul>  			
   			<div ng-show="cart.is_empty()" class="cart-empty">
       			 주문표에 담긴 메뉴가 없습니다.
    		</div>   		   		
    		<div class="clearfix">   		
		      <span class="list-group-item clearfix text-right ng-binding" ng-show="cart.get_delivery_fee(restaurant) > 0">
		        배달요금 3,900원 별도
		      </span>		      
		      <span class="list-group-item minimum-order-price ng-hide" ng-show="!cart.is_empty() &amp;&amp; (restaurant.min_order_amount > cart.get_total() || (cart.has_discounted_item() &amp;&amp; restaurant.discounts.additional.delivery.discount_mov > restaurant.min_order_amount))">		        		        
		        <p ng-show="restaurant.min_order_amount > cart.get_total()" class="ng-binding">
		          최소주문금액 : 10,900원 이상
		        </p>		        
		      </span>		      
		      <span class="list-group-item cart-total-order-price ng-binding ng-hide" ng-show="! cart.is_empty() &amp;&amp; cart.get_total() > 0">
		        합계: 0원
		      </span>		      
		    </div>		    
		    <div class="cart-btn clearfix">		    		     
		      <a class="btn btn-lg btn-ygy1 btn-block" ng-disabled="cart.get_restaurant_id() != restaurant.id || cart.get_amount() < 1" ng-click="checkout()" disabled="disabled">주문하기</a>		    
		    </div>		    
		 </div> 		         
     </div>     
   </div>

</main>




    
  </body>
</html>
