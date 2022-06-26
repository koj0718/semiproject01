<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%-- <%@ include file="/views/common/myPageSidebars.jsp" %> --%>

<style>

.search_list {
display:inline-block;


}


#input1{
	width: 500px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 1px solid grey;
	
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

.emailContainer{

	padding-right:425px;
	padding-top:10px;
	padding-bottom:10px;
	font-size:16px;
	
}

.passwordContainer{
	padding-top:10px;
	padding-right:440px;
	padding-bottom:10px;
	font-size:16px;
}


#logPageBtn{

	width:500px;
	height:60px;
	border-radius:10px;
	font-size:18px;

}
.logPageBtnContainer{
	padding-top:30px;
}

.loginMainText{
	
}


.enrollContainer{
	display: flex;
   justify-content: center;
	margin-top:150px;
}





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




</style>

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



<%-- 
		<section class="title">
			<h1>내 정보 수정</h1>
		</section>
		<br>
		
		<form id="myPageUpdate" action="<%=request.getContextPath() %>/mypageupdate.do" method="post">
			<div class="col">
				<div id="myPageContent" class="row col-8">
		            	<div class="col-8">아이디<br>
		                    <input type="text" id="userId" name="userId" value="<%=loginMember.getMemId() %>" readonly>
		                </div>  
		                &nbsp;
 		                <div class="col-8">비밀번호<br>
		                    <input type="password" id="password" name="password" placeholder="<%=loginMember.getMemPwd() %>" readonly>
		                </div>
		                
		                <div class="col-8">
		                    <button type="button" onclick="updatePassword();" id="updateBtn" class="w-100 btn btn-primary btn-lg" value="비밀번호변경">비밀번호 변경</button>
		                </div>
		                &nbsp;
		                <div class="col-8">이　름<br>
		                    <input type="text" id="name" name="name" value="<%=loginMember.getMemName() %>" readonly>
		                </div>
		                &nbsp;
		                <div class="col-8">이메일<br>
		                    <input type="text" id="email" name="email" value="<%=loginMember.getMemEmail() %>">
		                </div>
		                <div class="col-8">닉네임<br>
		                    <input type="text" id="nickname" name="nickname" value="<%=loginMember.getMemNick() %>">
		                </div>
		                &nbsp;
		          	    <div class="col-8">연락처<br>
		                    <input type="text" id="phone" name="phone" value="<%=loginMember.getMemPhone() %>">
		                </div>
		                <div class="col-8"> <!-- hidden / null 방지 -->
		                    <input type="hidden" id="point" name="point" value="<%=loginMember.getMemPoint() %>" readonly>
		                    <input type="hidden" id="rank" name="rank" value="<%=loginMember.getMemRank() %>" readonly>
		                    <input type="hidden" id="role" name="role" value="<%=loginMember.getRole() %>" readonly>
		                </div>
		                &nbsp;
				<button type="submit" onclick="memUpdate()" id="updateBtn" class="w-100 btn btn-primary btn-lg" value="정보수정">수정하기</button>
 				&nbsp;
				<button type="submit" onclick="deleteMember()" id="deleteBtn" class="w-100 btn btn-primary btn-lg" value="회원탈퇴" style="background-color:tomato;">회원탈퇴</button>
				</div>
			</div>
		</form> --%>
		
		
		
     	<div class="enrollContainer">
        
       		<form action="<%=request.getContextPath() %>/mypageupdate.do" method="post">
				<div class="emailContainer">
				<strong>아이디</strong><br>
				</div>
				<input id="input1" type="text"  name="userId" value="<%=loginMember.getMemId() %>" readonly size="30" ><br>
				<div class="passwordContainer">
				<strong>비밀번호</strong><br>
				</div>
				<input id="input1" type="password" name="password" placeholder="********" readonly size="30"><br>
				<div class="logPageBtnContainer">
				<button type="button" onclick="updatePassword();" class="btn btn-outline-dark me-2" id="logPageBtn">비밀번호 변경</button>
				<!-- <button type="submit" class="btn-dark me-2" id="logPageBtn">로그인</button> -->
				</div>
				<div class="emailContainer">
				<strong>이름</strong><br>
				</div>
				<input id="input1" type="text" name="name" value="<%=loginMember.getMemName() %>" readonly size="30" ><br>
				<div class="emailContainer">
				<strong>이메일</strong><br>
				</div>
				<input id="input1" type="email" name="email" value="<%=loginMember.getMemEmail() %>" size="30" ><br>
				<div class="emailContainer">
				<strong>닉네임</strong><br>
				</div>
				<input id="input1" type="text" name="nickname" name="nickname" value="<%=loginMember.getMemNick() %>" size="30" ><br>
				<div class="emailContainer">
				<strong>연락처</strong><br>
				</div>
				<input id="input1" type="text" name="phone" name="phone" value="<%=loginMember.getMemPhone() %>" size="30" ><br>
				<!-- <button id="input2" type="submit" >검색 </button> -->
				<div class="col-8"> <!-- hidden / null 방지 -->
		                    <input type="hidden" id="point" name="point" value="<%=loginMember.getMemPoint() %>" readonly>
		                    <input type="hidden" id="rank" name="rank" value="<%=loginMember.getMemRank() %>" readonly>
		                    <input type="hidden" id="role" name="role" value="<%=loginMember.getRole() %>" readonly>
		        </div>
				
				<div class="logPageBtnContainer">
				<button type="submit" onclick="memUpdate()" class="btn btn-outline-dark me-2" id="logPageBtn" value="정보수정">수정하기</button>
				<!-- <button type="submit" class="btn-dark me-2" id="logPageBtn">로그인</button> -->
				</div>
				<div class="logPageBtnContainer">
				<button type="submit" onclick="deleteMember()" class="btn btn-outline-dark me-2" id="logPageBtn" value="회원탈퇴">회원탈퇴</button>
				<!-- <button type="submit" class="btn-dark me-2" id="logPageBtn">로그인</button> -->
				</div>
		</form>
			<!-- </div> -->
			
			</div>
		
		
		</div>
		
		
		
		
		
		<script>
		
		const deleteMember=()=> {
			
<%-- 			open("<%=request.getContextPath() %>/member/deleteMember.do?userId=<%=loginMember.getMemId() %>",
					"_blank", "width=400, height=400, left=800, top=200"); --%>
			open("<%=request.getContextPath() %>/member/deleteMember.do?userId=<%=loginMember.getMemId() %>",
					"_blank", "width=800, height=600, left=800, top=200");
			
		}
		
		const updatePassword=()=> {
			
<%-- 			open("<%=request.getContextPath() %>/member/updatepassword.do?userId=<%=loginMember.getMemId() %>",
					"_blank", "width=400, height=400, left=800, top=200"); --%>
					open("<%=request.getContextPath() %>/member/updatepassword.do?userId=<%=loginMember.getMemId() %>",
							"_blank", "width=800, height=600, left=800, top=200");
		}
		
		/* 정보수정 후 단순제출 로직 */
		const memUpdate=()=> {
			
			$("#memberFrm").submit();
			
		}
		
		</script>

<%@ include file="/views/common/footer.jsp" %>