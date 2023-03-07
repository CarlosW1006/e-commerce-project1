<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
request.setCharacterEncoding("UTF-8");

    
	
    sql = "UPDATE `members` SET `id`='"+request.getParameter("id")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	int new_id=con.createStatement().executeUpdate(sql);
	
	
	
	if( new_id > 0 ){
		out.print("<script>alert('更新成功！畫面跳轉回會員中心');</script>");
		response.setHeader("refresh","0.1;URL=member.jsp") ;
	}
	else
		out.print("<script>alert('更新失敗！畫面跳轉回會員中心');</script>");
		response.setHeader("refresh","0.1;URL=member.jsp") ;
	con.close();
%>