<%-- 
    Document   : InfoDatabase
    Created on : 07-May-2022, 12:52:59 am
    Author     : chira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
         String name = request.getParameter("name");
         String email = request.getParameter("email");
         String subject = request.getParameter("subject");
         String message = request.getParameter("message");
try
{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub", "root", "9625693880");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into info(name,email,subject,message)values('"+name+"','"+email+"','"+subject+"','"+message+"')");
        out.println("Data is successfully inserted!");
        response.sendRedirect("index.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>
