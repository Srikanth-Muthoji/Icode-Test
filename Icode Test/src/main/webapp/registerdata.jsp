<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Dataconnection.jsp"  %>
    <%@ page import="java.sql.* " %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String Firstname       =  request.getParameter("firstname");
String Lastname        =  request.getParameter("Lastname");
String DateofBirth     =  request.getParameter("DateofBirth");
String City            =  request.getParameter("City");

PreparedStatement ps=con.prepareStatement("insert into register(Firstname,Lastname,DateofBirth,City) values(?,?,?,?)");
ps.setString(1,Firstname);
ps.setString(2,Lastname);
ps.setString(3,DateofBirth);
ps.setString(4,City);
int n=ps.executeUpdate();
if(n>0)
{
	%> 
	<jsp:include page="register.jsp"></jsp:include>
	<%
}
else{
	%> 
	<jsp:include page="register.jsp"></jsp:include>
	<%
}
%>
</body>
</html>