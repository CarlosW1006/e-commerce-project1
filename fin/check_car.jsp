<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, java.util.Date, java.text.SimpleDateFormat"%>
<%@include file="config.jsp"%>

    <%			


			String id = session.getAttribute("id").toString();
			sql = "select * from car where `id` = '"+id+"'";
			ResultSet rs = con.createStatement().executeQuery(sql);
			
			String address=new String(request.getParameter("address"));
			java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
			
			if(address.equals("")){
				out.print("<script>alert('購買失敗！畫面跳轉回購物車');</script>");
				response.setHeader("refresh","0.1;URL=cart.jsp") ;
			}
			else{
			if(rs.next()){

                while (rs.next()) 
				{
                    String pid  = rs.getString("pid"); 
					String pname = rs.getString("product_name"); 				
                    int num = Integer.parseInt(rs.getString("product_num"));
					int price=Integer.parseInt(rs.getString("product_price"));
					
					sql = "INSERT `order`(pname, pnum, total, address, id, Putdate) VALUES('" + pname + "','" + num + "', '" + (price*num) + "', '" +address+ "', '" + id + "','"+new_date+"')";
                    con.createStatement().executeUpdate(sql);
                }
				rs.beforeFirst();
				
				
				
                sql = "DELETE FROM car WHERE id = '" + id + "'";
                con.createStatement().executeUpdate(sql);
				out.print("<script>alert('購買成功！畫面跳轉回首頁');</script>");
				response.setHeader("refresh","0.1;URL=index.jsp") ;
			}
			else{
				out.print("<script>alert('購買失敗！畫面跳轉回購物車');</script>");
				response.setHeader("refresh","0.1;URL=cart.jsp") ;
			}
			}	
%>