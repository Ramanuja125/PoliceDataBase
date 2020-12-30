<%@ page import="Project.ConnectionProvider" %> 
<%@ page import="java.sql.*" %>
<%
String item_id =request.getParameter("item_id");
String item_name=request.getParameter("item_name");
String date_purchased=request.getParameter("date_purchased");
String assigned_policeID=request.getParameter("assigned_policeID");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into equipments values("+Integer.parseInt(item_id)+",'"+item_name+"','"+date_purchased+"',"+Integer.parseInt(assigned_policeID)+")");
	response.sendRedirect("equipTable.jsp");
}
catch(Exception e)
{
	response.sendRedirect("errorPage.jsp");
	}
%>  