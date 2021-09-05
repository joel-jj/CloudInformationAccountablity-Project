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

java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

String idy=(String)session.getAttribute("idx");
String fname=(String)session.getAttribute("filenamex");
String ownernamey=(String)session.getAttribute("ownernamex");
String utimez=(String)session.getAttribute("utimex");
String dcosty=(String)session.getAttribute("dcostx");
String recosty=(String)session.getAttribute("recostx");
String cspname1=(String)session.getAttribute("cspname");
String username1=(String)session.getAttribute("un2");
System.out.println(username1);
String modepymt=(String)session.getAttribute("mp");
String cardname1=(String)session.getAttribute("cn");
String accno1=(String)session.getAttribute("acn");
String edate=(String)session.getAttribute("cdt");
String mail=(String)session.getAttribute("ml");
String kye=(String)session.getAttribute("key1");
String kkg=(String)session.getAttribute("gk");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
PreparedStatement ps=conn.prepareStatement ("insert into ciaproperty (fileid,filename,ownername,uploadtime,downloadcost,redownloadcost,modeofthepayment,nameofthecard,accno,expirydate,cspname,username,downloadtime,user_key,mail,fildownkey) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,idy);
ps.setString(2,fname);
ps.setString(3,ownernamey);
ps.setString(4,utimez);
ps.setString(5,dcosty);
ps.setString(6,recosty);
ps.setString(7,modepymt);
ps.setString(8,cardname1);
ps.setString(9,accno1);
ps.setString(10,edate);
ps.setString(11,cspname1);
ps.setString(12,username1);
ps.setString(13,strDateNew);
ps.setString(14,kye);
ps.setString(15,mail);
ps.setString(16,kkg);

int x=ps.executeUpdate();

            if(x==0)
                {
              
				}
            response.sendRedirect("send_key.jsp");
			  
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        



%>
</body>
</html>
