<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String police_id = request.getParameter("police_id");
String percent = request.getParameter("raise");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(police_id);
	float percentInt = Float.parseFloat(percent)/100;
	ResultSet rs = st.executeQuery("select salary from police where police_id = '"+police_id+"'");
	rs.next();
	float Sal = rs.getFloat(1) + rs.getFloat(1)*percentInt;
	System.out.println(Sal);
	boolean b = st.execute("update police set salary = "+Sal+"where police_id = '"+police_id+"'");
	System.out.print(b);
	response.sendRedirect("policeTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  