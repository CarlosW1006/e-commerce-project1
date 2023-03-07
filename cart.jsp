<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <style>
        @import url("asset/cart.css");
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
        <p class="topic">購物車</p>
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
    <td>咒術迴戰 五條悟</td>
    <td>0</td>
    <td>TWD $0</td>
  </tr>
  <tr>
    <td>遊戲王 怪獸之決鬥 真紅眼黑龍</td>
    <td>0</td>
    <td>TWD $0</td>
  </tr>
  <tr>
      <td>魔導少年 納茲·多拉格尼爾</td>
      <td>0</td>
      <td>TWD $0</td>
  </tr>
  <tr>
      <td>Good Smile MODEROID 破邪大星彈劾凰</td>
      <td>0</td>
      <td>TWD $0</td>
  </tr>
  <tr>
      <td>鬼滅之刃 我妻善逸 掌中善逸</td>
      <td>1</td>
      <td>TWD $1,799</td>
  </tr>
  <tr>
      <td>鬼滅之刃 竈門禰豆子 可動模型</td>
      <td>0</td>
      <td>TWD $0</td>
  </tr>
  <tr>
      <td>Figurama Collectors《神劍闖江湖》</td>
      <td>0</td>
      <td>TWD $0</td>
  </tr>
  <tr>
      <td>塔斯肯襲擊者 - 沙漠蠻族</td>
      <td>0</td>
      <td>TWD $0</td>
  </tr>
  <tr>
      <td>湖人隊 LeBron James 可動公仔</td>
      <td>0</td>
      <td>TWD $0</td>
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