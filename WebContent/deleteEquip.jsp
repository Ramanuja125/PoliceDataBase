<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String item_id = request.getParameter("item_id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	System.out.println(item_id);
	boolean b = st.execute("delete from equipments where item_id ="+Integer.parseInt(item_id));
	response.sendRedirect("equipTable.jsp");
}
	
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");	}
%>