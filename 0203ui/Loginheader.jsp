<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
	<html lang="en" >
	<head>
	<meta charset="UTF-8">
	<title>Loginheader</title>
<link rel="stylesheet" href="css/Loginheader.css">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/header.js"></script>
	</head>
	<body>
	<header>
	<!--메인로고 -->
	<a href="index.jsp"><div id="logo"><img src="img/logo2.png"></div></a>

	<!-- 비행기로고 -->
	<div class="plane">
	<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="-332 285.2 126.6 43.8"><style>.st0{fill:none;stroke:#C29924;stroke-width:2.3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st1{fill:#E2C02D;stroke:#C29924;stroke-width:2.3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}</style><path class="st0 path" stroke-dasharray="12" stroke-dashoffset="12" d="M-209.5,306v12"/><path class="st0 path" stroke-dasharray="12" stroke-dashoffset="12" d="M-209.5,305.9v-12"/><path class="st1" d="M-215.4 299.4c4.9 0 8.8 2.9 8.8 6.6 0 3.7-3.9 6.6-8.8 6.6"/><path class="st0" d="M-292.9 308.5h-2.4c-5.8 0-10.5-5.7-10.5-11.5v-4.1c0-3.6 3-6.6 6.6-6.6 3.4 0 6.2 2.8 6.2 6.2v16h.1z"/><path class="st1" d="M-292.9 292.6l7.8 6.6"/><path class="st0" d="M-224.7 318.3h-37.5s2.3-4.9 18.6-4.9 18.9 4.9 18.9 4.9zm0-26.6h-37.5s2.3-4.9 18.6-4.9 18.9 4.9 18.9 4.9z"/><path class="st0" d="M-256 314.4l-36.8-5.9.3-9.1h43.8v1.2c.3 3.7 3.5 6.7 7.3 6.7s6.9-2.8 7.3-6.5v-1.4h18.8v13.3l-14.3 2.5M-252.4 313.8v-22.1"/><path class="st0" d="M-234.6 313.8v-22.1l-17.6 22.2"/><circle class="st0" cx="-218.9" cy="323.8" r="4"/><line class="st0 smoke smoke1" x1="-320.1" y1="302.7" x2="-326.5" y2="302.7"/><path class="st0" d="M-215.8,313.4l-3.1,10.4l-3.6-9.4 M-292.6,299.4h-17.6 M-224.7,299.4v-7.7l-5.7,7.7"/><line class="st0 smoke smoke2" x1="-324.4" y1="297.4" x2="-330.8" y2="297.4"/><line class="st0 smoke smoke3" x1="-317.7" y1="292.2" x2="-324.1" y2="292.2"/><line class="st0 smoke smoke4" x1="-312.5" y1="295.9" x2="-318.9" y2="295.9" /></svg>
	</div>

	<!-- 검색창 -->
	<div id="wrap">
	<form action="" autocomplete="on">
	<input id="search" name="search" type="text" placeholder="What're we looking for?"><input id="search_submit" value="Rechercher" type="submit">
	</form>
	</div>

<!-- 메뉴바&로그인 -->
	<nav>
	<div class="topMenu">
	<ul class="menu01">
		<li><a href="index.jsp">Home</a></li>
		<li><a href="flight.jsp">항공조회</a></li>
		<li><a href="tourinfo.jsp">여행정보</a>
			<ul class="dept01">
				<li id="nop"><a href="citysel.jsp">도시</a></li>
				<li id="nop"><a href="#">테마</a></li>
				<li id="nop"><a href="#">명소</a></li>
				<li id="nop"><a href="#">맛집</a></li>
			</ul>
		<li><a href="board.jsp">커뮤니티</a>
			<ul class="dept01">
				<li id="nop"><a href="withme.jsp">함께해요</a></li>
				<li id="nop"><a href="hugi.jsp">여행후기</a></li>
				<li id="nop"><a href="sang.do?command=select">정보&팁</a></li>
				<li id="nop"><a href="#">Q&A</a></li>
			</ul>
		</li>
		<li><a href="mypagero.jsp">마이페이지</a>
	        <ul class="dept01">
				<li id="nop"><a href="userinfo.jsp">회원정보수정</a></li>
				<li id="nop"><a href="air.jsp">예약확인&취소</a></li>
				<li id="nop"><a href="#">게시글관리</a></li>
				<li id="nop"><a href="#">스크랩</a></li>
			</ul>
	
	</div>
	<div class="usermenu">
	<p><a href="#">${ID}님</a> <a href="Logout.jsp" style="margin-left:30px;">로그아웃</a></p>
    </div>
	</nav>
	</header>
	 </body>
</html>
