<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String convict_id = request.getParameter("convict_id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(convict_id);
	boolean b = st.execute("delete from convict where convict_id ="+Integer.parseInt(convict_id));
	response.sendRedirect("convictTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>