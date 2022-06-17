<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %> 


  <!-- 베너(케러셀) -->
  
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


<div class="admin_banner_enroll">
	<input type="button" value="베너관리" onclick="location.assign('<%=request.getContextPath()%>/bannerManage.do');">
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


<%@ include file="/views/common/footer.jsp" %>




