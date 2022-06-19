<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소입력창</title>
<style>

h4{
text-align: center;
margin: 4px;
}

.Addr{
font-size: 14px;
}

#mapAddress{
margin-top: 5px;

width: 372px; 
height: 22px;

border-top-left-radius:5px;
border-bottom-left-radius:5px;
border-top-right-radius:5px;
border-bottom-right-radius:5px;
}

#addinfo{
margin-top: 5px;

width: 372px; 
height: 22px;

border-top-left-radius:5px;
border-bottom-left-radius:5px;
border-top-right-radius:5px;
border-bottom-right-radius:5px;
}

#addbutton{	
margin-top : 5px;

background-color: red;
border:1px solid red;
color: white;
width: 380px;
height: 28px;

border-top-left-radius:5px;
border-bottom-left-radius:5px;
border-top-right-radius:5px;
border-bottom-right-radius:5px;
cursor: pointer;
}

</style>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- 지도를 표시할 div 입니다 -->
<h4>현재위치로 주소입력</h4>
<div id="map" style="width:380px;height:380px;"></div>

<div class="map_wrap">
	<form action="<%=request.getContextPath() %>/deladdress.do">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>   
	    <div class="Addr">
	        <span class="title" font>지도중심기준 행정동 주소정보</span><br>
	    	<input type="text" value="" id="mapAddress"></div>
	    </div>
	    <div id="">
			<input type="text" id="detAddress" placeholder="상세주소를 입력하세요(건물명, 동/호수 등)">
			<button type="submit" id="addbutton">주소 저장</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7fed37bf5a28c91c2f899bb4b9338c9&libraries=services"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.4905399, 126.7280586), // 지도의 중심좌표
    level: 2 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var geocoder = new kakao.maps.services.Geocoder();

//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">현재 위치입니다.</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할 수 없습니다.'
        
    displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    

	

	navigator.geolocation.getCurrentPosition((position)=>{
	let latitude=position.coords.latitude;
		let longitude=position.coords.longitude;
	
		console.log('latitude',latitude);
		console.log('longitude',longitude);
		
		geocoder.coord2Address(longitude,latitude,
				(result,status)=>{
					console.log(result);
					console.log(status);
					
		/* document.write(result[0].address.address_name);	 */
		let inputadd=document.getElementById("mapAddress").innerHTML=(result[0].address.address_name);
		$('input[id=mapAddress]').attr('value',inputadd);
		});
	}, (err)=>{
		
	});
  
</script>
</body>
</html>