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
    <form action="<%=request.getContextPath() %>/storedetailsearch.do">
     <%=menuName %> 
     <%=menuPrice %> 
     <%for(MenuOption mop : mopList){ %>   		
      	<div onclick="">
	        <div  class="row g-5">
		        <div class="col-md-10">		        
		        	<input type="checkbox" name="menuop" id="menuOpId<%=mop.getMenuOpId() %>" value="<%=mop.getMenuOpName() %> "><label for="menuOpId<%=mop.getMenuOpId() %>"><%=mop.getMenuOpName() %></label>			        	
		        	<div><%=mop.getMenuOpPrice() %> 원</div>
		        </div>		       
	        </div>
        </div>	   
   	<%} %>
   </form>
   <input type="submit" id="cartAdd" value="주문표에 추가">	
   <input type="submit" value="주문">
   
 
      </article>
    
    <script>
		const btn=document.getElementById("cartAdd");
		btn.addEventListener("click",(e)=>{
			const table=document.createElement("table")
			const tr=document.createElement("tr");
			tr.innerHTML="<%=menuName%>"+<%=menuPrice%>+"<button id=del>X</button>"
			const td=document.createElement("td");
		
			console.log($("input[name=menuop]:checked"));
			const qwe=$("input[name=menuop]:checked");

					
			console.log($(opener.document.getElementById("cart").appendChild(table).appendChild(tr).appendChild(td)));			
	
			//close();	
		});
	</script> 

</body>
</html>