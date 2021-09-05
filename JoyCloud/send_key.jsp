<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%

String ke1y=(String)session.getAttribute("key1");	
String eml=(String)session.getAttribute("ml");
String yx=(String)session.getAttribute("gk");
    
String d="User Id Is";
String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="customerservice404@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="customerservice@404"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =eml; // out going email id

String from ="customerservice404@gmail.com"; //Email id of the recipient
String subject="Welcome To ENSURING DISTRIBUTED ACCOUNTABILITY FOR DATA SHARING IN THE CLOUD";
//String subject ="welcome";
String messageText =d+"<b>"+ke1y+"</b><br>Download Key is=<b>"+yx+"</b>";

//session.setAttribute("userid",userid);
//session.setAttribute("password",c);
//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
 response.sendRedirect("filedownload.jsp");
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();





%>

