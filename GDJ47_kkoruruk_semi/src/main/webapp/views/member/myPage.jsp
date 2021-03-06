<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->

    <!-- css -->
    <%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPage.css"> --%>
<style>


#myPage_bodyContainer{
padding-top: 30px;
max-width: 1320px;
margin-right: auto;
margin-left: auto;
padding: 12px;
padding-top: 40px;
background-color: white;
}

.myPage_Sidebar{
list-style-type: none;

}
.myPage_Sidebar>li>a{
font-size: 18px;
padding-left: 0px;

}
.myPage_Sidebar>li>a:hover{
color:red;

}
</style>

<body>    
  <div id="myPage_bodyContainer">
   
      <div id="myPageSidebars" class="col-4 row d-flex flex-column flex-shrink-0 p-3 bg-light"
      style="width: 250px; height:415px; float:left; border-radius: 20px; border: 1px solid black" >
            <span class="fs-4"><br><%=loginMember.getMemNick() %>님<br>안녕하세요.</span>
          <br>
          <hr>
          <ul class="myPage_Sidebar">
<%--             <li class="nav-item">
              <a href="<%=request.getContextPath() %>/mypage.do" class="nav-link active" aria-current="page">
                <svg class="bi me-2" width="16" height="16"></svg>
                마이페이지
              </a>
            </li> --%>
            <li>
              <a href="<%=request.getContextPath() %>/mypageupdate.do" class="nav-link link-dark">내 정보 수정</a>
            </li>
            <li>
              <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">포인트</a>
            </li>
            <li>
              <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">찜 한 가게</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/reviewManage.do?loginId=<%=loginMember.getMemId() %>" class="nav-link link-dark">리뷰관리</a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>" class="nav-link link-dark">주문내역</a>
            </li>
          </ul>
      </div>
      
      
      <!-- 마이페이지 -->

      <div class="col" style="text-align: center; margin-left: auto;">
      
         <section class="title" style="text-align: left; margin-left: 250px;">
            <h2 style="padding-left: 45px; ">내 프로필</h2>
         </section>
         <div id="myPage_Content" class="row col-9" style="border-radius: 20px;">
            <hr>
            <div class="row" style="heieght: 250px; padding: 0px; margin: 0px;">
               <div class="col-8 col-sm-6"> 
                    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMDRfMjIg%2FMDAxNjMzMzIzOTE4ODU5.Ybx6Tw_gJlO8D7SOZ35MYICEBomcbFLg0iz9y4bnDokg.Gvfzu_HKGoPfqcl26eeoOSDseBWXdTcM1MDosTs8M_sg.JPEG.taotube%2F%25C1%25F8%25C7%25E0%25BF%25E4%25BF%25F8-%25B9%25E6.jpg&type=sc960_832" 
                  	style="height: 180px; display: inline-block;">  
                 <div style="margin-bottom: 0px; font-size: 18px;" ><%=loginMember.getMemNick() %>님</div>
               </div>
       
                <div class="col-4 col-sm-6"> 
		           <h5 style="height:40px;">
		           <br>
		             <%=loginMember.getMemNick() %>님은 <%=loginMember.getRole() %>&nbsp등급 입니다.
		           </h5>
		           <br>
		           <br>
		           <br>
                   <div>잔여 포인트</div>
                   <div><%=loginMember.getMemPoint() %>&nbsp포인트</div>
                 <br>
              </div> 
            </div>
             
             
          <hr>
         </div>
         
         <br>
         
         <div id="myPage_Content" class="row col-9">
            <div class="row" style="padding-left: 0px;">
               <div class="col-12 col-sm-12">
                  <div style="font-size: 24px; float: left;">등급 업 조건</div>
               </div>
   <!--              <div class="col-4 col-sm-6">
                 요건
               </div> -->
             </div>
             <hr>
             <div style="height:40px;">
                SIKSIN 직전 월 주문횟수 16회 이상
             </div><hr>
             <div style="height:40px;">
                PLATINUM 직전 월 주문횟수 11~15회
             </div><hr>
             <div style="height:40px;">
                GOLD 직전 월 주문횟수 6~10회
             </div><hr>
             <div style="height:40px;">
                SILVER 직전 월 주문횟수 3~5회
             </div><hr>
             <div style="height:40px;">
                BRONZ 직전 월 주문횟수 0~2회
             </div><hr>
         </div>
      </div>
  </div>
</body>
<%@ include file="/views/common/footer.jsp" %>