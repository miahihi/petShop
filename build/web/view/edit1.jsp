<%-- 
    Document   : edit1
    Created on : Jul 4, 2022, 11:33:03 PM
    Author     : my do
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
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
        <a href="HomeControl"><i class="fa fa-home mr-2" style="font-size: 6rem;margin-left: 60px"></i>Back to Home</a>   
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Quản lí <b>Sản phẩm</b></h2> 
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm sản phẩm mới</span></a>
<!--                            <a href="DeleteControl?pid=${o.id}" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Xóa</span></a>						-->
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <!--                                <span class="custom-checkbox">
                                                                    <input type="checkbox" id="selectAll">
                                                                    <label for="selectAll"></label>
                                                                </span>-->
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${listP}" var="o">
                            <tr>
                                <td>
                                    <!--                                    <span class="custom-checkbox">
                                                                            <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                                            <label for="checkbox1"></label>
                                                                        </span>-->
                                </td>
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>
                                    <img src="${o.image}">
                                </td>
                                <td>${o.price} $</td>
                                <td>
                                    <a href="loadControl?pid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="DeleteControl?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>       
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>       
                <div class="clearfix">                       
                    <ul class="pagination">
                        <c:if test = "${index>1}">
                            <li class="page-item"><a href="ManagerControl?index=${index-1}"class="page-link">Previous</a></li>
                            </c:if>
                            <c:forEach begin="1" end="${requestScope.endP}" var="i">
                            <li class="page-item ${index == i ? "active":""}"><a href="ManagerControl?index=${i}" class="page-link">${i}</a></li>
                            </c:forEach>
                            <c:if test = "${index}<${requestScope.endP}">
                            <li class="page-item"><a href="ManagerControl?index=${index+1}" class="page-link">Next</a></li>
                            </c:if>
                    </ul>
                </div>
            </div>
            <div>
            </div>

        </div>
        <!-- Edit Modal HTML -->
        
        </div>
        ${listP.size()}

        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
