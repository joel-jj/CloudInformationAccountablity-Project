<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>
<html>
<head>
<title>Regstration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name1=null,username1=null,emailid1=null,password1=null,confirmpassword1=null,dob1=null,address1=null;
String country1=null,gender1=null,mobilenum1=null,utype=null;

try
{
String alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int character=(int)(Math.random()*26);
	String s=alphabet.substring(character, character+2);
	//out.print(s);
	
	int x=100+(int)(Math.random()*100);
	//out.print(x);
	String z=s+x;
	session.setAttribute("user",z);

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sam","root","admin");
PreparedStatement ps=conn.prepareStatement ("insert into login (name,username,emailid,password,confirmpassword,dob,address,mobileno,country,gender,utype,userkey) values (?,?,?,?,?,?,?,?,?,?,?,?)");

name1=request.getParameter("name");
username1=request.getParameter("username");
emailid1=request.getParameter("emailid");
password1=request.getParameter("password");
confirmpassword1=request.getParameter("confirmpassword");
dob1=request.getParameter("dob");
address1=request.getParameter("address");
country1=request.getParameter("country");
gender1=request.getParameter("gender");
mobilenum1=request.getParameter("mobilenum");
utype=request.getParameter("utype");
ps.setString(1,name1);
ps.setString(2,username1);
ps.setString(3,emailid1);
ps.setString(4,password1);
ps.setString(5,confirmpassword1);
ps.setString(6,dob1);
ps.setString(7,address1);
ps.setString(8,mobilenum1);
ps.setString(9,country1);
ps.setString(10,gender1);
ps.setString(11,utype);
ps.setString(12,z);
int kg=ps.executeUpdate();

            if(kg==0)
                {
                response.sendRedirect("register.jsp?message=success");}
            else
                {
                response.sendRedirect("index.html?message=fail");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        
%>
</body>
</html>
