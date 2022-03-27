<%-- 
    Document   : ManagerProduct
    Created on : Mar 15, 2022, 5:19:02 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditProduct" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${detail.name}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input value="${detail.image}" name="image" type="text" class="form-control" required>
                                    <img src="${detail.image}">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input value="${detail.price}"name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Title</label>
                                    <textarea value="" name="title" class="form-control" required>${detail.title}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea value="" name="description" class="form-control" required>${detail.description}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Image1</label>
                                    <input value="${detail.image1}" name="image1" type="text" class="form-control" required>
                                    <img src="${detail.image1}">
                                </div>
                                <div class="form-group">
                                    <label>Image2</label>
                                    <input value="${detail.image2}" name="image2" type="text" class="form-control" required>
                                    <img src="${detail.image2}">
                                </div>
                                <div class="form-group">
                                    <label>Image3</label>
                                    <input value="${detail.image3}" name="image3" type="text" class="form-control" required>
                                    <img src="${detail.image3}">
                                </div>
                                <div class="form-group">
                                    <label>Information</label>
                                    <textarea value="" name="infomation" class="form-control" required>${detail.information}</textarea>
                                </div>
                                                                <div class="form-group">
                                    <label>Review</label>
                                    <textarea value="" name="review" class="form-control" required>${detail.review}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input value="${detail.quantity}" name="quantity" type="number" class="form-control" required>
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
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>