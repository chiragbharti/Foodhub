<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
         String dish = request.getParameter("dish");
         String descripition = request.getParameter("descripition");
         String price = request.getParameter("price");
        
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub", "root", "9625693880");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into menu(dish,descripition,price)values('"+dish+"','"+descripition+"','"+price+"')");
           response.sendRedirect("Menu.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
%>