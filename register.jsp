<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8") ;%>
<%
String id=new String(request.getParameter("id"));
String pwd=new String(request.getParameter("pwd"));

sql = "SELECT * FROM `members` WHERE id='"+id+"'" ;
ResultSet rs=con.createStatement().executeQuery(sql);
if(id==null||id.equals(""))
{

	response.setHeader("refresh","0;URL=index.jsp") ;
}
else if(pwd==null||pwd.equals(""))
{
	
	response.setHeader("refresh","0;URL=index.jsp") ;
}


else if(rs.next()){%>
	<script>
        alert("此帳號已重複，畫面跳轉至首頁");
	</script>
<% 
	response.setHeader("refresh","0.1;URL=index.jsp") ;
}
else{%>
	<script>
        alert("註冊成功，麻煩請重新登入");
	</script>
<% 
	
	sql = "INSERT `members`(id,pwd) values('"+request.getParameter("id")+"','"+request.getParameter("pwd")+"')" ;
	con.createStatement().execute(sql); //要打才會匯入
	response.setHeader("refresh","0.1;URL=index.jsp") ;
}
%>
