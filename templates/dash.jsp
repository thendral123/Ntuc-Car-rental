<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:prod", "tts", "tts");
Statement st=con.createStatement();
String strQuery = "SELECT COUNT(*) FROM booking";
ResultSet rs = st.executeQuery(strQuery);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
out.println("Total Row :" +Countrow);
}
}
catch (Exception e){
e.printStackTrace();
}
%>

 
</body>
</html>