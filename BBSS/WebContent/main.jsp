<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width-device-width" initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String userID =null;
		if(session.getAttribute("userID") !=null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class ="navbar navbar-default">
		<div class="navbar-header">
			<a class ="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class ="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class ="nav navbar-nav">
				<li><a href="bbs.jsp">게시판</a></li>	
				<li><a href="bbs.jsp">계산기</a></li>	
			</ul>
			<%
				if(userID ==null){
			%>
				<ul class ="nav navbar-nav navbar-right">
					<li><a href="login.jsp">로그인</a></li>
					<li> <a href="join.jsp">회원가입</a></li>
				</ul>
			<% 
				} else{
			%>
				<ul class ="nav navbar-nav navbar-right">
					<li><a href="logoutAction.jsp">로그아웃</a></li>
				</ul>
			<%
				}
			%>
		</div>
	</nav>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>