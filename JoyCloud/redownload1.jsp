<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>www.joycloud.com</title>
    
    <link rel="stylesheet" type="text/css" href="style.css" media="screen,projection">
	<style type="text/css">
	.c1
	{
	font-family:verdana;
	font-size:11px;
	color:#0074E8;
	font-weight:bold;
	padding:2px 2px 2px 2px;
	}
	.c1:hover
	{
	color:#856415;
	font-size:12px;
	}
	.c2
	{
	font-family:verdana;
	font-size:12px;
	color:#000000;
	border:1px solid #ddd;
	font-weight:normal;
	padding:2px 2px 2px 2px;
	}
	</style>
	<script type="text/javascript">
	function validx()
	{
	var a=document.f1.fileid.value;
	if(a=="")
	{
	alert("enter a file id");
	document.f1.fileid.focus();
	return false;
	}
	var b=document.f1.filename.value;
	if(b=="")
	{
	alert("enter a file name");
	document.f1.filename.focus();
	return false;
	}
	
	}
	
	</script>
	
</head>

<body>
<form name="f1" action="redownload2.jsp" method="post" onSubmit="return validx()">
<div id="container" class="clearfix">
    
    <h1><em></em></h1>
    
    <h2></h2>
 
 <div id="content">
 
      
      <h3>Re-Download Page</h3>
        <h4>&nbsp;</h4>
		
		<table>
		<tr>
		<td class="c1">User ID</td>
		<td  class="c1">:</td>
		<td class="c2"><input type="text" name="usereid" placeholder="enter file id" ></td>
		</tr>
		
		<tr>
		<td class="c1">FILE NAME</td>
		<td  class="c1">:</td>
		<td class="c2"><input type="text" name="filename" placeholder="enter file name" ></td>
		</tr>
		
		<tr>
		<td></td>
		<td></td>
		<td ><input type="submit"  class="c1"value="Re-DownLoad">&nbsp;<input type="reset"  class="c1"value="RESET"></td>
		</tr>
		
		
		</table>
		
		
		
		
		

	        
            
    </div>
 
        <ul id="nav">
           <div id="hme"> 
      <li><a href="index.html" title="">Home <img src="images/Home Green.png" width="35" height="30" align="texttop"  ></a></li>
    </div>
    
            
           
  
            
			<li><a href="userpage.jsp">Back </a></li>
			
			
            <li><a href="index.html">Logout</a></li>
        </ul>
        
</div>
 
        <address>
         <a href="http://www.caddoo.net" ></a>  <a href="http://www.zymic.com" ></a> <a href="http://www.zymic.com/free-templates"></a>. <a href="http://www.zymic.com/free-web-hosting/"></a>.
        </address>

</form>
</body>
</html>
