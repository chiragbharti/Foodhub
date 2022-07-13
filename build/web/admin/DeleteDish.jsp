<%-- 
    Document   : DeleteDish
    Created on : 07-May-2022, 11:00:14 am
    Author     : chira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String id=request.getParameter("delete");
    int i = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","9625693880");
    Statement statement = conn.createStatement();
    statement.executeUpdate("delete from menu where id='"+i+"'");
    response.sendRedirect("Menu.jsp");
 %>
String host="";