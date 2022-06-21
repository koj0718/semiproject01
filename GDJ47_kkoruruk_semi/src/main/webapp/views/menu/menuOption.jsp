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
     <%=menuName %> 
     <%=menuPrice %> 
     <%for(MenuOption mop : mopList){ %>   		
      	<div onclick="">
	        <div  class="row g-5">
		        <div class="col-md-10">		   	            
		        	<input type="checkbox" name="menuop" id="menuOpId<%=mop.getMenuOpId() %>" value="<%=mop.getMenuOpName() %> <%=mop.getMenuOpPrice() %> ">
		        	<input type="hidden" name="menuop" value="<%=mop.getMenuId() %> ">
		        	<input type="hidden" name="menuop" value="<%=mop.getMenuOpPrice() %> ">
		        	<input type="hidden" name="menuop" value="<%=mop.getMenuOpId() %> ">
		        	<input type="hidden" name="menuop" value="<%=mop.getMenuOpName() %> ">
		        	<label for="menuOpId<%=mop.getMenuOpId() %>"><%=mop.getMenuOpName() %>  <%=mop.getMenuOpPrice() %>원 </label>		        			         				        	
		        	<%-- <div id="menuopprice"><%=mop.getMenuOpPrice() %> 원</div> --%>	        	
		        </div>		       
	        </div>
        </div>	   
   	<%} %>
   <input type="submit" id="cartAdd" value="주문표에 추가">	
   <input type="submit" value="주문">
 
      </article>
    
    <script>
    const btn=document.getElementById("cartAdd");
    
    btn.addEventListener("click",(e)=>{
    	console.log($("input[name=menuop]:checked"));
    	console.log($("input[name=menuop]:checked")[0]);  
    	const qwe=$("input[name=menuop]:checked");
    	const table=document.createElement("table")
    	const tr=document.createElement("tr");
    	
    	
    	/* $(opener.document.getElementById("cart").append(qwe)); */
    	
    	for(let i=0;i<qwe.length;i++){
    		const td=document.createElement("td");
    		td.innerText=qwe[i].value;
    		tr.appendChild(td);
    		/* $(opener.document.getElementById("cart").append(table).append(qwe[i].value)); */
    	}
    	table.appendChild(tr);
    	$(opener.document.getElementById("cart").appendChild(table));
    	
    	
    });
    
    
    
    
    
    
    
    
    
    
    
		<%-- const btn=document.getElementById("cartAdd");
		btn.addEventListener("click",(e)=>{
			const table=document.createElement("table")
			const tr=document.createElement("tr");
			tr.innerHTML="<%=menuName%>"+<%=menuPrice%>+"<button id=del>X</button>"
			tr.append("<%=menuName%>","<%=menuPrice%>");
			
			
			/* const td=document.createElement("td"); */
		
			console.log($("input[name=menuop]:checked"));
			const qwe=$("input[name=menuop]:checked");
			
			for(let i=0;i<qwe.length;i++){
				const td=document.createElement("td");
				console.log(qwe[i].value);
				td.innerHTML=qwe[i].value;
							//document.getElementById("menuopprice")
				tr.appendChild(td);
				//tr.append(document.getElementById("menuopprice"));
				//tr.appendChild(document.getElementById("menuopprice"));
				
				//console.log(document.getElementById("menuopprice"));	
				/* td.innerHTML=document.getElementById("menuopprice");
				tr.appendChild(td) */
			
			}
			//console.log($(opener.document.getElementById("price").appendChild(table).appendChild(tr)));
					
			console.log($(opener.document.getElementById("cart").appendChild(table).appendChild(tr)));			
	
			//close();	
		}); --%>
	</script> 

</body>
</html>