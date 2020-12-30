<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home Page</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body id="About" style="font-size: 30px;">
    <nav class="navbar navbar-light navbar-expand-md bg-warning">
        <div class="container-fluid"><a class="navbar-brand text-center" href="index.jsp" style="font-size: 40px;"><strong>Police System Management System&nbsp;</strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
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
    <div class="projects-horizontal"><img src="assets/img/ps2.PNG">
        <div class="container" style="width: 1168px;height: 784px;">
            <div class="intro">
                <h2 class="text-uppercase text-center"><span style="text-decoration: underline;"><a href="index.jsp">Project Description</span></h2>
                <p class="text-center" id="para" style="width: 894px;font-size: 26px;">Our project is designed to manage the database of a police station. It provides information and current status about police station, manages data and information about crimes. It stores the number of cases and FIR. Only admins(the Police
                    staff) &nbsp;are allowed to alter the information. The user can file complaints/queries and view overall crime rates. </p>
            </div>
            <div class="row projects">
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="assets/img/p1.png"><img class="img-fluid" id="p1" src="assets/img/p1.png"></a></div>
                        <div class="col">
                            <h6 class="name" style="font-size: 22px;"><a href="policeTable.jsp"><span style="text-decoration: underline;">Police Table</span></h6>
                            <p class="description" style="font-size: 18px;">This Table gives details about the police staff present in the Police station(Police ID,Name,Address,Position,Phone Number)<br></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="assets/img/p2.PNG"><img class="img-fluid" id="p1" src="assets/img/p2.PNG"></a></div>
                        <div class="col">
                            <h6 class="name" style="font-size: 22px;"><a href="complaintTable.jsp"><span style="text-decoration: underline;">Complaints Table</span></h6>
                            <p class="description" style="font-size: 18px;">This Table This Table gives details about the registerer giving complaint in the police station(Complaint id,Registerer name,Description,
police ID,Date of reg, complaint
status,Phone Number)
 <br></p>
                         </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="assets/img/p3.PNG"><img class="img-fluid" src="assets/img/p3.PNG"></a></div>
                        <div class="col">
                            <h3 class="name" style="font-size: 21px;"><a href="equipTable.jsp"><span style="text-decoration: underline;">Equipments Table</span></h3>
                            <p class="description" style="font-size: 17px;">This Table gives detailed information about all the equipments available in the police station and by which police it is owned<br>(ItemID,Name,date of purchase,Police owning the equipment)</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="assets/img/p4.PNG"><img class="img-fluid" src="assets/img/p4.PNG"></a></div>
                        <div class="col">
                            <h3 class="name" style="font-size: 21px;"><a href="convictTable.jsp"><span style="text-decoration: underline;">Convicts table</span></h3>
                            <p class="description" style="font-size: 17px;">This Table gives detailed information of the convicts captured or held before or after producing to the court(Convict Id,Name,<br>age,height,crime committed,Police incharge)</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="assets/img/p5.PNG"><img class="img-fluid" src="assets/img/p5.PNG"></a></div>
                        <div class="col">
                            <h3 class="name" style="font-size: 20px;"><a href="gunTable.jsp"><strong><span style="text-decoration: underline;">Gun Licence Table</span></strong></h3>
                            <p class="description" style="font-size: 17px;">This Table stores detailed information about the Guns owned by the public for personnel use or given for protection by the Police station(Owner Name,Gun,Address,<br>Phone Number,Expiry date,Bullet count)</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card"></div>
                    <div class="jumbotron" style="height: 218px;"><a href="index.jsp">
                        <h1>Project Presented by</h1>
                        <p>Ramanuja MA<br>Shikha Yadav<br>Syed Daanish zaman</p>
                        <p><a class="btn btn-success" role="button" href="mailto: anantharamanuja@gmail.com"><i class="fa fa-envelope-o"></i></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>