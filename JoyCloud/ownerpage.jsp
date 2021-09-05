<%@ page language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>www.joycloud.com</title>
    
    <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
</head>
<%
String name=null;
		String uname2=(String)session.getAttribute("un2");
		String pass2=(String)session.getAttribute("pwd");
		
try
		{
			
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/sam","root","admin");
		Statement stmt1=conn2.createStatement();
		ResultSet rs1=stmt1.executeQuery("select * from login where username='"+uname2+"' AND password='" +pass2+"'");
		if(rs1.next())
		{
		name=rs1.getString("name");
		}
		}
		catch(Exception e)
		{
		out.print(e);
		}
		
		
		%>
<body>
<div id="container" class="clearfix">
    
    <h1>www.joycloud.com<em></em></h1>
    
    <h2></h2>
 
 <div id="content">
    
        <h3></h3>
        
            
    <h4><font color="#FFCC00">WELCOME </font> 
     <font color="#FFCC00"> <%=name%>
      !</font></h4>
        
            <p>
              </p>
            
            <h4></h4>

			<p>    </p>
              
            <h4></h4>
        
            <p>
            </p>
            
            <h4></h4>
        
            <p>
            </p>
            
    </div>
 
        <ul id="nav">
		
    <div id="hme"> 
      <li><a href="index.html" title="">Home <img src="images/Home Green.png" width="35" height="30" align="texttop"  ></a></li>
    </div>
 
      
            <li><a href="downloadfilelist03up.jsp">FileUpload</a></li>
			<li><a href="viewuser1.jsp">View Userlist</a></li>			
			<li><a href="requestcia1.jsp">Request To CIA</a></li>
			<li><a href="granted3.jsp">Request To CIA PWD</a></li>
			
			
			 <li><a href="index.html">LogOut</a></li>     
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>

</body>
</html>
