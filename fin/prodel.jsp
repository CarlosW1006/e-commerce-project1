<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
	<head>
		<title>Pro</title>
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

		<div align="center" style="position:relative;top:90px;">

			<p style="font-size:40px;">你好管理員!<br/><br/></p>

			<tr id="mySelect">
						<form action="delete.jsp">
						<p style="font-size:25px;">
							<td>想刪除的商品ID：<input name="pid" type="text" value="" style="width: 10em;" required></td><br/><br/>
							
							<button type="submit" class="btn btn-warning" style="width:100px;height:60px;font-size:30px;">刪除</button></a>
						</p>	
						</form>
			</tr>

		</div>
	</body>
	

</html>