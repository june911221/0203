<%@page import="model.TipsDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String se=null;
se=(String)session.getAttribute("ID");
%>
  <% 
 String ses=null;
 ses=(String)session.getAttribute("ID");
 if(ses==null){%>
 <jsp:include page="header.jsp"/>
 <%} else{%>
 <jsp:include page="Loginheader.jsp"/>
 <%} %>
<!DOCTYPE html>
<html>
<style>
section{
height:1100px;
}
/* 게시판 리스트 목록 */
.sub_news{position:relative;
top:150px;
left:200px;}

.sub_news,.sub_news th,.sub_news td{border:0}
.sub_news a{color:#383838;text-decoration:none}
.sub_news{width:80%;border-bottom:1px solid #999;color:#666;font-size:13px;table-layout:fixed}
.sub_news caption{display:none}
.sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
.sub_news td{padding:10px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
.sub_news .date,.sub_news .hit.num{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
.sub_news .title{text-align:left; padding-left:15px; font-size:13px;}
.sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
.sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
.sub_news tr.reply .title a{padding-left:16px;background:url(첨부파일/ic_reply.png) 0 1px no-repeat}
.newimg{
width:30px;
height:20px;
float:left;
display:none;
}
#btnwrite{
position:absolute;
top:340px;
left:8%;
}
#scbox{
position:absolute;
top:280px;
left:40%;
}

</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<table class="sub_news" border="1" cellspacing="0">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="110">
<col width="100">
<col width="80">
</colgroup>
<thead>
<tr>
<th scope="col" width="30px;">글번호</th>
<th scope="col" width="50px">카테고리</th>
<th scope="col">제목</th>
<th scope="col" width="70px;">글쓴이</th>
<th scope="col" width="50px;">날짜</th>
<th scope="col" width="50px;">조회수</th>
</tr>
</thead>
<%
String opt=null;
String text=null;
opt=(String)request.getParameter("Boardselectmenu");
text=(String)request.getParameter("searchinfo");
if(text==""||opt==null||text==null){//검색어가 없거나 셀렉트값이 없으면 리스트 전체 순서대로 출력
ArrayList<TipsDto> list=(ArrayList<TipsDto>)request.getAttribute("data");
out.print("<input type='hidden' id="+"size"+ "value="+list.size()+">");
//out.print(list.size());
//out.print(se);

 for(int i=0; i<list.size(); i++){
	out.print("<tr id='tr_hover'>"+"<td width=100 align=center>"+list.get(i).getNumber()+"</td>");
	out.print("<td width=100 align=center>"+list.get(i).getCategory()+"</td>");
	out.print("<td width=100 align=center>"+"<img src='img/new.jpg' class='newimg' id='newimg"+i+"'>"+"<a href='sang.do?command=select_one&number="+list.get(i).getNumber()+"'>"+list.get(i).getTitle()+"</a>"+"</td>");
	out.print("<td width=100 align=center>"+list.get(i).getWriter()+"</td>");
	out.print("<td width=100 align=center>"+list.get(i).getDate()+"</td>");
 	out.print("<td width=150 align=center>"+list.get(i).getHits()+"</td>"+"<tr>"); 
	out.print("<input type='hidden' id='date"+i+"' value='"+list.get(i).getDate()+"'>");//hidden타입에 value값으로 날자를 넣어 스크립트에서 비교하기
 }
}
%>
</table>

<input type=button onclick="location.href='tipsWrite.jsp'" name="write" id="btnwrite" value="글쓰기"/>
<div id="scbox">
<form name="boardsearchform" action="board.jsp" onsubmit="return search()" method="post">
<select class="sel" name="Boardselectmenu" id="Boardselectmenu">
<option value="none" selected>전체</option>
<option value="category">카테고리</option>
<option value="title_contents">제목+내용</option>
<option value="title">제목</option>
<option value="contents">내용</option>
<option value="writer">작성자</option></select>
<input type="text" value="" name="searchinfo" id="searchinfo">
<input type="submit" value="검색">
</div>
</section>
   <footer style=" height:200px;
width:100%;
background:#D6503E;">
   제작자 : 박하영, 홍준영, 한상혁<br>
   copyright © TOURTIPS Inc. All rights Reserved.
   </footer>
</body>
</html>