<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的英雄學院 綠谷出久</title>
    <style>
      @import url("asset/toy.css");
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
    
    <hr size="5px" align="center" width="100%" color="black">
    <div class="w"><div class="b"><div class="c">
    <p>GOOD SMILE 我的英雄學院 綠谷出久</p>
    </div></div></div>
    <hr size="5px" align="center" width="100%" color="black">
    <div class="form">
    
    <br>
    <br>
    <br>
    <br>
    <br>

    <div class="d" align="center"> <div class="c"> <div class="g"><nav>
        <ul id="index">
          <li class="on"></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
        <ul id="img">
          <li><img src="images/c11-1.jpg" alt="img1" height="600PX"></li>
          <li><img src="images/c11-2.jpg" alt="img2"></li>
          <li><img src="images/c11-3.jpg" alt="img3"></li>
          <li><img src="images/c11-4.jpg" alt="img4"></li>
          <li><img src="images/c11-5.jpg" alt="img5"></li>
        </ul>
      </nav>

    
    </div></div></div>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
	<% //jsp連接前端範例
							sql="select * from toys where pid=11";
							ResultSet rs=con.createStatement().executeQuery(sql);
							rs.next();
							int pid=11;
							%>
        <div class="e"><div class="b1"><p><%=rs.getString(2)%></p></div>
        <br>
       <div class="b2"><p>
        <br><%=rs.getString(3)%>
        <br><%=rs.getString(4)%>
        <br><%=rs.getString(5)%>
        <br><%=rs.getString(6)%>
        <br><%=rs.getString(7)%></p></div>
        <br>
        <div class="txt-center"> 
    <form> 
     <div class="rating"> 
      <input id="star5" name="star" type="radio" value="5" class="radio-btn hide" /> 
      <label for="star5">☆</label> 
      <input id="star4" name="star" type="radio" value="4" class="radio-btn hide" /> 
      <label for="star4">☆</label> 
      <input id="star3" name="star" type="radio" value="3" class="radio-btn hide" /> 
      <label for="star3">☆</label> 
      <input id="star2" name="star" type="radio" value="2" class="radio-btn hide" /> 
      <label for="star2">☆</label> 
      <input id="star1" name="star" type="radio" value="1" class="radio-btn hide" /> 
      <label for="star1">☆</label> 
      <div class="clear"></div> 
     </div> 
    </form> 
</div> 
        <br>
        <br><div ><input class="b1" type="button" value="加入購物車" onclick="buy1()" style="width:200px;height:70px;border:6px;background-color:orange;">
		<script>
							function buy1() {<%if(session.getAttribute("id") == null){%>
							  alert("請先登入會員!!");
							}
							<%}%>
							</script>
		
		</div>
        

 
        <ul class="btn-numbox">
          <li><span class="kucun">&nbsp;&nbsp;&nbsp;</span></li>
          <li><span class="number"></span></li>
          <li>
              <ul class="count">
                  <li><span id="num-jian" class="num-jian">-</span></li>
                  <li><input type="text" class="input-num" id="input-num" value="0" /></li>
                  <li><span id="num-jia" class="num-jia">+</span></li>
              </ul>
          </li>
          
　　　  </ul>
<br>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">撰寫評論</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="add.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <label class="comment_topic" for="comment"><b>評論</b></label>
      <br>
      <textarea class="txtara" id="comment" name="comment" placeholder="請輸入文字"></textarea>  
	   <input type="hidden" name="pnum" value="11">
      <button type="submit" onclick="buy2()">提交評論</button>
	   <script>
							function buy2() {<%if(session.getAttribute("id") == null){%>
							  alert("請先登入會員!!");
							}
							<%}%>
							</script>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">取消</button>
    </div>
  </form>
</div>

        <h2 style="font-size: 40px;margin-bottom: 10px; ">歷史留言</h2>
				<div style="width: 100%;
height: 120px;
padding:20px;
border:2px #cccccc solid;
width:520px;
overflow: auto;
">
					
					<div style="width: 100%;
height: 280px;
padding:10px;
min-width:400px;height: auto;
background-color: #FEFFE8;
width: 100%;
height: auto;
clear: both;
border:2px #cccccc double;
padding: 10px 20px;">
						<div class="review text-center py-4">						
						<%					
							sql="SELECT * FROM `board` WHERE page=11"; //算出共幾筆留言
							ResultSet rs2=con.createStatement().executeQuery(sql);

						   //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
						   rs2.last();
						   int total_content=rs2.getRow();
						   out.println("共"+total_content+"筆留言<p>");
						   
						   //每頁顯示5筆, 算出共幾頁
						   int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
						   out.println("請選擇頁數");
						   //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
						   for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
							   out.print("<a href='c11.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

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
						sql="SELECT * FROM `board` WHERE page=11 ORDER BY `boNO` DESC LIMIT ";
						sql+=start_record+",5";
						
						//current_page=1: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 0, 5
						//current_page=2: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 5, 5
						//current_page=3: SELECT * FROM `board` ORDER BY `boNO` DESC LIMIT 10, 5
						rs2=con.createStatement().executeQuery(sql);
						//  逐筆顯示, 直到沒有資料(最多還是5筆)
						while(rs2.next())
						{
							out.println("ID:"+rs2.getString(2)+"<br>");
							out.println("評論:"+rs2.getString(3)+"<br>");
							out.println("時間:"+rs2.getString(5)+"<br><hr>");
						}
					%>
					</h5>			
				</div>
        </div>
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <div class="c1"><p>日本GOOD SMILE COMPANY 旗下種類超過千款的人氣商品「黏土人」系列，以人氣<br>
      動漫《我的英雄學院》為主題，推出「綠谷出久」、「轟焦凍」、「歐爾麥特」等作品<br>
      後，又將推出新作：「黏土人 綠谷出久 英雄服γ」（ねんどろいど 緑谷出久 コスチュー<br>
      ムγ）可動人偶。</p></div>        
    <br>
    <br>
    <div class="b" align="center">
    <img src="images/c11-1.jpg" width = 1000px;>
    
    <br><img src="images/c11-2.jpg"  width = 1000px;>
    <br>
    <br></div>
    <div class="c1"><p>《我的英雄學院》主人公－綠谷出久，綽號「笨久」，是一位有綠色頭髮和雀斑的少年<br>
      ，平時雖然是個懦弱的人，甚至為社會中少見的「無個性者」，但因深深崇拜著 NO.1 <br>
      英雄「歐爾麥特」，對於職業英雄懷抱著極大的憧憬。認為自己必須拿出比常人多幾倍<br>
      的努力、甘於自我犧牲來幫助他人的特質，獲得歐爾麥特賞識，於是從歐爾麥特那裡接<br>
      下了「ONE・FOR・ALL」的火炬，自此綠谷為了成為最棒的英雄而努力不懈。</p></div>
    
    <div class="b" align="center">
    <br><img src="images/c11-3.jpg" width = 1000px;>
    </div>
    <br>
    <br>
    <div class="c1"><p>「黏土人 綠谷出久 英雄服γ」可動人偶，以新裝扮的英雄服造型化身為黏土人，可替換<br>
      的表情零件有帥氣的「普通臉」、發動個性的「發動臉」、開朗的「笑臉」。</p></div>

    <div class="b" align="center">
    <br><img src="images/c11-4.jpg" width = 1000px;>
    
    </div>
   
    <br>
    
        <div class="c1"><p>另附有發動個性「One For All」時的透明特效零件，除了手臂處，也可以裝飾於腿部<br>
          ，能重現射門式姿態！並附有「SMASH！」（爆碎風）特效字，讓動作場景更加逼真！</p></div>
    
    <div class="b" align="center">
    <br><img src="images/c11-5.jpg" width = 1000px;>
    </div>
    <br>
    <br>
    <br>
    
    

    </div></div>
    <button class="js-back-to-top back-to-top" title="回到頭部">&#65085;</button>
    <script src="https://cdn.staticfile.org/jquery/2.2.4/jquery.min.js"></script>
    <div class="end">
 <p class="contact_pos">電話:02-1234-5678<br>
 服務時間:早上8點-晚上10點<br>
 信箱:toyhouse@gmail.com</p>
</div>
    <script src="asset/main.js"></script>
  
   </body>
   
</html>