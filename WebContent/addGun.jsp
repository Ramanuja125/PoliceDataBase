<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String owner_name=request.getParameter("owner_name");
String gun=request.getParameter("gun");
String address=request.getParameter("address");
String phno=request.getParameter("phno");
String expiry_date=request.getParameter("expiry_date");
String bullet_count =request.getParameter("bullet_count");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into gunlicense values('"+owner_name+"','"+gun+"','"+address+"',"+Integer.parseInt(phno)+",'"+expiry_date+"',"+Integer.parseInt(bullet_count)+")");
	response.sendRedirect("gunTable.jsp");
}
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  