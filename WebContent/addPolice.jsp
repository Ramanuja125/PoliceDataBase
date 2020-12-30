<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String police_id=request.getParameter("police_id");
String police_name=request.getParameter("police_name");
String address=request.getParameter("address");
String post=request.getParameter("post");
String phno=request.getParameter("phno");
String salary=request.getParameter("salary");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into police values("+Integer.parseInt(police_id)+",'"+police_name+"','"+address+"','"+post+"',"+Integer.parseInt(phno)+","+Integer.parseInt(salary)+")");
	response.sendRedirect("policeTable.jsp");
}
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  