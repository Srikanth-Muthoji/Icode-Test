<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
    <%@ include file="Dataconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<title>Insert title here</title>
</head>

<body><center>

    <a href="download.jsp" class="btn btn-primary" >Download Template</a>
 <!--  <input type="submit" class="btn btn-primary" value="Download Template">    -->
  
<center>
<h3>Register Data</h3><br>

<form action="registerdata.jsp" method="post">

<label>Enter FirstName:</label> 
<input type="text" name="firstname" placeholder="FirstName" required ><br><br>

<label>Enter LastName:</label>
<input type="text" name="Lastname" placeholder="LastName" required ><br><br>

<label>Enter Date of Birth:</label>
<input type="text" name="DateofBirth" placeholder="Date of Birth" required ><br><br>

<label>Enter City:</label>
<input type="text" name="City"  placeholder="City" required ><br><br>
  
 <input type="submit" class="btn btn-primary" value="Upload Template">
</form>
<br>
<%
try{
	Statement st =con.createStatement();
	ResultSet rs=st.executeQuery("select * from register");
	out.println("<table class='table table-bordered table-striped table-hover style='width:300px;' '>");
 	out.println("<tr>"+"<th>"+"Id"+"</th>"+"<th>"+"FirstName"+"</th>"+"<th>"+"LastName"+"</th>"+"<th>"+"DateofBirth"+"</th>"+"<th>"+"City"+"</th>"+"</tr>");
 
	while(rs.next()){
		
		out.println("<tr>");
		out.println("<td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>