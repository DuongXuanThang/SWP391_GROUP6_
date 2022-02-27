<%-- 
    Document   : sendEmail
    Created on : Feb 26, 2022, 9:56:59 AM
    Author     : Duong Xuan Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        
        <link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
        <title>Quên Mật Khẩu</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="sendEmail" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Quên mật khẩu</h1>
               
               
                <input name="email"  type="text" id="inputEmail" class="form-control" placeholder="Nhập Email" required="" autofocus="">
              

                <div class="form-group form-check" style="display: flex; justify-content: space-between">
                    
                   
                </div>

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Lấy mật khẩu mới </button>
                <hr>
                <button class="btn btn-primary btn-block"  type="button"  id="btn-signup"><a href="Login.jsp"><i class="fas fa-backward"></i>  Quay Lại </a></button>
            </form>

           
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
    </body> 
</html>
