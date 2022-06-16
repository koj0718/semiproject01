<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>꼬르륵</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/cover/">

    

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
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>

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
      
      
      /*
 * Globals
 */


/* Custom default button */
.btn-secondary,
.btn-secondary:hover,
.btn-secondary:focus {
  color: #333;
  text-shadow: none; /* Prevent inheritance from `body` */
}


/*
 * Base structure
 */



/* .cover-container {
  max-width: 42em;
} */


/*
 * Header
 */

.nav-masthead .nav-link {
  padding: .25rem 0;
  font-weight: 700;
  color: black;
  background-color: transparent;
  border-bottom: .25rem solid transparent;
}

.nav-masthead .nav-link:hover,
.nav-masthead .nav-link:focus {
  border-bottom-color: black;
}

.nav-masthead .nav-link + .nav-link {
  margin-left: 1rem;
  border-bottom-color: black;
}

.nav-masthead .active {
  color: black;
  border-bottom-color: #fff;
}




/* 검색 & 랭킹 */
    
.search_lists {
width: 100%;
text-align: center;
margin-left : 15px;
margin-right : 15px;
margin-top : 80px;
margin-bottom : 80px;
}

.search_list {
display:inline-block;

}

/* 메뉴카테고리 */



.menu_container {
    width: 800px;
    margin-top : 80px;
    left : 200px;
}

.main_lists {
    text-align: center;
}

.main_list {
    display: inline-block;
    width: 160px;
    height: 160px;
	border: 1px solid black;
    margin-bottom: 5px;
    
}


/*  */

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
.b-example-divider {
  height: 3rem;
  background-color: rgba(0, 0, 0, .1);
  border: solid rgba(0, 0, 0, .15);
  border-width: 1px 0;
  box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
}

.bi {
  vertical-align: -.125em;
  fill: currentColor;
}



/* .container-fluid, .category-list {
    background-color: #fafafa;
    padding-bottom: 15px;
}

* {
     -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box; 
    box-sizing: border-box;
}

div {
    display: block;
}

html, body {
    min-width: 320px;
    letter-spacing: 0px;
    font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
    width: auto !important;
}


body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
html, body {
    min-width: 320px;
    letter-spacing: 0px;
    font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
    width: auto !important;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

html {
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}

*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
 */
 
 /* 캐러셀 */
.carousel {
	margin-top:60px;
}

    </style>


<!--nav -->
    
    <!-- Custom styles for this template -->
    <link href="cover.css" rel="stylesheet">
  </head>
  <body class="d-flex h-100 text-center text-black ">
    
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">kkoruruk</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/location/searchAddress.do">주소를 입력해주세요.</a>
        <a class="nav-link" href="<%=request.getContextPath()%>/member/login.do">로그인</a>
        <a class="nav-link" href="#">주문표</a>
      </nav>
    </div>
  </header>

 
  <!-- 베너 -->
  
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <!-- <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button> -->
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/banner.jpg" class="d-block w-100" alt="안녕">
    </div>
    <div class="carousel-item">
      <img src="images/banner-2.jpeg" class="d-block w-100" alt="...">
      <!-- https://cdn.gamemeca.com/data_center/228/389/20210429135726.jpg -->
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




<!-- 검색, 랭킹 -->





<%-- <div class="search_lists">
<div class="search_list">
	<input type="button" value="검색" onclick="location.assign('<%=request.getContextPath()%>/menu/searchMenu.do');">
</div>
<!-- <div class="search_list"><button>랭킹</button></div> -->
</div> --%>
        	<div class="search_lists">
        		<form class="search_list" action="<%=request.getContextPath()%>/searchMenu.do">
        			<input type="text" name="searchMenu" size="30" 
        			placeholder="오늘은 어떤 메뉴를 주문해 볼까요?">
        			<button type="submit">검색</button>
        		</form>
        	</div>





<!-- 메뉴 카테고리  -->


<%-- 	<div class="menu_container">

		<!-- 리스트 --> 
		<div class="main_lists">
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=전체');">전체</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=햄버거');">햄버거</button></div> 
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=일식');">돈까스/일식</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=피자');">피자</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=족발');">족발</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=회');">회/초밥</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=고기');">고기/구이</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=아시안');">아시안</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=중식');">중식</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=카페');">카페/디저트</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=프랜차이즈');">프랜차이즈</button></div>
			<div class="main_list"><button onclick="location.assign('<%=request.getContextPath()%>/searchMenu.do?value=랭킹');">랭킹</button></div>
		</div>

	</div> --%>
  
  <div class="category-list" ng-hide="$location.path() != &quot;/&quot;">
  	<div class="row"><!-- ngRepeat: banner in banner_list -->
  		<!-- <div class="col-xs-6 col-sm-4 col-md-3 category-banner ng-scope" ng-repeat="banner in banner_list" style="" on-finish-render="completeBannerListRender()">
  			<a href="" class="thumbnail" ng-click="setEvent($index, banner)" ng-style="{'background': banner.background_color}" style="background: rgb(55, 129, 206);">
  				<img ng-src="https://d5bfh7nnlp98y.cloudfront.net/2206_jsevent/220527_YGY_m6_MW_thumd.png" alt="202206_ohal" src="https://d5bfh7nnlp98y.cloudfront.net/2206_jsevent/220527_YGY_m6_MW_thumd.png">
  				<i class="icon-move"></i>
  			</a>
  		</div> --><!-- end ngRepeat: banner in banner_list -->
  		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3" wid>
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=전체" class="thumbnail" ng-click="select_home_category('all')">
  				<div class="category-title">전체보기</div>
  				<img src="images/category-01.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=치킨" class="thumbnail" ng-click="select_home_category('치킨')">
	  			<div class="category-title">치킨</div>
	  			<img src="images/category-02.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=돈까스일식" class="thumbnail" ng-click="select_home_category('돈까스일식')">
	  			<div class="category-title">돈까스/일식</div>
	  			<img src="images/category-06.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=피자양식" class="thumbnail" ng-click="select_home_category('피자양식')">
	  			<div class="category-title">피자/양식</div>
	  			<img src="images/category-03.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
			<a href="<%=request.getContextPath()%>/searchMenu.do?value=중식" class="thumbnail" ng-click="select_home_category('중식')">
	  			<div class="category-title">중국집</div>
	  			<img src="images/category-04.png">
			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=한식" class="thumbnail" ng-click="select_home_category('한식')">
  				<div class="category-title">한식</div>
  				<img src="images/category-05.png">
			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=프랜차이즈" class="thumbnail" ng-click="select_home_category('프랜차이즈')">
	  			<div class="category-title">프랜차이즈</div>
	  			<img src="images/category-10.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=족발보쌈" class="thumbnail" ng-click="select_home_category('족발보쌈')">
	  			<div class="category-title">족발/보쌈</div>
	  			<img src="images/category-07.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=야식" class="thumbnail" ng-click="select_home_category('야식')">
	  			<div class="category-title">야식</div>
	  			<img src="images/category-08.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=분식" class="thumbnail" ng-click="select_home_category('분식')">
	  			<div class="category-title">분식</div>
	  			<img src="images/category-09.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=카페디저트" class="thumbnail" ng-click="select_home_category('카페디저트')">
	  			<div class="category-title">카페/디저트</div>
	  			<img src="images/category-11.png">
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?value=편의점" class="thumbnail" ng-click="select_home_category('편의점')">
	  			<div class="category-title">편의점/마트</div>
	  			<img src="images/category-convenience-store.png">
  			</a>
  		</div>
  	</div>
  </div>









<!-- footer -->

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
  <symbol id="facebook" viewBox="0 0 16 16">
    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
  </symbol>
  <symbol id="instagram" viewBox="0 0 16 16">
      <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
  </symbol>
  <symbol id="twitter" viewBox="0 0 16 16">
    <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
  </symbol>
</svg>

<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-4 mb-0 text-muted">&copy; 2022 Company, Inc</p>

    <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
    </a>

    <ul class="nav col-md-4 justify-content-end">
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">사장님페이지</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
    </ul>
  </footer>
</div>









<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>