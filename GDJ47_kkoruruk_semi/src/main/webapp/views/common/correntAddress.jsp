<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 주소 입력창</title>
</head>
<body>

	<span>현재 위치</span>
	<div id="map" style="width: 400px; height: 400px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7fed37bf5a28c91c2f899bb4b9338c9&libraries=services"></script>
	<script>
		//let latitude,longitude;
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 1
		// 지도의 확대 레벨
		};
		//지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		navigator.geolocation.getCurrentPosition((position)=>{
			let latitude=position.coords.latitude;
			let longitude=position.coords.longitude;
		
			console.log('latitude',latitude);
			console.log('longitude',longitude);
			
			geocoder.coord2Address(longitude,latitude,
					(result,status)=>{
						console.log(result);
						console.log(status);
						
			document.write(result[0].address.address_name);	 		
					});
		}, (err)=>{
			
		});
		
		
		
		

	</script>
</body>
</html>