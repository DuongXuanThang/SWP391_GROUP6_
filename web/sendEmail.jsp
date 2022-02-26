<%-- 
    Document   : sendEmail
    Created on : Feb 26, 2022, 9:56:59 AM
    Author     : Duong Xuan Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron text-center">
                <h1>Send Email in Servlet jsp</h1>
               
            </div>
            <br>
            <form action="sendEmail" method="post">
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td><input type="text" required="" placeholder="Name" name="name" class="form-control"></td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td><input type="email" required="" placeholder="Email" name="email" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" required="" placeholder="Subject" name="subject" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td><textarea name="message" required="" rows="5" cols="100" placeholder="Your Message"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" id="submit" class="btn btn-primary" value="Submit"></td>
                    </tr>
                </table>
            </form>

        </div>
    </body>
</html>
