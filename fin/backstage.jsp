<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
	<head>
		<title>後臺管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta charset="utf-8">
		<link rel="Shortcut Icon" href="">
		<!-- css folder -->

		<link rel="stylesheet" type="text/css" href="css/navmodel.css">
		<link rel="stylesheet" type="text/css" href="css/regi.css">
		<link rel="stylesheet" type="text/css" href="css/check.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap1.css">
		<link rel="stylesheet" type="text/css" href="css/product1.css">

		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
			integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

	</head>

	<body style="background-color: 	#E0E0E0;">

		<div align="center" style="position:relative;top:150px;">

			<p style="font-size:40px;">你好管理員!<br /><br /></p>

			<p style="font-size:30px;"><a href="member_back.jsp" target="_blank">1.會員資料</a><br/></p>
			<p style="font-size:30px;"><a href="order_back.jsp" target="_blank">2.訂單資料</a><br/></p>
			<p style="font-size:30px;"><a href="proadd.jsp" >3.新增商品</a><br/></p>
			<p style="font-size:30px;"><a href="prodel.jsp" >4.刪除商品</a><br/></br></br></p>
			
			<a href="logout.jsp"><button type="button" class="btn btn-warning" style="width:150px;height:100px;font-size:40px;">登出</button></a>

		</div>
	</body>
	

</html>