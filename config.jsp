<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="USE final";
con.createStatement().execute(sql);
%>