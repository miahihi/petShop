<%-- 
    Document   : productDetail
    Created on : Jun 25, 2022, 6:56:12 PM
    Author     : my do
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <jsp:include page="head.jsp"></jsp:include>

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <h1>Product Detail</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- single product -->
        <div class="single-product mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="single-product-img">
                            <img src="${product.img}" alt="">
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="single-product-content">
                        <h3>${product.name}</h3>
                        <p class="single-product-pricing"><span style="text-decoration: line-through">${product.price}</span>${product.discount}</p>
                        <p>${product.description}</p>
                        <div class="single-product-form">
                            <form name="order" action="cart" method="post">
                                <input name="num" type="number" value="1" min="0" max="${product.quantity}" readonly">
                                <p>Remain: ${product.quantity}</p>
                                 <input type="hidden" name="id" value="${product.id}"/>
                                 <input type="hidden" name="cid" value="${product.cid}"/>
                                <button class="cart-btn" id="submit" type="submit">Add to Cart</button>
                            </form>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end single product -->

    <!-- more products -->
    <div class="more-products mb-150">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="section-title">	
                        <h3><span class="orange-text">Related</span> Products</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
                    </div>
                </div>
            </div>

            <div class="row product-lists">
                <c:forEach items="${list3}" var="i">
                    <div class="col-lg-4 col-md-6 text-center">
                        <div class="single-product-item">
                            <div class="product-image">
                                <img src="${i.img}" alt="">
                            </div>
                            <h3>${i.name}</h3>
                            <p class="product-price"><span style="text-decoration: line-through">${i.price}</span> ${i.discount} </p>
                             <c:if test="${sessionScope.account.getRole()!=0}">
                                    <a href="detail?pid=${i.id}&cid=${i.cid}" class="cart-btn" ><i class="fas fa-shopping-cart"></i>See detail</a>
                                </c:if>
                            <c:if test="${sessionScope.account.getRole()==0}">
                                <a href="load?pid=${i.id}" class="cart-btn"><i class="fas fa-edit"></i>Edit product</a>
                            </c:if>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- end more products -->

    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- end footer -->


</body>
</html>
