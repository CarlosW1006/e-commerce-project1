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

		<div style="position:relative;top:50px;left:50px;">
		<%
			sql="SELECT * FROM `order`";
			ResultSet rs=con.createStatement().executeQuery(sql);
				out.print("查詢如下------------------------------"+"<br>");
			while(rs.next())
			{
					out.print("訂單編號："+rs.getString(3)+"<br>");
					out.print("會員ID："+rs.getString(6)+"<br>");
					out.print("商品名稱："+rs.getString(2)+"<br>");
					out.print("購買數量："+rs.getString(1)+"<br>");
					out.print("總價錢："+rs.getString(4)+"<br>");
					out.print("地址："+rs.getString(5)+"<br>");
					out.print("購買時間："+rs.getString(7)+"<br>");
					
					out.print("--------------------------------------"+"<br>");
			}

			sql = "SELECT * FROM `board` WHERE boID ='"+session.getAttribute("id")+"'ORDER BY boNO DESC";//印不出來
			ResultSet rs2=con.createStatement().executeQuery(sql);
							
			while(rs2.next())
				{
					out.println("&nbsp&nbsp 產品ID:"+rs2.getString(5)+"<br>");
					out.println("&nbsp&nbsp 評論:"+rs2.getString(3)+"<br>");
					out.println("&nbsp&nbsp 時間:"+rs2.getString(4)+"<br><hr>");

				}
			con.close();
			%>
		</div>
	</body>
	

</html>