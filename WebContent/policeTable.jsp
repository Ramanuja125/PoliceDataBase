<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*" %>
<%@ page import = "Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Police Table</title>
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
                    <th style="width: 333px;">Police ID</th>
                    <th style="width: 323px;">Police Name</th>
                    <th class="border rounded-0" style = "width : 400px">Address</th>
                    <th style="width: 444px;">Position</th>
                    <th style="width: 295px;">Phone Number</th>
                    <th style="width: 295px;">Salary</th>
                </tr>
            </thead>
            <tbody>
           <% try{
        	   Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from police");
			while(rs.next()){
			%>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(5)%></td>
                     <td><%=rs.getString(6)%></td>
                </tr>
                <% }}
                catch(Exception e)
                {} %>
                <tr></tr>
            </tbody>
        </table>
    </div><a class="btn btn-primary" role="button" href="policeForm.jsp" style="width: 200px;height: 120px;margin: 43px;padding: 26px;font-size: 23px;">Add New Police Data</a>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    
   
   <div class="row">
  <div class="column">
    <form action="deletePolice.jsp" method="post">
        <div class="form-group"><label style="margin-left: 200px;margin-bottom: 0px;">Enter the Police ID to be deleted<input class="form-control" name="police_id" type="number">&nbsp;</label></div>
        <button class="btn btn-primary" type="submit" style="margin-left: 280px;">Delete</button></form>
  </div>
  <div class="column">
  </div>
  <div class="column">
     <form action="updateSalary.jsp" method="post">
        <div class="form-group"><label style="margin-left: 200px;margin-bottom: 0px;">Enter Police ID<input class="form-control" name="police_id" type="number">&nbsp;</label></div>
        <div class="form-group"><label style="margin-left: 200px;margin-bottom: 0px;">Enter the raise Percentage<input class="form-control" name="raise" type="number">&nbsp;</label></div> 
        <button class="btn btn-primary" type="submit" style="margin-left: 280px;">Submit</button></form>
  </div>
</div>


  		
  		
    
    
</body>

</html>
