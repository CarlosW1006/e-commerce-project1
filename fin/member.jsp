<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
<head>
	<title>會員中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="Shortcut Icon" href="">
	<!-- css folder -->
	<link rel="stylesheet" type="text/css" href="css/navmodel.css">
	<link rel="stylesheet" type="text/css" href="css/regi.css">
	<link rel="stylesheet" type="text/css" href="css/check.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap1.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/component1.css">
    <link rel="stylesheet" type="text/css" href="css/member.css">
	<link rel="stylesheet" type="text/css" href="css/product1.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
		integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>

<body style="background-color: #E0E0E0;">

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
								<form action="" style="display: inline;padding-left:-10px;">
									<div class="btn-group" role="group" aria-label="Basic example">
										
										<button type="button" class="btn btn-outline-secondary" onclick="javascript:location.href='member.jsp';">會員中心</button>
										
										<button type="submit" class="btn btn-outline-secondary"><a href="logout.jsp">Sign Out</a></button>
										
										<%
											if (session.getAttribute("id") == null) 
											{
										%>	
										<button type="button" class="btn btn-outline-secondary" onclick="javascript:showDialog();">Sign In/Sign Up</button>
										<%}%>
										
									</div>
								</form>
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
												<form action="" method="POST" class="sign-up-form">
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

	<div class="air" style="width: 100%; height: 80px;"></div>

	<!-- section sart -->
	<section>
		<div class="container-fluid w-75">
			<div class="taball">
				<button class="tablinks" onclick="openCity(event, 'Profile')" id="defaultOpen">個人資訊</button>
				<button class="tablinks" onclick="openCity(event, 'modify')">編輯修改</button>
				<button class="tablinks" onclick="openCity(event, 'order')">購買紀錄</button>
				<button class="tablinks" onclick="openCity(event, 'content')">留言紀錄</button>
			</div>
			
			<div id="Profile" class="tabcontent">
				
					<div class="head" align="center"><img src="img/ghead.png" alt="" ></div>
					<form class="self" action="" method="POST">
						<% 
						request.setCharacterEncoding("UTF-8");
						if(session.getAttribute("id") != null ){
							sql = "SELECT * FROM `members` WHERE id = '" +session.getAttribute("id")+ "'";
							ResultSet rs = con.createStatement().executeQuery(sql);
							rs.next();				
	%>
					
					<table>

						<tr><td width="30%">會員帳號：</td><td width="70%"><input type="text" disabled="disabled" name="id" value="<%=rs.getString("id")%>" ></td></tr>
						<tr><td width="30%">姓名：</td><td width="70%"><input type="text" disabled="disabled" name="name" value="<%=rs.getString("newname")%>" ></td></tr>
						<tr><td width="30%">E-mail：</td><td width="70%"><input type="text" disabled="disabled" name="email" value="<%=rs.getString("email")%>" ></td></tr>
					</table>
					</form>
				</div>
				<div id="modify" class="tabcontent">
					<div class="head" align="center"><img src="img/ghead.png" alt="" ></div>
					<form class="self" action="update.jsp" method="POST">
						<table>
							<tr><td width="30%">姓名：</td><td width="70%"><input type="text" name="newname" value="<%=rs.getString("newname")%>"></td></tr>
							<tr><td width="30%">E-mail：</td><td width="70%"><input type="email" name="email" value="<%=rs.getString("email")%>"></td></tr>
							<tr><td width="30%">密碼：</td><td width="70%"><input type="text" disabled="disabled" name="pwd" value="<%=rs.getString("pwd")%>"></td></tr>
							<tr><td width="30%">修改密碼：</td><td width="70%"><input type="text" name="newpwd" value="<%=rs.getString("pwd")%>"></td></tr>
							<tr><td colspan=2><input class="self_btn" type="reset" value="清空"><input class="self_btn" type="submit" value="確認修改"></td></tr>
						</table>
							</form> 
						<% }%>
				</div>
				
			<div id="order" class="tabcontent">
			<%
			sql = "SELECT * FROM `order` WHERE id = '" + session.getAttribute("id") + "' ";
			ResultSet rs3=con.createStatement().executeQuery(sql);
			
			%>
				<button class="accordion">購買紀錄</button>
					<div class="panel block" style="height:390px;">
					<%while(rs3.next()){%>
						<p>訂單編號：<%=rs3.getString("orderid")%></p>
						<p>商品名稱：<%=rs3.getString("pname")%></p>
						<p>購買數量：<%=rs3.getString("pnum")%></p>
						<p>總價錢：<%=rs3.getString("total")%></p>
						<p>購買時間：<%=rs3.getString("Putdate")%></p>
						<hr>
						<%}%>
					</div>
					
			</div>
			<div id="content" class="tabcontent">
				<div class="history" style="height: auto;">
					<span class="data">
						<p></p>
						<p></p>
					</span>
					<div class="star">				
					</div>
					<div class="review" style="height: auto;">
						<p>留言<br>
						<%
							
							sql = "SELECT * FROM `board` WHERE boID = '" + session.getAttribute("id") + "' ORDER BY boNO DESC";
							
							
							ResultSet rs2=con.createStatement().executeQuery(sql);
							
							while(rs2.next())
							{
								out.println("&nbsp&nbsp 產品ID:"+rs2.getString(5)+"<br>");//到時候要改成產品
								out.println("&nbsp&nbsp 評論:"+rs2.getString(3)+"<br>");
								out.println("&nbsp&nbsp 時間:"+rs2.getString(4)+"<br><hr>");

							}
						
						%>									
						</p>
					</div>
				</div>
				<hr>
			
			</div>
		</div>
	</section>
    <!-- section end -->

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

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
	<script src="js/sign/header2.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/login.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/password.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/showhide.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/sign/classie.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/sign/openCity.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/sign/accordion.js" type="text/javascript" charset="utf-8"></script>
</body>


</html>
