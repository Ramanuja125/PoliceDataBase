<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String complaint_id = request.getParameter("complaint_id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(complaint_id);
	boolean b = st.execute("delete from complaint where complaint_id ="+Integer.parseInt(complaint_id));
	response.sendRedirect("complaintTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>