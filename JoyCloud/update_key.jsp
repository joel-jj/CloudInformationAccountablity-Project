<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String modepymt=request.getParameter("mode");
session.setAttribute("mp",modepymt);
String cardname1=request.getParameter("cardname");
session.setAttribute("cn",cardname1);
String accno1=request.getParameter("accno");
session.setAttribute("acn",accno1);
String edate=request.getParameter("cedate");
session.setAttribute("cdt",edate);
String mil=request.getParameter("mail");
session.setAttribute("ml",mil);

String alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int character=(int)(Math.random()*26);
	String k=alphabet.substring(character, character+2);
	//out.print(s);
	
	int g=100+(int)(Math.random()*100);
	String kg=k+g;
	session.setAttribute("gk",kg);

String fic=(String)session.getAttribute("filenamex");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
PreparedStatement ps=conn.prepareStatement ("Update upload set filekey=? where filename='"+fic+"'");
ps.setString(1,kg);

int x=ps.executeUpdate();

            if(x==0)
                {
                
				}
           response.sendRedirect("paid.jsp");
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        




%>
</body>
</html>
