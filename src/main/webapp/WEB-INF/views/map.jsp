<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=w0u6w5q8ww"></script>
</head>
<body>

	<h1>현재 위치에서 가까운 병원의 리스트입니다.</h1>
<!-- 와파 무역회관 위치 :  102, 102 5g, 201, 202 -->
   <iframe width ="1200px" height = "600px" frameborder = "3" src="https://map.naver.com/v5/search/동물병원" style="margin-left: 200px; margin-right: 200px; margin-top: 0%;"></iframe>
<!--    <iframe width ="1600px" height = "700px" frameborder = "3" src="https://map.naver.com/v5/search/약국" style="margin-left: 0%; margin-top: 0%;"></iframe> -->
	


	<!-- 웹 페이지에 지도를 삽입할 DOM요소 지 -->
	<div id="map" style="width:100%;height:400px;"></div>

	<script>
/* 		var mapOptions = {
		    center: new naver.maps.LatLng(37.3595704, 127.105399),
		    zoom: 10
		};
	
		var map = new naver.maps.Map('map', mapOptions); */
		
	    var mapOptions = {
		        mapTypeControl: true,
		        mapTypeControlOptions: {
		            style: naver.maps.MapTypeControlStyle.BUTTON,
		            position: naver.maps.Position.TOP_RIGHT
		        },
		        zoomControl: true,
		        zoomControlOptions: {
		            style: naver.maps.ZoomControlStyle.SMALL,
		            position: naver.maps.Position.TOP_RIGHT
		        },
		        scaleControl: true,
		        scaleControlOptions: {
		            position: naver.maps.Position.RIGHT_CENTER
		        },
		        logoControl: true,
		        logoControlOptions: {
		            position: naver.maps.Position.TOP_LEFT
		        },
		        mapDataControl: true,
		        mapDataControlOptions: {
		            position: naver.maps.Position.BOTTOM_LEFT
		        }
		    };

		    var map = new naver.maps.Map(document.getElementById('map'), mapOptions); 
		    
		    
		    
/* 		    var map = new naver.maps.Map('map', {
		        center: new naver.maps.LatLng(37.5666805, 126.9784147),
		        zoom: 10,
		        mapTypeId: naver.maps.MapTypeId.NORMAL
		    });

		    var infowindow = new naver.maps.InfoWindow();

		    function onSuccessGeolocation(position) {
		        var location = new naver.maps.LatLng(position.coords.latitude,
		                                             position.coords.longitude);

		        map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
		        map.setZoom(10); // 지도의 줌 레벨을 변경합니다.

		        infowindow.setContent('<div style="padding:20px;">' + 'geolocation.getCurrentPosition() 위치' + '</div>');

		        infowindow.open(map, location);
		        console.log('Coordinates: ' + location.toString());
		    }

		    function onErrorGeolocation() {
		        var center = map.getCenter();

		        infowindow.setContent('<div style="padding:20px;">' +
		            '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

		        infowindow.open(map, center);
		    }

		    $(window).on("load", function() {
		        if (navigator.geolocation) {
		            /**
		             * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
		             * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
		             * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
		             */
		    /*        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
		        } else {
		            var center = map.getCenter();
		            infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
		            infowindow.open(map, center);
		        }
		    }); */
	</script>
</body>
</html>