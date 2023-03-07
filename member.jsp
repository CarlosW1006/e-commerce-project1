<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員資料編輯</title>
    <style>
        @import url("asset/member.css");
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
	   						<% 
						request.setCharacterEncoding("UTF-8");
						if(session.getAttribute("id") != null ){
							sql = "SELECT * FROM `members` WHERE id = '" +session.getAttribute("id")+ "'";
							ResultSet rs = con.createStatement().executeQuery(sql);
							rs.next();				
	%>
<div class="b">
<p class="topic">會員資料編輯</p>
<p class="t1">個人資料</p>
<hr>
<sub class="sub1">會員姓名:</sub>
<sub class="sub2">生日:</sub>
<table>
  <tr>
    <td><%=rs.getString("id")%></td>
    <td>1</td>
  </tr>
</table>
<sub class="sub1">會員信箱:</sub>
<sub class="sub2">性別:</sub>
<table>
  <tr>
    <td>1</td>
    <td class="id_1">男</td>
  </tr>
</table>
<sub class="sub1">連絡電話:</sub>
<sub class="sub2">聯絡地址:</sub>
<table>
  <tr>
    <td>1</td>
    <td class="id_2">1</td>
  </tr>
</table>

<p class="t1">個人資料編輯</p>
<hr>
<fieldset class="field_pos">
<form class="edit_pos"action="update.jsp" method="POST">
            <p>會員姓名: </p><input class="edit_input1" type="text" name="id" value="<%=rs.getString("id")%>" >
            <button class="btn" type="submit">更改</button>
        </form>
      </fieldset>
</div>
<% 
}%>
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