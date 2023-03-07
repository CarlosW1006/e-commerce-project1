<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊</title>
    <style>
         @import url("asset/signup.css");
    </style>
</head>
<body>
    <div class="main">
       <div class="head_color">
        <div>
            <a href="index.html"><img class="icon_pos" src="images/icon.png"></a>
        </div> 
        
        <center><div class="navbar">
            <a href="index.html">首頁</a>
            <a href="buy.html">商品一覽</a>
<%
											if (session.getAttribute("id") != null) 
											{
										%>		
             <div class="dropdown">
               <button class="dropbtn">會員
                 <i class="fa fa-caret-down"></i>
               </button>
              <div class="dropdown-content">
                <a href="member.html">會員資料編輯</a>
                <a href="order.html">訂單查詢</a>
                <a href="cart.html">購物車</a>
              </div>
             </div>
			 										<%
											}
										%>
             <a href="contact.html">關於我們</a>
          </div></center>
       </div>
   
   <div class="d">
   <div class="b">
<form action="register.jsp" style="border:1px solid #ccc">
  <div class="container">
    <h1>註冊</h1>
    <p>請填寫此表格來創建帳戶。</p>
    <hr>

    <label class="sign_content" for="id"><b>帳號</b></label>
    <input type="text" placeholder="Enter Email" name="id" required>

    <label class="sign_content" for="pwd"><b>密碼</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>

	<label class="sign_content" for="psw-repeat"><b>重複密碼</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> 記住我
    </label>

    <p>創建帳戶即表示您同意我們的 <a href="#" style="color:dodgerblue">條款和隱私權</a>.</p>

    <div class="clearfix">
      <a href="index.html"><button type="button" class="cancelbtn">取消</button></a>
      <button type="submit" class="signupbtn">註冊</button>
    </div>
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