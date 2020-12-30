<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String complaint_id =request.getParameter("complaint_id");
String register_name=request.getParameter("register_name");
String register_address=request.getParameter("register_address");
String description=request.getParameter("description");
String police_id=request.getParameter("police_id");
String date_reg=request.getParameter("date_reg");
 String complaint_status=request.getParameter("complaint_status");
 String phno=request.getParameter("phno");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into complaint values("+Integer.parseInt(complaint_id)+",'"+register_name+"','"+register_address+"','"+description+"',"+Integer.parseInt(police_id)+",'"+date_reg+"','"+complaint_status+"',"+Integer.parseInt(phno)+")");
	response.sendRedirect("complaintTable.jsp");
}
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  