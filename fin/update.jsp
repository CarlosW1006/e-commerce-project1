<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
request.setCharacterEncoding("UTF-8");

    
	
    sql = "UPDATE `members` SET `pwd`='"+request.getParameter("newpwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	int new_pwd=con.createStatement().executeUpdate(sql);
	
	sql = "UPDATE `members` SET `email`='"+request.getParameter("email")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	int new_email=con.createStatement().executeUpdate(sql);
	
	sql = "UPDATE `members` SET `newname`='"+request.getParameter("newname")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	int new_newname=con.createStatement().executeUpdate(sql);
	if( new_pwd > 0 && new_email > 0 && new_newname>0){
		out.print("<script>alert('更新成功！畫面跳轉回會員中心');</script>");
		response.setHeader("refresh","0.1;URL=member.jsp") ;
	}
	else
		out.print("<script>alert('更新失敗！畫面跳轉回會員中心');</script>");
		response.setHeader("refresh","0.1;URL=member.jsp") ;
	con.close();
%>