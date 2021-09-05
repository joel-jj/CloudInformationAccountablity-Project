<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String a=request.getParameter("usereid");


String b=request.getParameter("filename");

String filename1=null,usrid1=null,mail1=null,cspnm=null;
String s=(String)session.getAttribute("un2");
System.out.println(s);
String sql="select * from ciaproperty where username='"+s+"' AND user_key='"+a+"'";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
Statement st=conn3.createStatement();
ResultSet rs2=st.executeQuery(sql);
while(rs2.next())
{
usrid1=rs2.getString("user_key");
session.setAttribute("uid",usrid1);
filename1=rs2.getString("filename");
session.setAttribute("fnm",filename1);
cspnm=rs2.getString("cspname");
session.setAttribute("cspnm1",cspnm);
mail1=rs2.getString("mail");
session.setAttribute("mid",mail1);

System.out.println("db1:"+usrid1);
System.out.println("db1:"+filename1);
System.out.println("db2:"+a);
System.out.println("db2:"+b);

}



if((a==usrid1) && (b.equals(filename1)))
{

}

else
{
out.println("enter a correct id and filename");
}
response.sendRedirect("redownload3.jsp?"+a);
}
catch(Exception e)
{
out.print(e);
}


%>

</body>
</html>
