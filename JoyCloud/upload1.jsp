<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 


<%
String ff=request.getParameter("datafile");
String zz=request.getParameter("filename");
int fcost=Integer.parseInt(request.getParameter("filecost"));
int fcost1=Integer.parseInt(request.getParameter("refilecost"));
String yy=(String)session.getAttribute("un2");
String  filekey1=request.getParameter("filekey");


	 java.util.Date now = new java.util.Date();
	 String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

String a="G:/apache-tomcat-6.0.18/webapps/ENSURING DISTRIBUTED ACCOUNTABILITY FOR DATA SHARING IN THE CLOUD1/file/";

String fname=a+ff;
FileInputStream fis = null;
File image=new File(fname);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin");

PreparedStatement ps=con.prepareStatement("insert into upload (filename,file,ownername,utime,fcost,redwnloadcost,filekey) values(?,?,?,?,?,?,?)");

ps.setString(1,zz);
fis=new FileInputStream(image);
ps.setBinaryStream(2, (InputStream)fis, (int)(image.length()));
ps.setString(3,yy);
ps.setString(4,strDateNew);
ps.setInt(5,fcost);
ps.setInt(6,fcost1);
ps.setString(7,filekey1);

ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("ownerpage.jsp");


}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

