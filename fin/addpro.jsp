<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page pageEncoding="utf-8"%>





    <%//新增

									
				if (session.getAttribute("id") != null) 
				{
										

                String op = request.getParameter("op");    //op=op
                if (op.equals("add")) 
				{

                    int num= Integer.parseInt(request.getParameter("num"));
                    int sta = Integer.parseInt(request.getParameter("sta"));

                    if (num > sta) 
					{
    %>
		<meta http-equiv="refresh" content="0; url=change_stock.jsp">

    <%	
					}
					else 
					{
						    
							String img_path = "";
							String name = "";
							int price = 0;
							int cid=0;
							int pid=Integer.parseInt(request.getParameter("pid"));
							String sql1 = "SELECT count1 FROM counter1" ; 
							String user=session.getAttribute("id").toString();
							ResultSet rs =  con.createStatement().executeQuery(sql1);
							rs.next();
							int count=rs.getInt("count1");
							count++;
							cid=count;
							sql = "UPDATE counter1 SET count1="+String.valueOf(count);
							con.createStatement().executeUpdate(sql);


							sql = "SELECT * FROM mouses WHERE pid = '" + pid + "'";
							ResultSet rs2 = con.createStatement().executeQuery(sql);
							
                        if (rs2.next()) 
						{
                            img_path = rs2.getString("pimg");
							name = rs2.getString("pname");
							price = Integer.parseInt(rs2.getString("pprice"));
                        }

                        sql = "INSERT INTO car(cid,product_img,product_name,product_price,product_num,id,total,pid) VALUES('" + cid + "','" + img_path + "', '" + name + "', '" + price + "', '" + num + "', '" + user+ "', '" + price*num+ "', '" + pid+ "')";   //table car新增資料
						con.createStatement().execute(sql);
						
						int new_investory =0;
						new_investory=sta-num;
						String pro=request.getParameter("pro").toString();
						
						sql="UPDATE mouses SET pinvestory='"+new_investory+"' WHERE pid='"+pro+"'" ;
						con.createStatement().execute(sql);
    %>
					<script>
					alert("成功加入");
					
					</script>
					<script>location.replace(document.referrer);</script>
	<%
	//刪除

                    }
					
					
				}
				if (op.equals("del"))
				{

					String cid =request.getParameter("cid");        //cid的值=cid
					sql = "DELETE FROM car WHERE cid = " + cid;
                    con.createStatement().executeUpdate(sql);
					
					
					
    %>
	<script>
					alert("刪除成功");
					</script>
  
    <%
				response.setHeader("refresh","0.1;URL=cart.jsp");
				}
				}
				else{
					    %>

					<script>location.replace(document.referrer);</script>
	<%
				}
			   con.close();        

%>