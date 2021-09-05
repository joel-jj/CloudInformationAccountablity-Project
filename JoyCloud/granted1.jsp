<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<%
String n2=(String)session.getAttribute("n1");
int kg=((int)(Math.random()*200000));
String kg1= Integer.toString(kg);

String p1="granted";



Connection conn3=null;
PreparedStatement pstmt1=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
conn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
pstmt1 = conn3.prepareStatement ("update requesttable set status=?, newpassword=? where username='"+n2+"'");
pstmt1.setString(1,p1);
pstmt1.setString(2,kg1);
int x=pstmt1.executeUpdate();
response.sendRedirect("#");
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
