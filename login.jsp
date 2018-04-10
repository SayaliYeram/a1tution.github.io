<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
String number = request.getParameter("number");
String pass = request.getParameter("psw");

Connection conn=null;
int count=0;
try
{
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Tutions","root","maitri123");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from students where Regno='"+number+"' and Password = '"+pass+"'");
while(rs.next())
{
	count++;
}
if(count == 1)
{
	out.println("Succesfully Loggedin");
}
else if(count>1)
	out.println("Duplicate entry");
else
	out.println("Enter complete information/Invalid Login");
}
catch (Exception e)
{
	out.println(e);
}

%>
<br>
<br>
<br>
<a href="Student.html">Home</a>

</body>
</html>