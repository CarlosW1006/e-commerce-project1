<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<%
	//會員
	if(request.getParameter("id") !=null && request.getParameter("pwd") != null){
		sql = "SELECT * FROM `members` WHERE `id`='" +request.getParameter("id") + 
			  "'  AND `pwd`='" + request.getParameter("pwd") + "'"  ; 
		ResultSet rs =con.createStatement().executeQuery(sql);
		
		if(rs.next()){%>
		<script>
			alert("登入成功，畫面跳轉至會員中心");
		</script>
<%            
			session.setAttribute("id",request.getParameter("id"));

			response.setHeader("refresh","0.1;URL=member.jsp");
		}

		else{
					//管理員

					if(request.getParameter("id") !=null && request.getParameter("pwd") !=null){
						sql = "SELECT * FROM `backstage` WHERE `back_id`='" +request.getParameter("id") + 
							  "'  AND `back_pwd`='" + request.getParameter("pwd") + "'"  ; 

						ResultSet rs2 =con.createStatement().executeQuery(sql);
						
						if(rs2.next()){%>
						<script>
							alert("登入成功，畫面跳轉至管理中心");
						</script>
					<%            
							session.setAttribute("id",request.getParameter("id"));

							response.setHeader("refresh","0.1;URL=backstage.jsp");
						}

						else{%>
						<script>
							alert("帳號或密碼錯誤，請重新登入");
						</script>
					<%
						response.setHeader("refresh","0.1;URL=index.jsp");
						}
					}
					else{%>
					<script>
						alert("帳號或密碼錯誤，請重新登入");
					</script>
					<%
					response.setHeader("refresh","0.1;URL=index.jsp");
					}
		}
	}
%>
