<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品一覽</title>
  <style>
    @import url("asset/buy.css");
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
		<% //jsp連接前端範例
		sql="select * from menu where id=1";
		ResultSet rs=con.createStatement().executeQuery(sql);
		rs.next();
		int id=1;
	%>
    <div class="b">
      <div class="row">
        <div class="column">
          <div class="content">
            <a href="c1.jsp"><img src="<%=rs.getString(2)%>" style="width:100%"></a>
            <a class="link" href="c1.jsp">
              <h3>煉獄杏壽郎 無限列車編 可動模型</h3>
            </a>
            <p class="text">
              TWD $4,050
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c2.jsp"><img src="<%=rs.getString(3)%>" style="width:100%"></a>
            <a class="link" href="c2.jsp">
              <h3>咒術迴戰 五條悟</h3>
            </a>
            <p class="text">
              TWD $1,499
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c3.jsp"><img src="<%=rs.getString(4)%>" style="width:100%"></a>
            <a class="link" href="c3.jsp">
              <h3>遊戲王 怪獸之決鬥 真紅眼黑龍</h3>
            </a>
            <p class="text">
              TWD $5,990
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c4.jsp"><img src="<%=rs.getString(5)%>" style="width:100%"></a>
            <a class="link" href="c4.jsp">
              <h3>魔導少年 納茲·多拉格尼爾</h3>
            </a>
            <p class="text">
              TWD $14,366
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c5.jsp"><img src="<%=rs.getString(6)%>" style="width:100%"></a>
            <a class="link" href="c5.jsp">
              <h3>Good Smile MODEROID 破邪大星彈劾凰</h3>
            </a>
            <p class="text">
              TWD $1,980
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c6.jsp"><img src="<%=rs.getString(7)%>" style="width:100%"></a>
            <a class="link" href="c6.jsp">
              <h3>鬼滅之刃 我妻善逸 掌中善逸</h3>
            </a>
            <p class="text">
              TWD $1,799
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c7.jsp"><img src="<%=rs.getString(8)%>" style="width:100%"></a>
            <a class="link" href="c7.jsp">
              <h3>鬼滅之刃 竈門禰豆子 可動模型</h3>
            </a>
            <p class="text">
              TWD $2,590
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c8.jsp"><img src="<%=rs.getString(9)%>" style="width:100%"></a>
            <a class="link" href="c8.jsp">
              <h3>Figurama Collectors《神劍闖江湖》</h3>
            </a>
            <p class="text">
              TWD $16,570
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c9.jsp"><img src="<%=rs.getString(10)%>" style="width:100%"></a>
            <a class="link" href="c9.jsp">
              <h3>塔斯肯襲擊者 - 沙漠蠻族</h3>
            </a>
            <p class="text">
              TWD $3,499
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c10.jsp"><img src="<%=rs.getString(11)%>" style="width:100%"></a>
            <a class="link" href="c10.jsp">
              <h3>湖人隊 LeBron James 可動公仔</h3>
            </a>
            <p class="text">
              TWD $9,500
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c11.jsp"><img src="<%=rs.getString(12)%>" style="width:100%"></a>
            <a class="link" href="c11.jsp">
              <h3>黏土人 我的英雄學院 綠谷出久</h3>
            </a>
            <p class="text">
              TWD $1,200
            </p>
          </div>
        </div>
        <div class="column">
          <div class="content">
            <a href="c12.jsp"><img src="<%=rs.getString(13)%>" style="width:100%"></a>
            <a class="link" href="c12.jsp">
              <h3>哥吉拉 ゴジラ 1991</h3>
            </a>
            <p class="text">
              TWD $4,999
            </p>
          </div>
        </div>
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