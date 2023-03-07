<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
<head>
	<title>Cart</title>

	<style type="text/css" media="screen">
      @import "css/cart.css"  
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="utf-8">
	<link rel="Shortcut Icon" href="">
	<!-- css folder -->
	<link rel="stylesheet" type="text/css" href="css/navmodel.css">
	<link rel="stylesheet" type="text/css" href="css/regi.css">
	<link rel="stylesheet" type="text/css" href="css/check.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap1.css">
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
											
										<button type="submit" class="btn btn-outline-secondary"><a href="logout.jsp">Sign Out</a></button>
										
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
	<!---------------------------購物車--------------------------------->

	<br><br><br><br><br>
	<div class="Cart" style="top:0px;">
		<h1>Cart</h1>
		<hr>
		<div class="Cart-content">
			<!------------------購買商品--------------------->
			
				<%  
						
						
							int num=0;
							int price=0;
							int pid=0;
							int total=0;
							if(session.getAttribute("id")!=null)
							{
							sql = "SELECT * FROM car WHERE id = '" + session.getAttribute("id") + "'";
							ResultSet rs =  con.createStatement().executeQuery(sql);
							
							while(rs.next())
							{
							num = Integer.parseInt(rs.getString(5));	
							price = Integer.parseInt(rs.getString(4));
							 pid=rs.getInt("pid");
							 total=rs.getInt("total");
							%>
						
			<div class="Cart-sell-1">
				<div class="Cart-sell">
				
					<img class="Cart-sell-pic" src="<%=rs.getString("product_img")%>" alt="pure css3 slider" /> 							
				</div>
				<div class="Cart-right">
	                <p class="text">產品名稱 : <%=rs.getString("product_name")%></p>
	                <p class="text">產品價格 : <%=rs.getString("product_price")%></p>
	                <p class="text">數量 : <%=rs.getString("product_num")%></p>
					<input hidden name="op" value="del">
					<input hidden name="cid" value="<%=rs.getString("cid")%>">
	            </div>
	           	<div class="Cart-del">
	                <form action="addpro.jsp" method="get">
		                <input type="submit" name="del" class="Cart-del-btn" value="Delete">
						<input name="op" value="del" hidden>
						<input name="cid" value="<%=rs.getString("cid")%>" hidden>
               		</form>
           	 	</div>
				
			</div>					
			<%
					}
							
						
					int total1=0;
					sql = "SELECT SUM(total) FROM car WHERE id = '" + session.getAttribute("id") + "'";
					ResultSet rs4 = con.createStatement().executeQuery(sql);
					if (rs4.next()) 
					{
					total1=rs4.getInt(1);
					}
									
			
								%>
								
								<%
						if (total != 0) 
						{
					%>
			<input hidden name="pid" value="<%=pid%>">
			<input hidden name="total" value="<%=total1%>">
			<%
						}
				}	
			%>
			<br><br><br><hr>
			

			<!------------------確認購買--------------------->
			<form action="check_car.jsp">			
				<br/><br/><br/>
		        <h2>付款方式</h2>
				<div class="payment">	
					<select name="payment" size="1" >
						<option value="貨到付款">貨到付款</option>
						<option value="超商繳費">超商繳費</option>
						<option value="郵局轉賬">郵局轉賬</option>
						<option value="信用卡">信用卡</option>
					</select>
				</div>
				<h3 style="padding-left:50px;">輸入地址</h3>
				<div class="address" style="padding-left:50px;">
					<input type="text"rows="2" cols="40" style="font-size:20px" name="address"></input>
					</textarea>
				</div>
				
				<input type="submit" class="Cart-confirm-btn" value="Confirm">
            </form>
    	</div>
	</div>

	<!-----------------------聯絡我們--------------------------------->
	<br><br><br>
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
								<a href="home.html" class="leaf">Home</a>
							</div>
							<div class="col">
								<a href="" class="leaf">Sales</a>
							</div>
						</div><br>
						<div class="row">
							<div class="col">
								<a href="" class="leaf">About us</a>
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

<script>
$(function(){
	$('#BackTop').click(function(){ 
		$('html,body').animate({scrollTop:0}, 333);
	});
	$(window).scroll(function() {
		if ( $(this).scrollTop() > 300 ){
			$('#BackTop').fadeIn(222);
		} else {
			$('#BackTop').stop().fadeOut(222);
		}
	}).scroll();
});
</script>
<script src="js/sign/classie.js"></script>
<script src="js/sign/modalEffects.js"></script>
<script>
	// this is important for IEs
	var polyfilter_scriptpath = '/js/';
</script>
<script src="js/sign/cssParser.js"></script>
<script src="js/sign/css-filters-polyfill.js"></script>

</html>