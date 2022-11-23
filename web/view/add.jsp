
<%-- 
    Document   : profile
    Created on : Jul 3, 2022, 11:09:32 AM
    Author     : my do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Shop</title>

        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon-32x32.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

        <!-- fontawesome -->
        <link rel="stylesheet" href="../assets/css/all.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="../assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="../assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="../assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="../assets/css/main.css">
        <!--js bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>

    <!-- Edit Product -->
    <body>
        <form action="add" method="post">
            <div class="modal-header">						
                <h4 class="modal-title">Add Product</h4>
            </div>
            <div class="modal-body">					
                <div class="form-group">
                    <label>Name</label>
                    <input name="name" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input name="price" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Discount</label>
                    <input name="discount" type="text" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea name="description" class="form-control" required></textarea>
                </div>
                <div class="form-group">
                    <label>Quantity</label>
                    <textarea name="quantity" class="form-control" required></textarea>
                </div>
                <div class="form-group">
                    <label>Image</label>
                    <textarea name="img" class="form-control" required></textarea>
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <select name="category" class="form-select" aria-label="Default select example">
                        <c:forEach items="${listCtg}" var="o">
                            <option value="${o.cid}">${o.name}</option>
                        </c:forEach>
                    </select>
                </div>

                <a href="#addCtg"  class="btn addCtg" data-toggle="modal"><i class="fa fa-plus-circle">&#xE147;</i><span>Add new category</span></a>

            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-outline-danger" href="admin">Cancel</a>
                <input type="submit" class="btn btn-success" value="Add">
            </div>
        </form>




        <!--end edit product-->
        <div id="addCtg" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addCtg" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Category</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Category name</label>
                                <input name="Ctgname" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>

</html>
