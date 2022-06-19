<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>  
<%@ page import="com.siksin.menu.model.vo.MenuOption" %>
<%
	List<MenuOption> mopList=(List<MenuOption>)request.getAttribute("mopList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
</head>
<body>

    <article class="blog-post">     
     <%for(MenuOption m : mopList){ %>   	
      	<div onclick="">
	        <div  class="row g-5">
		        <div class="col-md-10">
		        	<div ><%=m.getMenuOpName() %></div>
		        	<div><%=m.getMenuOpPrice() %></div>
		        </div>
		        <div class="col-md-2"><%=m.getMenuId() %></div>
	        </div>
        </div>	   
   <%} %>
   <button id="qqq">주문표에 추가</button>
   <button >주문하기</button>
      </article>
      
    <script>
		const btn=document.getElementById("qqq");
		console.log(btn);
		btn.addEventListener("click",(e)=>{
			opener.cart.aaa.focus();
			close();	
		});
	</script>

</body>
</html>