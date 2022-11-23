<%-- 
    Document   : login
    Created on : Jun 22, 2022, 4:57:09 PM
    Author     : my do
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
        <!-- title -->
        <title>Sign in</title>
        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="../assets/img/favicon-32x32.png">
        <!--<link rel="stylesheet" href="fonts/icomoon/style.css">-->
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" 
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Style -->
        <link rel="stylesheet" href="../assets/css/main.css">

        <title>Login</title>
    </head>
    <body>


        <div class="half">
            <!--<div class="bg order-1 order-md-2" style="background-image: url('images/banner-01.jpg');"></div>-->
            <div class="contents order-2 order-md-1">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-6">
                            <div class="form-block">
                                <div class="text-center mb-5"> 
                                    <h3>Sign in</h3>
                                </div>
                                
                                <p class="error-text">${error}</p>
                                <form action="login" method="post">
                                    <div class="form-group">
                                        <input value="${userC}" type="text" class="form-control" placeholder="Username" id="username" name="user" required="">
                                    </div>
                                    <div class="form-group">
                                        <input value="${passC}" type="password" class="form-control" placeholder="Password" id="password" name="pass" required="">
                                    </div>


                                    <div class="d-sm-flex mb-5 align-items-center">
                                        <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Remember password</span>
                                            <input type="checkbox" name="rem"/>
                                            <div class="control__indicator"></div>
                                        </label>
                                        <span class="ml-auto"><a href="signup" class="forgot-pass">Sign up</a></span> 
                                   </div>

                                    <input type="submit" value="Sign In" class="btn btn-block btn-outline-danger" id="btn-primary"> 

                                    <span class="ml-auto"><a href="ShopControl" class="forgot-pass">Home</a></span> 

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
