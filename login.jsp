<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入</title>
    <style>
         @import url("asset/login.css");
    </style>
</head>
<body>
    <div class="main">
       <div class="head_color">
        <div>
            <a href="index.jsp"><img class="icon_pos" src="images/icon.png"></a>
        </div> 
        
        <center><div class="navbar">
            <a href="index.jsp">首頁</a>
            <a href="buy.jsp">商品一覽</a>
			<%
											if (session.getAttribute("id") != null) 
											{
										%>		
             <div class="dropdown">
               <button class="dropbtn">會員
                 <i class="fa fa-caret-down"></i>
               </button>
              <div class="dropdown-content">
                <a href="member.jsp">會員資料編輯</a>
                <a href="order.jsp">訂單查詢</a>
                <a href="cart.jsp">購物車</a>
              </div>
             </div>
			 										<%
											}
										%>
             <a href="contact.jsp">關於我們</a>
          </div></center>
       </div>
   
   <div class="d">
   <div class="b">
<form action="check.jsp" method="post">
  <div class="container">
      <h1>登入</h1>
      <hr>
    <label class="login_content" for="uname"><b>使用者名稱</b></label>
    <input type="text" placeholder="Enter Username" name="id" required>

    <label class="login_content" for="psw"><b>密碼</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>

    <button type="submit">登入</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> 記住我
    </label>
  </div>

  <div class="container" >
    <a href="index.jsp"><button type="button" class="cancelbtn">取消</button></a>
    <span class="psw">忘記 <a href="#">密碼?</a></span>
  </div>
</form>

   </div></div>
   <div class="c">
<p class="contact_pos">電話:02-1234-5678<br>
 服務時間:早上8點-晚上10點<br>
 信箱:toyhouse@gmail.com</p>
   </div>
  </div>
</body>
</html>