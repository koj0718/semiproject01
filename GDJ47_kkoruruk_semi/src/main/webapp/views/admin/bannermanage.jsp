<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

#bannerManage{

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

#location {
	margin-left : 150px;
}

</style>
</head>
<body>
	<h1 id="title">베너관리</h1>
	
        	<div id="bannerManage">
        		<form action="">
        			<input type="text" id="searchaddress" size="30" 
        			placeholder="건물명,도로명 또는 지번으로 검색">
        			<button type="submit">검색</button>
        		</form>
        	</div>
        	<div id="location">
        		<a>현재 위치로 주소 찾기</a>
        	</div>
	
		
		
	<input type="file" id="inputImage">

  <button id="sendButton">보내기</button>

  <img src="" class="uploadImage">
      <script>

    document.querySelector("#sendButton").addEventListener('click',()=>{

      let selectFile = document.querySelector("#inputImage").files[0];

      const file = URL.createObjectURL(selectFile);

      document.querySelector(".uploadImage").src = file;

    })

  </script>
		
		
		
</body>
</html>