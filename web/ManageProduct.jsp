<%-- 
    Document   : DashBoard
    Created on : Feb 15, 2022, 10:20:50 AM
    Author     : Duong Xuan Thang
--%>
<%@page import="dao.DAOAdmin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin DashBoard</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="forAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
        <!-- Custom fonts for this template-->

        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="forAdmin/css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="DashBoard">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3"><c:if test="${sessionScope.acc != null}">
                            <li>${sessionScope.acc.name}</li>
                        </c:if></div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="DashBoard">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Trang chủ</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Quản lí
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                       aria-expanded="true" aria-controls="collapseTwo">
                        <span>Quản lí sản phẩm</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản lí sản phẩm:</h6>
                            <a class="collapse-item" href="ListCategory">Loại sản phẩm</a>
                            <a class="collapse-item" href="ManageProduct">Sản phẩm</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">

                        <span>Quản lí vận chuyển</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                         data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Quản lí đơn hàng:</h6>
                            <a class="collapse-item" href="ManageShippingOrder">Đang vận chuyển</a>
                            <a class="collapse-item" href="CompletedOrder">Đã hoàn thành</a>
                            <a class="collapse-item" href="CanceledOrder">Đã hủy</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Báo cáo
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                       aria-expanded="true" aria-controls="collapsePages">

                        <span>Báo Cáo</span>
                    </a>
                    <!--                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                                            <div class="bg-white py-2 collapse-inner rounded">
                                                <h6 class="collapse-header">Login Screens:</h6>
                                                <a class="collapse-item" href="login.html">Login</a>
                                                <a class="collapse-item" href="register.html">Register</a>
                                                <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                                                <div class="collapse-divider"></div>
                                                <h6 class="collapse-header">Other Pages:</h6>
                                                <a class="collapse-item" href="404.html">404 Page</a>
                                                <a class="collapse-item" href="blank.html">Blank Page</a>
                                            </div>
                                        </div>-->
                </li>

                <!-- Nav Item - Charts -->
                <!--                <li class="nav-item">
                                    <a class="nav-link" href="charts.html">
                                        <i class="fas fa-fw fa-chart-area"></i>
                                        <span>Biểu Đồ</span></a>
                                </li>
                
                                 Nav Item - Tables 
                                <li class="nav-item">
                                    <a class="nav-link" href="tables.html">
                                        <i class="fas fa-fw fa-table"></i>
                                        <span>Bảng</span></a>
                                </li>-->

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

                <!-- Sidebar Message -->

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <!--                        <form
                                                    class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                                               aria-label="Search" aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                            <button class="btn btn-primary" type="button">
                                                                <i class="fas fa-search fa-sm"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>-->

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                     aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                   placeholder="Search for..." aria-label="Search"
                                                   aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <!-- Nav Item - Alerts -->


                            <!-- Nav Item - Messages -->


                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <c:if test="${sessionScope.acc != null}">
                                    <a href="LoadInforUser?id=${sessionScope.acc.id}"><i class="fa fa-user"></i> ${sessionScope.acc.username} </a>
                                    <p>   <a href="Logout"> Đăng xuất</a></p>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}">
                                    <a href="AdminLogin.jsp"><i class="fa fa-user"></i>Đăng Nhập</a>        
                                </c:if>
                                </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-2 text-gray-800">Sản phẩm</h1>
                        <!--                        <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                                                    For more information about DataTables, please visit the <a target="_blank"
                                                                                                               href="https://datatables.net">official DataTables documentation</a>.</p>-->
                       
                        <!-- Add Product -->
                        <a href="#addProductModal"  class="btn btn-success" data-toggle="modal"> <span>+Thêm sản phẩm</span></a>
                       
                        <!-- Add Product Modal -->
                        <div id="addProductModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="AddProduct" method="post">
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Add Product</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input name="name" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Image</label>
                                                <input name="image" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input name="price" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Title</label>
                                                <textarea name="title" class="form-control" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea name="description" class="form-control" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Image1</label>
                                                <input name="image1" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Image2</label>
                                                <input name="image2" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Image3</label>
                                                <input name="image3" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Information</label>
                                                <textarea name="description" class="form-control" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Quantity</label>
                                                <input name="quantity" type="number" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Category</label>
                                                <select name="category" class="form-select" aria-label="Default select example">
                                                    <c:forEach items="${listCate}" var="o">
                                                        <option value="${o.cid}">${o.cname}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input type="submit" class="btn btn-success" value="Add">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <!-- DataTable  -->
                        <div class="card shadow mb-4">

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Tên</th>
                                                <th>ID Loại Sản Phẩm</th>
                                                <th>Giá Tiền</th>
                                                <th>Số Lượng</th>
                                                <th>Chi tiết</th>
                                                <th>Xóa</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Tên</th>
                                                <th>ID Loại Sản Phẩm</th>
                                                <th>Giá Tiền</th>
                                                <th>Số Lượng</th>
                                                <th>Chi tiết</th>
                                                <th>Xóa</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <c:forEach items="${listP}" var="o">
                                                <tr>
                                                    <td>${o.id}</td>
                                                    <td>${o.name}</td>
                                                    <td>${o.categoryID}</td>
                                                    <td>${o.price}</td>
                                                    <td>${o.quantity}</td>
                                                    
                                                    <td><a href="ProductDetail?proid=${o.id}" class="btn btn-warning">Edit</a></td>
                                                    <td><a href="DeleteProduct?pid=${o.id}" class="btn btn-danger">Delete</a></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->

                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="forAdmin/vendor/jquery/jquery.min.js"></script>
        <script src="forAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="forAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="forAdmin/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="forAdmin/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="forAdmin/js/demo/chart-area-demo.js"></script>
        <script src="forAdmin/js/demo/chart-pie-demo.js"></script>

    </body>
</html>
