<%-- 
    Document   : admin
    Created on : 06-May-2022, 10:26:21 pm
    Author     : chira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Majestic Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="images/favicon.png" />
    </head>
    <body>
        <div class="container-scroller">

            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="navbar-brand-wrapper d-flex justify-content-center">
                    <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
                        <a class="navbar-brand brand-logo" href="index.html"><img src="https://logodix.com/logo/366866.png" alt="logo"/></a>
                        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a>
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                            <span class="mdi mdi-sort-variant"></span>
                        </button>
                    </div>  
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <ul class="navbar-nav mr-lg-4 w-100">
                        <li class="nav-item nav-search d-none d-lg-block w-100">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="search">
                                        <i class="mdi mdi-magnify"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="Search now" aria-label="search" aria-describedby="search">
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item dropdown me-1">


                        </li>

                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                                <img src="images/chirag.jpeg" alt="profile"/>
                                <span class="nav-profile-name">chirag bharti</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">

                                <a class="dropdown-item">
                                    <i class="mdi mdi-logout text-primary"></i>
                                    Logout
                                </a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="admin.jsp">
                                <i class="mdi mdi-home menu-icon"></i>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="AllBooking.jsp">
                                <i class="mdi mdi-view-headline menu-icon"></i>
                                <span class="menu-title">All Booking</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Allinfo.jsp">
                                <i class="mdi mdi-chart-pie menu-icon"></i>
                                <span class="menu-title">All Infos</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Menu.jsp">
                                <i class="mdi mdi-grid-large menu-icon"></i>
                                <span class="menu-title">ALL Menus</span>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">


                        <div class="row">
                            <div class="col-md-12 grid-margin stretch-card">
                                <div class="card">


                                    <div class="tab-pane fade" id="sales" role="tabpanel" aria-labelledby="sales-tab">

                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 stretch-card">
                                            <div class="card">
                                                <div class="card-body">
                                                    <p class="card-title">ALL BOOKING</p>
                                                    <div class="table-responsive">
                                                        <table id="recent-purchases-listing" class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>Name</th>
                                                                    <th>Email</th>
                                                                    <th>Phone</th>
                                                                    <th>Date and Time</th>
                                                                    <th>People</th>
                                                                    <th>Message</th>
                                                                </tr>
                                                            </thead>
                                                            <%

                                                                try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub", "root", "9625693880");
                                                                    Statement st = conn.createStatement();
                                                                    String str = "select*from allbooking";
                                                                    ResultSet rs = st.executeQuery(str);
                                                                    while (rs.next()) {
                                                            %>
                                                            <tr>
                                                                <td><%=rs.getString("name")%></td>
                                                                <td><%=rs.getString("email")%></td>
                                                                <td><%=rs.getString("phone")%></td>
                                                                <td><%=rs.getString("datetime")%></td>
                                                                <td><%=rs.getString("people")%></td>
                                                                <td><%=rs.getString("message")%></td>
                                                            </tr>

                                                            <%}
                                                                } catch (Exception e) {
                                                                    System.out.print(e);
                                                                    e.printStackTrace();
                                                                }
                                                            %>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- content-wrapper ends -->
                                <!-- partial:partials/_footer.html -->
                                <footer class="footer">
                                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                                        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright ?? <a href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2021</span>
                                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Only the best <a href="https://www.bootstrapdash.com/" target="_blank"> Bootstrap dashboard  </a> templates</span>
                                    </div>
                                </footer>
                                <!-- partial -->
                            </div>
                            <!-- main-panel ends -->
                        </div>
                        <!-- page-body-wrapper ends -->
                    </div>
                    <!-- container-scroller -->

                    <!-- plugins:js -->
                    <script src="vendors/base/vendor.bundle.base.js"></script>
                    <!-- endinject -->
                    <!-- Plugin js for this page-->
                    <script src="vendors/chart.js/Chart.min.js"></script>
                    <script src="vendors/datatables.net/jquery.dataTables.js"></script>
                    <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
                    <!-- End plugin js for this page-->
                    <!-- inject:js -->
                    <script src="js/off-canvas.js"></script>
                    <script src="js/hoverable-collapse.js"></script>
                    <script src="js/template.js"></script>
                    <!-- endinject -->
                    <!-- Custom js for this page-->
                    <script src="js/dashboard.js"></script>
                    <script src="js/data-table.js"></script>
                    <script src="js/jquery.dataTables.js"></script>
                    <script src="js/dataTables.bootstrap4.js"></script>
                    <!-- End custom js for this page-->

                    <script src="js/jquery.cookie.js" type="text/javascript"></script>
                    </body>

                    </html>


