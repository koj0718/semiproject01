<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#search-menu{

	/* display : flex; */
	margin-left : 150px;
	/* justify-content: center;
	align-items: center; */
	

}

h1 {
	/* display : flex;
	margin-right : 400px;
	justify-content: center;
	align-items: center;
 */
}



</style>
</head>
<body>
	<h1 id="title">메뉴검색</h1>
	
        	<div id="search-menu">
        		<form action="<%=request.getContextPath()%>/menu/searchMenu">
        			<input type="text" name="searchMenu" size="30" 
        			placeholder="오늘은 어떤 메뉴를 주문해 볼까요?">
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	
	
</body>
</html>