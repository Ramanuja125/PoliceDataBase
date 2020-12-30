<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String police_id = request.getParameter("police_id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(police_id);
	boolean b = st.execute("delete from police where police_id ="+Integer.parseInt(police_id));
	response.sendRedirect("policeTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>