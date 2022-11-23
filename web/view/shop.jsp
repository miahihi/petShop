<%-- 
    Document   : product
    Created on : Jun 21, 2022, 11:35:11 AM
    Author     : my do
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
        <!--js bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </head>
    <body>

        <!-- header -->
        <div class="top-header-area" id="sticker">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 text-center">
                        <div class="main-menu-wrap">
                            <!-- logo -->
                            <div class="site-logo">
                                <a href="ShopControl">
                                    <img src="../assets/img/logo.png" alt="">
                                </a>
                            </div>
                            <!-- logo -->

                            <!-- menu start -->

                            <nav class="main-menu">
                                <ul>
                                    <c:if test="${sessionScope.account.getRole()!= 0}" >
                                        <li><a href="ShopControl">Shop</a>
                                            <ul class="sub-menu">
                                                <li ><a href="ShopControl?cid=${0}">All</a></li>
                                                    <c:forEach items="${listCtg}" var="i">
                                                    <li><a href="ShopControl?cid=${i.cid}">${i.name}</a></li>
                                                    </c:forEach>
                                            </ul>
                                        </li>

                                        <li><a href="adopt.html">Adopt</a>
                                            <ul class="sub-menu">
                                                <li><a href="dog.html">Chó</a></li>
                                                <li><a href="cat.html">Mèo</a></li>
                                                <li><a href="others.html">Khác</a></li>
                                                <li><a href="all.html">Tất cả</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Donate</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.account.getRole()== 0}" >
                                        <li><a href="admin">Product Manager</a></li>
                                        <li><a href="orderdetail">Order</a></li>
                                        </c:if>

                                    <c:if test="${sessionScope.account.getRole()!= null}" >
                                        <li><a href="adopt.html">Hello, ${sessionScope.account.getName()}</a>
                                            <ul class="sub-menu">
                                                <li><a href="profile">Profile</a></li>
                                                <li><a href="logout">Log out</a></li>
                                            </ul>
                                        </li>

                                    </c:if>
                                    <li>
                                        <div class="header-icons">
                                            <a class="shopping-cart" href="show"><i
                                                    class="fas fa-shopping-cart"></i></a>
                                            <a href="#searchkw"  class="btn addCtg mobile-hide search-bar-icon" data-toggle="modal">
                                                <i class="fas fa-search">&#xE147;</i><span></span></a>
                                                <c:if test="${sessionScope.account.getRole()==null}" >
                                                <a class="mobile-hide user-icon" href="login"><i
                                                        class="fas fa-user"></i></a>
                                                </c:if>

                                        </div>
                                    </li>
                                </ul>
                            </nav>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->

        <!-- search area -->

        <div id="searchkw" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="search" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Search for</h4>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <input name="searchName" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="Search">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- end search area -->

        <!-- hero area -->
        <div class="hero-area hero-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 offset-lg-2 text-center">
                        <div class="hero-text">
                            <div class="hero-text-tablecell">
                                <p class="subtitle">HÃY NHẬN NUÔI, ĐỪNG XUA ĐUỔI!</p>
                                <h1>LOVE ANIMALS</h1>
                                <div class="hero-btns">
                                    <a href="ShopControl" class="boxed-btn">CỬA HÀNG</a>
                                    <a href="../view/product.jsp" class="bordered-btn">NHẬN NUÔI</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end hero area -->

        <!-- advertisement section -->
        <c:if test="${sessionScope.account.getRole()!= 0}">

            <div class="abt-section mb-150">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-12">
                            <div class="abt-text">
                                <h2>Our <span class="orange-text">pet's product</span></h2>
                                <p style="color: #000">Tiền mua hàng của các bạn sẽ được trích 50% lợi nhuận để giúp đỡ các bé chó mèo bị bỏ rơi, bệnh tật. <br>Chúng tớ xin
                                    chân thành cảm ơn!</p>

                            </div>
                        </div>

                        <div class="image-column col-lg-6">
                            <div class="image">
                                <img src="../assets/img/shop.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if> 

        <!-- end advertisement section -->

        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-filters">
                            <ul>
                                <li ><a class="${tag==0||tag==null?"active":""}" href="ShopControl?cid=${0}">All</a></li>
                                    <c:forEach items="${listCtg}" var="i">
                                    <li ><a class="${tag==i.cid?"active":""}" href="ShopControl?cid=${i.cid}">${i.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>



                <!--each product-->
                <div class="row product-lists">
                    <c:forEach items="${list}" var="i">
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
                <!--end each product-->

                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="pagination-wrap">
                            <c:set var="cp" value="${requestScope.cp}"/>
                            <c:forEach begin="${1}" end="${requestScope.tp}" var="i"> 
                                <a class="${i==cp?"active":""}" href="ShopControl?cp=${i}&cid=${tag}">${i}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <!-- end products -->
        <jsp:include page="footer.jsp"></jsp:include>

</html>

