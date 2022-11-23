<%-- 
    Document   : signUp
    Created on : Jun 25, 2022, 2:12:11 PM
    Author     : my do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <html lang="en">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

            <!-- title -->
            <title>Sign up</title>

            <!-- favicon -->
            <link rel="shortcut icon" type="image/png" href="../assets/img/favicon-32x32.png">

            <!--<link rel="stylesheet" href="fonts/icomoon/style.css">-->

            <link rel="stylesheet" href="css/owl.carousel.min.css">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" 
                  integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

            <!-- Style -->
            <link rel="stylesheet" href="../assets/css/main.css">

            <title>Login</title>

        </head>
        <div class="half">
            <div class="contents order-2 order-md-1">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-6">
                            <div class="form-block">
                                 <div class="text-center mb-5"> 
                                    <h3>Sign up</h3>
                                </div>
                                <p class="re-pass-wrong">${err}</p>
                                <form class="register-form" name="register-form" action="signup" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="username" id="username" placeholder="Tên đăng nhập" required="">
                                        <!--<div class="badge badge-danger" id="userFail"></div>-->
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="name" id="fullname" placeholder="Họ và tên" required="">
                                        <!--<div class="badge badge-danger" id="fullnameFail"></div>-->
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Email" required="">

                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="phone" id="phone" placeholder="Số điện thoại" required="">
                                        <!--<div class="badge badge-danger" id="phoneFail"></div>-->
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="address" id="address" placeholder="Địa chỉ" required="">

                                    </div>
                                    <div class="row md-12">
                                        <div class="form-group col-md-6">
                                            <input type="password" class="form-control" name="pass" id="password" placeholder="Mật khẩu" required="">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input type="password" class="form-control" name="repass" id="repassword" placeholder="Nhập lại mật khẩu" required="">
                                            <div class="badge badge-danger" id="repassFail"></div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-outline-danger submit"> Sign up </button>
                                    <span class="ml-auto"><a href="login" class="forgot-pass">Sign in</a></span> 
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>



        <!-- jquery -->
        <script src="../assets/js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="../assets/js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="../assets/js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="../assets/js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="../assets/js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="../assets/js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="../assets/js/sticker.js"></script>
        <!-- main js -->
        <script src="../assets/js/main.js"></script>
    </body>
</html>
