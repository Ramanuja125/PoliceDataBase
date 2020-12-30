<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String convict_id =request.getParameter("convict_id");
String convict_name=request.getParameter("convict_name");
String age=request.getParameter("age");
String height=request.getParameter("height");
String crime=request.getParameter("crime");
 String police_incharge=request.getParameter("police_incharge");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into convict values("+Integer.parseInt(convict_id)+",'"+convict_name+"',"+Integer.parseInt(age)+","+Float.parseFloat(height)+",'"+crime+"',"+Integer.parseInt(police_incharge)+")");
	response.sendRedirect("convictTable.jsp");
}
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  