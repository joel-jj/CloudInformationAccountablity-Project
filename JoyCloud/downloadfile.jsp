<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title></title>
<script language="JavaScript">

</script>
</head>
<body>
<%
	
	String a=(String)session.getAttribute("idx");
	String b=(String)session.getAttribute("fk");
	String c=request.getParameter("fkeyvalue");
	String df3=(String)session.getAttribute("dfky");
	System.out.println(df3);
	
	
	
	
	Blob file= null;
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
	 sql = "select file from upload where filekey ='"+df3+"'";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if(rs.next());
		
		{
		file = rs.getBlob(1);
	
	
	session.setAttribute("resumeBlob",file);
	}
    response.sendRedirect("view_budget.jsp");
	
	
	}
	catch(Exception e)
	{
	out.println("Exception :"+e);
	}
	%>
	
	<a href="filedownload.jsp">back</a>

</body>
</html>