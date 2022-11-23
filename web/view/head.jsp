<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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