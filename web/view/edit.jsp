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
        <!-- bootstrap -->
        <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
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
        <!-- responsive -->
        <link rel="stylesheet" href="../assets/css/responsive.css">

    </head>

    <!-- Edit Product -->
    <div id="editEmployeeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">						
                    <h4 class="modal-title">Edit Product</h4>
                </div>
                
                <form action="edit" method="post">
                    <div class="modal-body">	
                        <div class="form-group">
                            <label>ID</label>
                            <input type="text"  class="form-control" name="pid" value="${product.id}" readonly>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <textarea type="text" class="form-control" required name="name">${product.name}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input type="text" class="form-control" required name="price" value="${product.price}">
                        </div>
                        <div class="form-group">
                            <label>Discount</label>
                            <input type="text" class="form-control" required name="discount" value="${product.discount}">
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" required name="description">${product.description}</textarea>
                        </div>

                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="text" class="form-control" required name="quantity" value="${product.quantity}">
                        </div>
                        <div class="form-group">
                            <label>Image Link</label>
                            <input type="text" class="form-control" required name="image" value="${product.img}">
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select name="category" class="form-select" aria-label="Default select example">
                                <c:forEach items="${listCtg}" var="o">
                                    <option ${product.cid==o.cid?"selected":""} value="${o.cid}">${o.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <a type="button" class="btn btn-default" href="admin">Cancel</a>
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!--end edit product-->
</html>
