<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%

	String new_id = String.valueOf(session.getAttribute("id")); 
	String new_comment=new String(request.getParameter("comment").getBytes("ISO-8859-1"),"UTF-8");
	//String new_pid=(String)session.getAttribute("new_pid");

	
	java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

	//執行 SQL 指令	
	sql="INSERT board (`boID`, `bocomment`, `Putdate`,`page`) ";
	sql+="VALUE ('" + new_id + "', ";
	sql+="'"+new_comment+"', ";
	sql+="'"+new_date+"',";   
	sql+="'"+request.getParameter("pnum")+"')";   	

	con.createStatement().execute(sql);%>
	<script>location.replace(document.referrer);</script><%
           
	//關閉連線
    con.close();
%>
</body>
</html>
