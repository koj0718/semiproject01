<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%@ include file="/views/common/myPageSidebars.jsp" %>

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
		</form>
		
		<script>
		
		const deleteMember=()=> {
			
			open("<%=request.getContextPath() %>/member/deleteMember.do?userId=<%=loginMember.getMemId() %>",
					"_blank", "width=400, height=400, left=800, top=200");
			
		}
		
		const updatePassword=()=> {
			
			open("<%=request.getContextPath() %>/member/updatepassword.do?userId=<%=loginMember.getMemId() %>",
					"_blank", "width=400, height=400, left=800, top=200");
			
		}
		
		/* 정보수정 후 단순제출 로직 */
		const memUpdate=()=> {
			
			$("#memberFrm").submit();
			
		}
		
		</script>

<%@ include file="/views/common/footer.jsp" %>