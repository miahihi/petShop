<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>OrderDetail</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon-32x32.png">
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
    <body>

        <div class="container">
            <h2>Order Detail - Chi tiết đơn hàng</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>Mã đơn</th>
                        <th>Tên người mua</th>
                        <th>Username</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Date</th>
                        <th>Product name</th>
                        <th>Quantity</th>
                        <th>Product name</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listD}" var="o">
                        <tr>
                            <td>${o.id}</td>
                            <td>${o.name}</td>
                            <td>${o.uname}</td>
                            <td>${o.phone}</td>
                            <td>${o.addr}</td>
                            <td>${o.date}</td>
                            <td>${o.pName}</td>
                            <td>${o.quantity}</td>
                            <td>${o.total}</td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            <a style="float:right" href="ShopControl" class="cart-btn"><i class="fas fa-angle-double-left"></i>HOME</a>

        </div>

    </body>
</html>
