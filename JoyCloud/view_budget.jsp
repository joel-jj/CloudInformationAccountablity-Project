
<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>engineers</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
         try{
		 
		Blob b = (Blob)session.getAttribute("resumeBlob");
		//System.out.println(b);
		if(b != null)
		{
	
			String filename ="filename";
			filename+=".doc";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/msword");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
		
			session.removeAttribute("budget");
			}
			response.sendRedirect("userpage.jsp");
			
			
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
		
		
%>

</body>
</html>