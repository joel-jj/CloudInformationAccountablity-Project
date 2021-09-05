<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>www.joycloud.com</title>
    
    <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection"></head>
</head>

<body>

<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 <div id="content">
    
        
      <h3> USER PAGE</h3>
        <h4>&nbsp;</h4>
		<%
		String n1m=(String)session.getAttribute("nm1");
		
		%>Welcome <font color="#FF0000"><%=n1m%></font>
		<img src="images/welcome_project.jpg" height="172" />
<font size="+3" color="#0099FF" face= face="Courier New, Courier, mono" >Yout account has been logged in ........</font>
	       
            
    </div>
 
        <ul id="nav">
           <div id="hme"> 
      <li><a href="index.html" title="">Home <img src="images/Home Green.png" width="35" height="30" align="texttop"  ></a></li>
    </div>
    
            <li><a href="view.jsp">View Account</a></li>
            <li><a href="pwdchange.jsp">Change Password</a></li>
  
            <li><a href="downloadfilelist01.jsp">File DownLoad </a></li>
			<li><a href="redownload1.jsp">Re-File DownLoad </a></li>
			<li><a href="requestcia1.jsp">Request to CIA</a></li>
			<li><a href="granted2.jsp">Request CIA PWD</a></li>	
			
			 <li><a href="downloadfilelist01.jsp">Download File List </a></li>
			
			
            <li><a href="index.html">Logout</a></li>
        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


</body>
</html>
