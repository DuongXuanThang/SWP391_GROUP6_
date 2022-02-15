<%-- 
    Document   : EditProfileUser
    Created on : Feb 9, 2022, 11:15:10 PM
    Author     : Duong Xuan Thang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Sửa thông tin</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
    </head>
    <body>
       <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
                <div class="card-body">
                    <h2 class="title">Thông tin chi tiết</h2>
                    <form method="POST" action="EditUser">
                        
                         <div class="input-group">
                            <label>Mã Khách hàng</label>
                            <input class="input--style-1" type="text"  value="${detail.id}" name="id" >
                        </div>
                        <div class="input-group">
                            <label>Họ và tên</label>
                            <input class="input--style-1" type="text" value="${detail.name}" name="name" >
                        </div>
                                <div class="input-group">
                                     <label>Email</label>
                                    <input class="input--style-1" type="text"  name="email" value="${detail.email}">
                                </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label>Số điện thoại</label>
                                    <input class="input--style-1" type="text" name="phone" value="${detail.phone}">
                                </div>
                            </div>
                        </div>
                        <div class="p-t-20">
                            <button  class="btn btn--radius btn--green" type="submit"><i class="fa fa-edit"></i>  Sửa thông tin</button>
                            <button>  <a href="LoadInforUser?id=${detail.id}" class="btn btn--radius btn--green " style="background-color:#2c6ed5;" type="submit" ><i class="fa fa-arrow-circle-o-left"></i> Quay lại</a></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    </body>
</html>
