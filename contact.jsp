<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <style>
        @import url("asset/contact.css");
    </style>
</head>
<body>
    <div class="main">
       <div class="head_color">
        <div>
            <a href="index.jsp"><img class="icon_pos" src="images/icon.png"></a>       
          </div> 
         <center>
        <div class="navbar">
          <a href="index.jsp">首頁</a>
          <a href="buy.jsp">商品一覽</a>
		  <%
								if (session.getAttribute("id")!= null) 
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
}%>	
          <a href="contact.jsp">關於我們</a>
        </div>
      </center>
       </div>
       <div class="b">
        <div class="container1">
          <img class="image" src="images/head1.jpg" >
          <div class="overlay">
           <div class="text">資管二甲<br>徐聖皓<br><br>負責內容:<br>前端 </div>
         </div>
        </div>
        <div class="intro_1">
           <a target="_blank" href="https://www.instagram.com/xu.huashengde/"><img class="img_1" src="images/instagram.png" ></a><a target="_blank" href="https://www.facebook.com/sam.howard.969"><img class="img_2" src="images/facebook.png" ></a>
        </div>
        <div class="container2">
          <img class="image" src="images/head2.jpg" >
          <div class="overlay">
           <div class="text">資管二甲<br>汪庭宏<br><br>負責內容:<br>前端 </div>
         </div>
        </div>
        <div class="intro_2">
           <a target="_blank" href="https://www.facebook.com/profile.php?id=100004066575314"><img class="img_3" src="images/facebook.png" ></a>
        </div>
        <div class="container3">
          <img class="image" src="images/head3.jpg" >
          <div class="overlay">
           <div class="text">資管二乙<br>彭祐漢<br><br>負責內容:<br>後端 </div>
         </div>
        </div>
        <div class="intro_3">
           <a target="_blank" href="https://www.instagram.com/hank__peng/"><img class="img_1" src="images/instagram.png" ></a><a target="_blank" href="https://www.facebook.com/hank.peng.98"><img class="img_2" src="images/facebook.png" ></a>
        </div>
        <div class="container4">
          <img class="image" src="images/head4.jpg" >
          <div class="overlay">
           <div class="text">資管二乙<br>王柏凱<br><br>負責內容:<br>後端 </div>
         </div>
        </div>
        <div class="intro_4">
           <a target="_blank" href="https://www.instagram.com/wbk169/"><img class="img_1" src="images/instagram.png" ></a><a target="_blank" href="https://www.facebook.com/profile.php?id=100013502199903"><img class="img_2" src="images/facebook.png" ></a>
        </div>
       </div>
       <button class="js-back-to-top back-to-top" title="回到頭部">&#65085;</button>
       <script src="https://cdn.staticfile.org/jquery/2.2.4/jquery.min.js"></script>
       <script>
         $(function () {
           var $win = $(window);
           var $backToTop = $('.js-back-to-top');
           // 當用戶滾動到離頂部100像素時，展示回到頂部按紐
           $win.scroll(function () {
             if ($win.scrollTop() > 100) {
               $backToTop.show();
             } else {
               $backToTop.hide();
             }
           });

           // 當用戶點擊按鈕時，通過動畫效果返回頭部
           $backToTop.click(function () {
             $('html, body').animate({
               scrollTop: 0
             }, 200);
           });
         });
       </script>
<div class="c">
 <p class="contact_pos">電話:02-1234-5678<br>
 服務時間:早上8點-晚上10點<br>
 信箱:toyhouse@gmail.com</p>
</div>
</div>
</body>
</html>