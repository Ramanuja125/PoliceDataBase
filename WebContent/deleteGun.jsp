<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String owner_name = request.getParameter("owner_name");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(owner_name);
	st.execute("delete from gunlicense where owner_name='"+owner_name+"'");
	response.sendRedirect("gunTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>