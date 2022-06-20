<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>  
<%@ page import="com.siksin.menu.model.vo.MenuOption" %>
<%@ page import="com.siksin.menu.model.vo.Menu" %>
<%
	List<MenuOption> mopList=(List<MenuOption>)request.getAttribute("mopList");	
	String menuName=(String)request.getAttribute("menuName");
	String menuPrice=(String)request.getAttribute("menuPrice");
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
    <form action="<%=request.getContextPath() %>/storedetailsearch.do" method="post">
     <%=menuName %> 
     <%=menuPrice %> 
     <%for(MenuOption mop : mopList){ %>   	
      	<div onclick="">
	        <div  class="row g-5">
		        <div class="col-md-10">		        
		        	<input type="checkbox" name="menuop" id="menuOpId<%=mop.getMenuOpId() %>" value="<%=mop.getMenuOpName() %> <%=mop.getMenuOpPrice() %> "><label for="menuOpId<%=mop.getMenuOpId() %>"><%=mop.getMenuOpName() %></label>			        	
		        	<div><%=mop.getMenuOpPrice() %> 원</div>
		        </div>		       
	        </div>
        </div>	   
   	<%} %>
   </form>
   <input type="submit" value="주문표에 추가">
   <input type="submit" value="주문">
   
  <!--  <button id="menuListAdd">주문표에 추가</button>
   <button >주문하기</button> -->
      </article>
    
    <script>
		const btn=document.querySelector("[type=submit]");
		console.log(btn);
		btn.addEventListener("click",(e)=>{
			/* opener.cart. */
			close();	
		});
	</script> 

</body>
</html>