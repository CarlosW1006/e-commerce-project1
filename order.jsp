<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>訂單查詢</title>
    <style>
        @import url("asset/order.css");
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
  <p class="topic">訂單查詢</p>
  <p class="t1">訂單明細</p>
  <hr>
  <p class="t1">訂單編號:W387SQ2001107844</P>
<table>
  <tr>
    <th>產品</th>
    <th>數量</th>
    <th>價錢</th>
  </tr>
  <tr>
    <td>煉獄杏壽郎 無限列車編 可動模型</td>
    <td>1</td>
    <td>TWD $4,050</td>
  </tr>
  <tr>
      <td>鬼滅之刃 我妻善逸 掌中善逸</td>
      <td>1</td>
      <td>TWD $1,799</td>
  </tr>
  <tr>
      <td>黏土人 我的英雄學院 綠谷出久</td>
      <td>1</td>
      <td>TWD $1,200

</td>
  </tr>
  <tr>
      <td>哥吉拉 ゴジラ 1991</td>
      <td>1</td>
      <td>TWD $4,999</td>
  </tr>
  <tr>
      <td colspan="2">總計(TWD): </td>
      <td>TWD $12,048</td>
  </tr>
  </table>
  <P class="t1">物流詳情</P>
  <hr>
  <img class="car" src="/images/car.jpg" style="width: 20%;">
  <p class="deliver"><b>運送中...</b></p>
  <p class="t1">訂單資訊</p>
  <hr>
  <table>
    <tr>
      <td><b>運送方式:</b> 超商取貨</td>
      <td><b>購買人姓名:</b> 王*明</td>
    </tr>
    <tr>
      <td><b>取件門市名稱:</b> 統上門市</td>
      <td><b>購買人電子信箱:</b> 123*******@gmail.com</td>
    </tr>
    <tr>
      <td><b>取件門市地址:</b> 320桃園市中壢區新中北路465號</td>
      <td><b>購買人聯絡電話:</b> 0900******</td>
    </tr>
  </table>
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