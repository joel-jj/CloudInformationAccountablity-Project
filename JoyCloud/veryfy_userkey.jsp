<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
 <%
		String ax=null,ay=null;
		
		ax=request.getParameter("usrkey");
		ay=request.getParameter("filkey");
		session.setAttribute("dfky",ay);
		String unc=(String)session.getAttribute("nm1");
		
		try
		{
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/sam","root","admin");
		Statement stmt1=conn2.createStatement();
		ResultSet rs1=stmt1.executeQuery("select * from login where name='"+unc+"' AND userkey='" +ax+"'");
		rs1.next();
		
		response.sendRedirect("downloadfile.jsp");
		
		
		}
		catch(Exception e)
		{
		out.println(e);
		}
				
	  %>
	  
</body>
</html>
