<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@page import ="java.sql.*"%>
  
  
    
 <% 
 
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");

%>