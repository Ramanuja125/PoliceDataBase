<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*" %>
<%@ page import = "Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Complaint Table</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
   <nav class="navbar navbar-light navbar-expand-md bg-warning">
        <div class="container-fluid"><a class="navbar-brand text-center" href="index.jsp" style="font-size: 40px;"><href="policeTable.jsp"><strong>Police System Management System&nbsp;</strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="policeTable.jsp"><strong>Police Table</strong><br></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="complaintTable.jsp"><strong>Complaint Table</strong><br></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="equipTable.jsp"><strong>Equipments Table</strong><br></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="convictTable.jsp"><strong>Convict Table</strong><br></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="gunTable.jsp"><strong>Gun License table</strong><br></a></li>
                </ul>
        </div>
        </div>
    </nav>
    <div class="table-responsive table-bordered border-secondary" style="margin: 0px;">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th style="width: 433px;">Complaint ID</th>
                    <th style="width: 323px;">Register Name</th>
                    <th class="border rounded-0" style="width: 455px;">Register Address</th>
                    <th style="width: 418px;">Description</th>
                    <th style="width: 313px;">Police Name</th>
                    <th style="width: 286px;">Date Registered</th>
                    <th style="width: 301px;">Complaint Status</th>
                    <th style="width: 305px;">Phone Number</th>
                </tr>
            </thead>
            <tbody>
                <% try{
        	   Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select c.complaint_id,c.register_name,c.register_address,c.description,p.police_name,c.date_reg,c.complaint_status,c.phno from complaint c,police p where c.police_id=p.police_id");
			while(rs.next()){
			%>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5)%></td>	
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                </tr>
                <% }}
                catch(Exception e)
                {} %>
                <tr></tr>
            </tbody>
        </table>
    </div><a class="btn btn-primary" role="button" style="width: 227px;height: 101px;margin: 26px;padding: 16px;font-size: 22px;" href="complaintForm.jsp">Add New Complaint</a>
    <form class="custom-form" action="deleteComplaint.jsp" method="post">
        <div class="form-group"><label style="margin-left: 150px;">Enter the Complaint ID to be deleted<input class="form-control" name="complaint_id" type="number">&nbsp;</label></div>
    <button class="btn btn-warning submit-button" type="submit">Delete</button></form>
</body>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>