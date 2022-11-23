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

    <!--profile-->

    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-sm-12">
                <div class="contact-form-right">
                    <h2><i class="fas fa-user-tag"></i>${account.getName()}'s profile</h2>
                    <p class="error-text">${err}</p>
                    <p class="noti-text">${noti}</p>
                    <form id="updateForm" name="updateForm" action="profile" method="post" onsubmit="return validateForm()" />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">Username: </label>
                                <input type="text" class="form-control" id="name" name="name" value="${account.getUsername()}" required readonly/>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="name">Họ và tên: </label>
                                <input type="text" class="form-control" id="name" name="fname" value="${account.getName()}" required data-error="Please enter your name" />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">Email: </label>
                                <input type="email" id="email" class="form-control" name="email" value="${account.getEmail()}" required data-error="Please enter your email" />
                                <div class="badge badge-danger" id="emailFail"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="phone">Số điện thoại: </label>
                                <input type="text" class="form-control" id="phone" name="phone" value="${account.getPhone()}" />
                                <div class="badge badge-danger" id="phoneFail"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="address">Địa chỉ: </label>
                                <input type="text" class="form-control" id="address" name="address" value="${account.getAddr()}" required data-error="Please enter your Subject"/>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="currpass">Mật khẩu cũ: </label>
                                <input type="password" class="form-control" id="currpass" name="currpass" placeholder="********" value="" onchange="showChangeButton()" required="">
                                <div class="badge badge-danger" id="passFail"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="newpass">Mật khẩu mới: </label>
                                <input type="password" class="form-control" id="newpass" name="newpass" placeholder="********" value="" onchange="showChangeButton()">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="submit-button text-center">
                                <span class="home-btn btn btn-block btn-outline-danger"><a href="ShopControl">Home</a></button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="submit-button text-center">
                                <button class="btn hvr-hover btn-block btn-outline-danger" id="submit" type="submit">Update</button>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--end profile-->
</html>
