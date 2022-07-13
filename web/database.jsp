<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
         String name = request.getParameter("name");
         String email = request.getParameter("email");
         String phone = request.getParameter("phone");
         String datetime = request.getParameter("datetime");
         String people = request.getParameter("people");
         String message = request.getParameter("message");
try
{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub", "root", "9625693880");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into allbooking(name,email,phone,datetime,people,message)values('"+name+"','"+email+"','"+phone+"','"+datetime+"','"+people+"','"+message+"')");
        out.println("Data is successfully inserted!");
        response.sendRedirect("index.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>