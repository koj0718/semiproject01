<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %> 


<style>


/* 검색 */

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


#input1{
	width: 350px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 3px solid black;
	text-align: center;
	font-size:18px; 
}
#input2{
	width: 70px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom : none;
	background-color: black;
	color : white;
	border-radius: 10px;
	
}


 .container{
	
	/* height: 280px; */
} 

.d-block {

	height:420px;
}

.category-title{
	text-align: center;
	text-decoration: none;
}

.thumbnail{
	text-decoration: none;
}

</style>



  <!-- 베너(케러셀) -->
  
  <br>
  <div class="container">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <!-- <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>  -->
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img id="banner" src="images/banner.jpg" class="d-block w-100" alt="안녕">
      <!-- <script>document.getElementById('banner').src=logo_info()</script> -->
      
      
    </div>
    <div class="carousel-item">
      <img src="images/banner-2.jpeg" class="d-block w-100" alt="...">
      <!-- https://cdn.gamemeca.com/data_center/228/389/20210429135726.jpg -->
    </div>
    
<!--      <div class="carousel-item">
      <img src="images/banner3.png" class="d-block w-100" alt="...">
    
    </div>  -->
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
</div>

<!-- 두번째 캐러셀  -->

<!--    <div class="container2">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img id="banner" src="images/banner1-1.jpeg" class="d-block w-100" alt="안녕">
      
      
      
    </div>
    <div class="carousel-item">
      <img src="images/banner-2.jpeg" class="d-block w-100" alt="...">
      
    </div>
    <div class="carousel-item">
      <img src="http://cdn.tgdaily.co.kr/news/photo/202110/311920_75255_537.png" alt="...">
    </div>
    
    
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
</div>  -->


<%-- 
<div class="admin_banner_enroll">
	<input type="button" value="베너관리" onclick="location.assign('<%=request.getContextPath()%>/bannerManage.do');">
</div>





<div id='banner-container'>
	
		<form action='<%=request.getContextPath()%>/bannerManage.do'
		method="post" enctype="multipart/form-data" >
			<table id='tbl-board'>

				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="upfile"></td>
				</tr>

				<tr>
					<th colspan="2">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</th>
				</tr>
			</table>
		</form>
	</div>
	
	<button id="ajaxPostParam">post방식으로 데이터 전송</button>
	
	<div id="result"></div>	
	
	
	<!-- 베너 for문   -->
	<script>
		function banner_img {
            for(var i=1; i<=5; i++) {
                if(user_area == i) {
                img_src = '../public/img/'+ i + '_logo.png';
                }
            }
            return img_src;
		}
		
		
		
		/* 수업자료 */		
		document.querySelector("#ajaxGetParam").addEventListener("click",e=>{
			const xhr=new XMLHttpRequest();
			//get방식으로 데이터 전송시 쿼리스트링 방식으로 전송함.
			xhr.open("get","<%=request.getContextPath()%>/getparam.do?data=test용");
			xhr.onreadystatechange=()=>{
				if(xhr.readyState==4){
					if(xhr.status==200){
						document.getElementById("result").innerHTML=xhr.responseText;
					}
				}
			}
			xhr.send();
			document.getElementById("result").innerHTML="가즈아";
		});	
		
		
	
	</script>	
	
	<script>document.getElementById('banner').src=logo_info()</script>
	 --%>
<!--  -->
	
	
	
	
	
	
	
	
	
	

<!-- 검색, 랭킹 -->



<%-- <div class="search_lists">
<div class="search_list">
	<input type="button" value="검색" onclick="location.assign('<%=request.getContextPath()%>/menu/searchMenu.do');">
</div>
<!-- <div class="search_list"><button>랭킹</button></div> -->
</div> --%>

			<!-- 원본이었던것 -->
 <%--        	<div class="search_lists">
        		<form class="search_list" action="<%=request.getContextPath()%>/searchMenu.do">
        			<input type="text" name="searchMenu" size="30" 
        			placeholder="오늘은 어떤 메뉴를 주문해 볼까요?">
        			<button type="submit">검색</button>
        		</form>
        	</div>   --%>
        	
        	
        	<br><br><br><br>

			<div class="search_lists">
			<form action="<%=request.getContextPath()%>/searchMenu.do">
				<img src="images/search-01.png" width="35" height="35"> 
				<input id="input1" type="text" name="searchMenu" placeholder="오늘은 어떤 메뉴를 주문해 볼까요?" size="30">
				<button id="input2" type="submit" >검색 </button>
	
			</form>
			</div>

<!-- 
			<div class="fileContainer">
                <div class="fileInput">
                    <p>FILE NAME: </p>
                    <p id="fileName"></p>
                </div>
                <div class="buttonContainer">
                    <div class="submitButton" id="submitButton">SUBMIT</div>
                </div>
            </div>

 -->



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
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=" class="thumbnail" ng-click="select_home_category('all')">
  				
  				<img src="images/menuall4.png">
  				<div class="category-title">전체</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=치킨" class="thumbnail" ng-click="select_home_category('치킨')">
	  			
	  			<img src="images/chicken3.jpg">
	  			<div class="category-title">치킨</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=돈까스" class="thumbnail" ng-click="select_home_category('돈까스일식')">
	  			
	  			<img src="images/porkcutlet.jpg">
	  			<div class="category-title">돈까스/일식</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=피자" class="thumbnail" ng-click="select_home_category('피자양식')">
	  			
	  			<img src="images/pizza3.png">
	  			<div class="category-title">피자/양식</div>
  			</a>
  		</div>

  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=고기 고깃집" class="thumbnail" ng-click="select_home_category('고기/구이')">
  				
  				<img src="images/meat3.png">
  				<div class="category-title">고기/구이</div>
			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=분식" class="thumbnail" ng-click="select_home_category('분식')">
	  			
	  			<img src="images/tteokbokki.png">
	  			<div class="category-title">분식</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=햄버거" class="thumbnail" ng-click="select_home_category('햄버거')">
	  			
	  			<img src="images/hambuger.png">
	  			<div class="category-title">햄버거</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=야식" class="thumbnail" ng-click="select_home_category('야식')">
	  			
	  			<img src="images/ramen.png">
	  			<div class="category-title">야식</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=족발 보쌈" class="thumbnail" ng-click="select_home_category('족발보쌈')">
	  			
	  			<img src="images/bossam.jpg">
	  			<div class="category-title">족발/보쌈</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=중식" class="thumbnail" ng-click="select_home_category('중식')">
	  			
	  			<img src="images/Chinesefood.jpeg">
	  			<div class="category-title">중식</div>
			</a>
  		</div>


  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=카페 커피" class="thumbnail" ng-click="select_home_category('카페디저트')">
	  			
	  			<img src="images/cafe.png">
	  			<div class="category-title">카페/디저트</div>
  			</a>
  		</div>
  		<div class="col-xs-6 col-sm-4 col-md-3">
  			<a href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=편의점" class="thumbnail" ng-click="select_home_category('편의점')">
	  			
	  			<img src="images/conveniencestore.png">
	  			<div class="category-title">편의점/마트</div>
  			</a>
  		</div>
  	</div>
  </div>


<%@ include file="/views/common/footer.jsp" %>




