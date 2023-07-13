<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" %>
    <%@ include file="Dataconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String filename = "register.jsp";   
String filepath = "C:/Users/Srikanth/Downloads//";   
response.setContentType("APPLICATION/OCTET-STREAM");   
response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   

java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
          
int i;   
while ((i=fileInputStream.read()) != -1) {  
  out.write(i);   
}   
fileInputStream.close();   
%>   

</body>
</html>