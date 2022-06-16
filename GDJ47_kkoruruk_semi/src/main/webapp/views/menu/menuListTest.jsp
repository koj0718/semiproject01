<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.siksin.menu.model.vo.Store" %>    
<%@ page import="java.util.List" %>    
<%
	List<Store> list=(List<Store>)request.getAttribute("list");
	String searchMenu=request.getParameter("searchMenu");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <section id="memberList-container">
        <h2>회원관리</h2>
<!--          <div id="search-container">
        	검색타입 :  -->
   <%--      	<select id="searchType">
        		<option value="userId" <%=searchType!=null&&searchType.equals("userId")?"selected":"" %>>아이디</option>
        		<option value="userName" <%=searchType!=null&&searchType.equals("userName")?"selected":"" %> >회원이름</option>
        		<option value="gender" <%=searchType!=null&&searchType.equals("gender")?"selected":"" %> >성별</option>
        	</select> --%>
<%--         	<div id="search-userId">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="userId" >
        			<input type="text" name="searchKeyword" size="25" 
        			placeholder="검색할 아이디를 입력하세요" >
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	<div id="search-userName">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="userName">
        			<input type="text" name="searchKeyword" size="25" 
        			placeholder="검색할 이름을 입력하세요">
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	<div id="search-gender">
        		<form action="<%=request.getContextPath()%>/admin/searchMember">
        			<input type="hidden" name="searchType" value="gender">
        			<label><input type="radio" name="searchKeyword" value="M" >남</label>
        			<label><input type="radio" name="searchKeyword" value="F" >여</label>
        			<button type="submit">검색</button>
        		</form>
        	</div>
        </div> --%>
        <div id="numPerpage-container">
        	페이지당 회원수 : 
        	<form id="numPerFrm" action="">
        		<select name="numPerpage" id="numPerpage">
        			<option value="10">10</option>
        			<option value="5" >5</option>
        			<option value="3" >3</option>
        		</select>
        	</form>
        </div>
        <table id="tbl-member">
            <thead>
                <tr>
                    <th>아이디</th>
				    <th>이름</th>
				    <th>성별</th>
				    <th>나이</th>
				    <th>이메일</th>
				    <th>전화번호</th>
				    <th>주소</th>
				    <th>취미</th>
				    <th>가입날짜</th>
                </tr>
            </thead>
            <tbody>
       		<%if(list.isEmpty()){ %>
       			<tr>
       				<td colspan="9"><h3>조회된결과가 없습니다!</h3></td>
       			</tr>
       		<%}else{
       			for(Store s : list){%>
       				<tr>
       					<td><%=s.getStoreName() %></td>
       					<td><%=s.getStoreThumb() %></td>
       					<td><%=s.getDeleveryTime() %></td>
       					<td><%=s.getDeleveryTip() %></td>
     					
       				</tr>
       		<%	} 
       		 }%>
            </tbody>
        </table>
        <div id="pageBar">
        	<%=request.getAttribute("pageBar") %>
        </div>
    </section>
</body>
</html>