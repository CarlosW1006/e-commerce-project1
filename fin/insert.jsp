<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<% request.setCharacterEncoding("utf-8") ;%>

<% request.setCharacterEncoding("utf-8") ;%>
<%
String pid=new String(request.getParameter("pid"));
String pname=new String(request.getParameter("pname"));
String pprice=new String(request.getParameter("pprice"));
String pinvestory=new String(request.getParameter("pinvestory"));
String pimg=new String(request.getParameter("pimg"));
String ptxt1=new String(request.getParameter("ptxt1"));

sql = "SELECT * FROM `mouses` WHERE pid='"+pid+"'" ;
ResultSet rs=con.createStatement().executeQuery(sql);
if(pid==null||pid.equals(""))
{

	response.setHeader("refresh","0;URL=proadd.jsp") ;
}
else if(pname==null||pname.equals(""))
{
	
	response.setHeader("refresh","0;URL=proadd.jsp") ;
}



else if(rs.next()){%>
	<script>
        alert("此商品已重複，請重新新增");
	</script>
<% 
	response.setHeader("refresh","0.1;URL=proadd.jsp") ;
}
else{%>
	<script>
        alert("新增成功，畫面跳轉至後臺管理，");
	</script>
<% 
	
	sql = "INSERT `mouses`(pid,pname,pprice,pinvestory,pimg,ptxt1) values('"+request.getParameter("pid")+"','"+request.getParameter("pname")+"','"+request.getParameter("pprice")+"','"+request.getParameter("pinvestory")+"','"+request.getParameter("pimg")+"','"+request.getParameter("ptxt1")+"')" ;
	con.createStatement().execute(sql); //要打才會匯入
	response.setHeader("refresh","0.1;URL=backstage.jsp") ;
}
%>
