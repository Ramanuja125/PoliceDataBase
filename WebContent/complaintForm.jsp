<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "java.sql.*" %>
<%@ page import = "Project.ConnectionProvider" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Complaint Form</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="row register-form" style="padding: 12px;font-size: 60px;width: 2162px;margin: 82px;margin-left: 219px;">
        <div class="col-md-8 offset-md-2">
            <form class="custom-form" action="addComplaint.jsp" style="font-size: 32px;">
                <h1 style="padding: 12px;font-size: 36px;">Enter Complaint Details</h1>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="Number-input-field">Complaint ID</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="number" name="complaint_id" style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="email-input-field">Register Name</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="register_name" style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="pawssword-input-field">Register Address</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="register_address" style="font-size: 32px;"></div>
                </div>
                 
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Description</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="description" style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="pawssword-input-field">PoliceID- Registering the complaint</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="number" name="police_id" style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Date of Registration</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="date" name="date_reg"style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Complaint Status</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="complaint_status" style="font-size: 32px;"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Phone Number</label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="phno" style="font-size: 32px;"></div>
               </div><button class="btn btn-warning submit-button" type="submit">Submit</button></form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>