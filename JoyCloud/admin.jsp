<%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>www.joycloud.com</title>
    
    <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
	<style type="text/css">
	.a:hover
	{
	font-family:verdana;
	color:#75B163;
	font-size:18px;
	}
	</style>
	</head>
	
	

<body>
<form name="f1" action="upload1.jsp" method="post" onSubmit="return valid4()">
<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 <div id="content">
    
        
      <h3>CIA <img src="images/administrator.png" height="40"  width="60"></h3>
	  
	  <ul >
	  <br />
	  <br />
	  <li type="square" > <a href="ciauserlist.jsp"  class="a"><strong>USER LIST</strong></a> <img src="images/export.jpg" height="50" width="50" align="baseline"></li>
	  <br />
	  <br />
	  <br />
	  <li type="square"><a href="addelete.jsp" class="a"><strong>DELETE RECORD</strong></a><img src="images/User Anonymous Red Delete.jpg" height="50" width="50" align="baseline"></li>
	  
	   
	  </ul>

            
    </div>
 
        <ul id="nav">
           <div id="hme"> 
      <li><a href="index.html" title="">Home <img src="images/Home Green.png" width="35" height="30" align="texttop"  ></a></li>
    </div>
    
            <li><a href="login.jsp">Login</a></li>
			<li><a href="adview.jsp">View All</a></li>
			<li><a href="granted.jsp">View All Request </a></li>			
			<li><a href="index.html">Logout</a></li>
			

        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>


</form>
</body>
</html>