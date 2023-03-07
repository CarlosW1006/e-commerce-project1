<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
<head>
	<title>502</title>
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
    <!-- header start -->
	<header class="header-navigation pt-1" id="header">
		<nav id="nav">
			<ul>
				<div class="container-fluid">
					<div class="row">
						<div style="text-align: left; left;padding-left:  33.5%;">

							<li>
								<a class="col-1 home" href="index.jsp">Home</a>
							</li>
							<li>
								<a class="col-1 home" href="menu.jsp">Sales</a>
							</li>
							<li>
								<a class="col-1 home" href="about.jsp">About us</a>
							</li>
							<%
								if (session.getAttribute("id") != null) 
								{
							%>	
							<li onclick="buy3()">
								<a class="col-1 home" href="cart.jsp">Cart</a>
							</li>
							<%
								}
							%>
							<li class="home pl-4">
								<form action="" style="display: inline;">
									<div class="btn-group" role="group" aria-label="Basic example">
										
										<%
											if (session.getAttribute("id") != null) 
											{
										%>											
										<button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='member.jsp';">會員中心</button>
										
										<button type="submit" class="btn btn-outline-secondary"><a href="logout.jsp"><a href="logout.jsp">Sign Out</a></a></button>
										
										<%
											}
											else
											{
										%>	
										<button type="button" class="btn btn-outline-secondary" onclick="javascript:showDialog();">Sign In/Sign Up</button>
										<%
											}
										%>										
									</div>
								</form>
								<!-- dialogue -->
								<div class="ui-dialog" id="dialogMove" onselectstart='return false;'>
									<div class="ui-dialog-title" id="dialogDrag" onselectstart="return false;"
										style="border: 1px solid rgba(0,0,0,.2); border-radius: .3rem .3rem 0 0; border-bottom-width: 0;">
										<a class="ui-dialog-closebutton" href="javascript:hideDialog();"></a>
									</div>
									<div class="login-wrap">
										<div class="login-html" style="padding: 20px 40px; border: 1px solid rgba(0,0,0,.2); border-radius: 0 0 .3rem .3rem; border-top-width: 0;">
											
											<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" style="margin-bottom: 30px;">Sign In</label>&emsp;
											<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab" style="margin-bottom: 30px;">Sign Up</label>
											<div class="login-form" style="color: #454545;">
												<!-- sign in -->
												<form action="check.jsp" method="POST" class="sign-in-form">
													<div class="sign-in-htm container">
														<div class="group form-group row">
															<label for="signin-id" class="col-4 label">Username</label>
															<input id="signin-id" name="id" type="text" required="" 
																class="form-control col-7 input" maxlength="12" onkeyup="value=value.replace(/[\W]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
														</div>
														<div class="group form-group row">
															<label for="signin-pwd" class="col-4 label">Password</label>
															<input id="signin-pwd" name="pwd" type="password" required="" 
																class="form-control col-7 input" maxlength="20" onkeyup="value=value.replace(/[\W]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
															<i class="fa fa-eye ml-2" id="eye1"
																onclick="showhide();"
																style="height: 25px; margin-top: 22px;"></i>
														</div>
														<div class="group form-group">
															<input type="submit" class="button" value="Sign In">
														</div>
														<div class="group form-group my-3">
														<a class="forgot" href="">Forgot Password?</a>
													</div>
														

													</div>
												</form>
												<!-- sign up -->
												<form action="register.jsp" method="POST" class="sign-up-form">
													<div class="sign-up-htm container">
														<div class="group form-group row">
															<label for="signup-id" class="col-4 label">Username <span
																	class="text-danger">*</span></label>
															<input id="signup-id" name="id" type="text" pattern="[a-zA-Z0-9]*"required
																class="form-control col-7 input" maxlength="12" onkeyup="value=value.replace(/[\W]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" placeholder="abc123456">
														</div>
														<div class="group form-group row">
															<label for="signup-pwd" class="col-4 label">Password <span
																	class="text-danger">*</span></label>
															<input id="signup-pwd" name="pwd" type="password" required
																class="form-control col-7 input pww" maxlength="20" onkeyup="value=value.replace(/[\W]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" placeholder="">
															<i class="fa fa-eye ml-2" id="eye2"
																onclick="showhide();"
																style="height: 25px; margin-top: 28px;"></i>
														
														</div>
														<div class="group form-group row">
															<label for="email" class="col-4 label">Email <span
																	class="text-danger">*</span></label>
															<input id="email" name="email" type="email"
																class="form-control col-7 input" placeholder="abc123456789@gmail.com">
														</div>
														<div class="group form-group">
															<input type="submit" class="button" value="Sign Up">
														</div>
														
														
													</div>
												</form>
											</div>	
										</div>
									</div>
								</div>								
							</li>
						</div>
					</div>
				</div>
			</ul>
		</nav>
	</header>
    <!-- header end -->

	<div class="air" style="width: 100%; height: 120px;"></div>

    <!-- section start -->
	<% //jsp連接前端範例
							sql="select * from mouses where pid=3";
							ResultSet rs2=con.createStatement().executeQuery(sql);
							rs2.next();
							int pid=3;
							%>
	<section>
		<div class="container-fluid w-75">
			<div class="promain">
				<div class="promainpic">
					<div class="mySlides">
						<div class="numbertext">1 / 2</div>
						<img src="<%=rs2.getString(5)%>" style="width:100%">
					</div>
					<div class="mySlides">
						<div class="numbertext">2 / 2</div>
						<img src="<%=rs2.getString(9)%>" style="width:100%">
					</div>
					<a class="prev" onclick="plusSlides(-1)">❮</a>
					<a class="next" onclick="plusSlides(1)">❯</a>
					<div class="promainrow">
						<div class="promaincolumn">
							<img class="demo cursor" src="" style="width:100%" onclick="currentSlide(1)"
								alt="">
						</div>
						<div class="promaincolumn">
							<img class="demo cursor" src="" style="width:100%" onclick="currentSlide(2)"
								alt="">
						</div>
					</div>
				</div>
				<form class="produce" method="GET" action="addpro.jsp" style="padding-top:0px;">
					<div class="pro">
						<h1 style="font-size: 50px;margin-bottom: 10px; "></h1>
						<p>
							<span class="name"><%=rs2.getString(2)%></s>
						</p>
						<p>價格: $<%=rs2.getString(3)%></p>
						<p><%=rs2.getString(6)%></p>
						<p><%=rs2.getString(7)%></p>
						<p>數量：<input class="number mr-2" type="number" name="num" value="1" min="1" max="<%=rs2.getString(4)%>" />
						<span class="badge badge-danger">此商品庫存有限故無法加購超過<%=rs2.getString(4)%>個單位</span></p>
						<div class="mt-5">
							
							<!--<a href=""<input class="buy" type="submit" value="商品缺貨中" disabled></a>-->
						
							<a href=""><input class="buy" type="submit" value="加入購物車" onclick="buy1()"></a>
							<input style="display:none;" name="pro" value="3">
							<input hidden name="op" value="add">
							<input hidden name="sta" value="<%=rs2.getString(4)%>"> 
						    <input hidden name="pid" value="<%=rs2.getString(1)%>"> 
							<script>
							function buy1() {<%if(session.getAttribute("id") == null){%>
							  alert("請先登入會員!!");
							}
							<%}%>
							</script>

							<!--<a href=""><input class="buy" type="submit" value="請先登入會員" disabled></a>-->
						
						</div>
					</div>
				</form>
			</div>

			<hr style="clear:both; border: 1px solid #B3B492;">

			<div class="prointro">
				<h2 align="center" style="font-size: 40px;margin-bottom: 10px; ">商品介紹</h2>
				<hr style="clear:both; border: 1px solid #B3B492;">
				<p>商品展示：</p>
				<img class="intro" src="pic/g5023.jpg" alt="">
				<img class="intro" src="pic/g5024.jpg" alt="">
				<img class="intro" src="pic/g5025.jpg" alt="">&nbsp;&nbsp;&nbsp;&nbsp;

				<p>實體規格</p>
    			<p>高：132 公釐</p>
    			<p>寬：75 公釐</p>
    			<p>深：40 公釐</p>
    			<p>重量：114 公克，僅滑鼠</p>
    			<p>連接線長度：1.80 公尺</p>
    			<div class="right">
    				<p>追蹤器</p>
    				<p>感應器：HERO™ </p>
    				<p>解析度：100 – 16,000 DPI </p>
    				<p>零濾波/加速/過濾 </p>
    				<p>最大加速：> 40 G</p>	
    				<p>最大速度：> 400 IPS</p>
    			</div>
			</div>
			<div class="rank">
				<h2 align="center" style="font-size: 40px;margin-bottom: 10px; ">留言版~</h2>
				<form class="write" action="add.jsp" method="POST">
					<img src="pic/icon/q1.jpeg" alt="">
					<span class="data">
						<p>id</p>	
					</span>
					<div class="star">
						<input type="radio" id="star5" name="star" value="5" CHECKED hidden />
						<label for="star5"><i class="fas fa-star"></i></label>
						<input type="radio" id="star4" name="star" value="4" hidden />
						<label for="star4"><i class="fas fa-star"></i></label>
						<input type="radio" id="star3" name="star" value="3" hidden />
						<label for="star3"><i class="fas fa-star"></i></label>
						<input type="radio" id="star2" name="star" value="2" hidden />
						<label for="star2"><i class="fas fa-star"></i></label>
						<input type="radio" id="star1" name="star" value="1" hidden />
						<label for="star1"><i class="fas fa-star"></i></label>
					</div>
					<textarea name="memo" cols="20" rows="5" wrap="hard" maxlength="100" placeholder="ʕ￫ᴥ￩ʔ" required></textarea>

					<input class="ok" type="submit" name="Submit" value="提交" onclick="buy2()">
					<input type="hidden" name="pnum" value="3">					
					<script>
					function buy2() {<%if(session.getAttribute("id") == null){%>
							  alert("請先登入會員!!");
							}
							<%}%>
					</script>
							
					<!--<input class="ok" type="submit" value="請先登入" disabled>-->
					
				</form>

				<hr style="clear:both; border: 1px solid #B3B492;">

				<h2 align="center" style="font-size: 40px;margin-bottom: 10px; ">歷史留言</h2>
				<div class="rankall">
					
					<div class="history" style="height: auto;">
						<div class="review text-center py-4">						
						<%	
							sql="SELECT * FROM `board` WHERE page=3 "; //算出共幾筆留言
							ResultSet rs=con.createStatement().executeQuery(sql);
							//先移到檔尾, getRow()後, 就可知道共有幾筆記錄
							rs.last();
							int total_content=rs.getRow();
							out.println("共"+total_content+"筆留言<p>");
						   
							//每頁顯示5筆, 算出共幾頁
							int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
							out.println("請選擇頁數");
							//使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
							for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
							   out.print("<a href='product.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

							out.println("<p>");

							//讀取page變數
							String page_string = request.getParameter("page");
							if (page_string == null) 
							   page_string = "0";          
							int current_page=Integer.valueOf(page_string);
							if(current_page==0) //若未指定page, 令current_page為1
							  current_page=1;
						   //計算開始記錄位置   
						%>
						</div>
					</div>

					<h5 class="pl-3">
					<%
						//Step 5: 顯示結果 
						int start_record=(current_page-1)*5;
						//遞減排序, 讓最新的資料排在最前面
						sql="SELECT * FROM `board` WHERE page=3 ORDER BY `boNO` DESC LIMIT ";
						sql+=start_record+",5";
						
						//current_page=1: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 0, 5
						//current_page=2: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 5, 5
						//current_page=3: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 10, 5
						rs=con.createStatement().executeQuery(sql);
						//  逐筆顯示, 直到沒有資料(最多還是5筆)

						while(rs.next())
						{
							%><img src="pic/icon/q1.jpeg" alt="" style="height:80px;width:80px;">
							<%
							out.println("&nbsp&nbsp ID："+rs.getString(2)+"<br>");
							out.println("&nbsp&nbsp 評論："+rs.getString(3)+"<br>");
							out.println("&nbsp&nbsp 時間："+rs.getString(4)+"<br><hr>");
							}
							//}
					%>
					</h5>			
				</div>
			</div>
			<hr style="clear:both; border: 1px solid #B3B492;">

			<div class="like">
				<h2
					style="font-size: 40px; margin-bottom: 10px; margin-bottom: 15px;">
					您可能也喜歡</h2>
				<div class="allclass">
					
					<div class="aclass">
						<a href=""><img src="pic/product/g903.jpg" alt="" style="width:100%">
							<div class="overlay" style="width:100%;">
								<div class="class" style="border:1px lightblue solid; padding:50px 100px;" title="G903">G903</div>
							</div>
						</a>
					</div>
					<div class="aclass">
						<a href="p2.jsp"><img src="pic/product/g502.jpg" alt="" style="width:100%">
							<div class="overlay" style="width:100%;">
								<div class="class" style="border:1px lightblue solid; padding:50px 100px;" title="G502">G502</div>
							</div>
						</a>
					</div>
					<div class="aclass">
						<a href="p4.jsp"><img src="pic/product/g703.jpg" alt="" style="width:100%">
							<div class="overlay" style="width:100%;">
								<div class="class" style="border:1px lightblue solid; padding:50px 100px;" title="G703">G703</div>
							</div>
						</a>
					</div>
					<div class="aclass">
						<a href="p5.jsp"><img src="pic/product/g603.jpg" alt="" style="width:100%">
							<div class="overlay" style="width:100%;">
								<div class="class" style="border:1px lightblue solid; padding:50px 100px;" title="G603">G603</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!-- section end -->

    <!-- footer start -->
	<footer id="footer">
		<div class="container footer">
			<div class="row">
				<div class="col-md">
					<h2 class="">連絡我們</h2>
					<hr>
					<div class="block-23 mb-3">
						<ul>
							<li><i class="fas fa-map-marker-alt"></i>&nbsp;<span class="text">我們是！中原大學辣！</span></li><br><br>
							<li><i class="fas fa-phone"></i>&nbsp;<span class="text">265-9999</span></li><br><br>
							<li><a href="mailto:panguanyu0115@gmail.com" class="mail"><i class="fas fa-envelope"></i>&nbsp;<span
										class="text">panguanyu0115@gmail.com</span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="block-23 mb-3">
						<br><br>
						<ul>
							<li>
								<span class="inputt input--haruki">
									<form>
										<input type="text" name="" placeholder="給點回饋">
										<br><br>

										<span class="input__label-content input__label-content--haruki">Subscribe
											Us</span>
									</label>
								</span>
								</form>
								<br>
								<button class="btn btn-sub" onclick="">Subscribe</button>

							</li>
						</ul>
					</div>
					<div style="font-size: larger;"></div>
				</div>
				<div class="col-md">
					<div class="block-23 mb-3" style="padding-top: 20px;"><br>
						<div class="row">
							<div class="col">
								<a href="index.jsp" class="leaf">Home</a>
							</div>
							<div class="col">
								<a href="menu.jsp" class="leaf">Sales</a>
							</div>
						</div><br>
						<div class="row">
							<div class="col">
								<a href="about.jsp" class="leaf">About us</a>
							</div>
							
						</div>
					</div>
				</div>
			</div><br><br>
			<div class="row">
				<div class="col-md-12">
					<p>
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>  | 以上網頁商品版權來自羅技官方，僅做為作業使用不做任何商業用途.</p>
						<!--訪客計數器start-->
						<%     
						   sql="SELECT count FROM `counter`";
						   ResultSet rs1=con.createStatement().executeQuery(sql);
						   String countstring;
						   int count=0;
						   if(rs1.next())
						   {
							countstring = rs1.getString(1);
							count = Integer.parseInt(countstring);

							if(session.isNew())
							{
							 count++;
							 countstring = String.valueOf(count);
							 sql = "UPDATE counter SET `count`="+ countstring;
							 con.createStatement().execute(sql); 
							}
							con.close();
							out.println("你是第" + count + "位客人");
						   }     
						%>
		                <!--訪客計數器end-->
				</div>
			</div>
		</div>
	</footer>
    <!-- footer end -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
    <!-- js folder -->
	<script src="js/sign/header.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/login.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/password.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/mySlides.js" type="text/javascript" charset="utf-8"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	
	
</body>
	

</html>
