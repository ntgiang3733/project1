<%-- 
    Document   : ad-account
    Created on : Dec 12, 2019, 11:24:30 PM
    Author     : GD
--%>

<%@page import="prj.project1.model.Users"%>
<%@page import="prj.project1.dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad-account</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="e-commerce site well design with responsive view." />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="${root}/image/logo - Copy.png" rel="icon" type="image/png" >
        <link href="${root}/css/bootstrap.min.css" rel="stylesheet" media="screen" />
        <link href="${root}/javascript/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700" rel="stylesheet"/>
        <link href="${root}/css/stylesheet.css" rel="stylesheet">
        <link href="${root}/css/responsive.css" rel="stylesheet">
        <link href="${root}/javascript/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
        <link href="${root}/javascript/owl-carousel/owl.transitions.css" type="text/css" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="${root}/javascript/jquery-2.1.1.min.js" ></script>
        <script type="text/javascript" src="${root}/javascript/bootstrap/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="${root}/javascript/template_js/jstree.min.js"></script>
        <script type="text/javascript" src="${root}/javascript/template_js/template.js"></script>
        <script type="text/javascript" src="${root}/javascript/common.js" ></script>
        <script type="text/javascript" src="${root}/javascript/global.js" ></script>
        <script type="text/javascript" src="${root}/javascript/owl-carousel/owl.carousel.min.js" ></script>
    </head>
    <body>
        <%
            
            UsersDAO ud=new UsersDAO();
            String name_err="",email_err="",password_err="";
            if(request.getAttribute("name_err")!=null){
                name_err=(String)request.getAttribute("name_err");
            }
            if(request.getAttribute("email_err")!=null){
                email_err=(String)request.getAttribute("email_err");
            }
            if(request.getAttribute("password_err")!=null){
                password_err=(String)request.getAttribute("password_err");
            }
            
            String name="",email="",password="";
            if(request.getAttribute("name")!=null){
                name=(String)request.getAttribute("name");
            }
            if(request.getAttribute("email")!=null){
                email=(String)request.getAttribute("email");
            }
            if(request.getAttribute("password")!=null){
                password=(String)request.getAttribute("password");
            }
            
        %>
        <jsp:include page="ad-header.jsp"></jsp:include>
        <div class="panel">
            <div class="panel-heading">
                    <h3 style="font-size: 20px;" class="panel-title">Khách hàng</h3>
            </div>

            <div class="panel-body">
                <div class="pad-btm form-inline">
                        <div class="row">

                                <div class="col-sm-6 table-toolbar-right">
                                        <div class="form-group">
                                                <input id="demo-input-search2" type="text" placeholder="Tìm kiếm" class="form-control" autocomplete="off">
                                                <button type="button" class="btn btn-default btn-lg"><span>Tìm kiếm</span></button>
                                        </div>
                                </div>
                        </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                                <tr>
                                        <th style="width:4ex">ID</th>
                                        <th>Tên tài khoản</th>
                                        <th>Email</th>
                                        <th class="text-center">Chức năng</th>
                                        <th class="text-right">Tùy chỉnh</th>
                                </tr>
                        </thead>
                        <% for(Users u:ud.getListUsers() ){ %>
                        <tbody>
                            <tr>
                                <td><a href="#" class="btn-link"><%=u.getID() %></a></td>
                                <td><%=u.getName()%></td>
                                <td><%=u.getEmail() %></td>
                                <%String role=(u.isRole())?"ADMIN":"KHÁCH HÀNG"; %>
                                <td class="text-center"><span class="label label-table label-success"><%=role %></span></td>
                                <td class="text-right">
                                        <a class="btn btn-xs btn-danger add-tooltip"  data-toggle="tooltip" href="${root}/AdminAccountServlet?user_ID=<%=u.getID()%> " data-original-title="Delete" data-container="body"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                        </tbody>
                        <%} %>
                    </table>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
              <div class="col-sm-9" id="content">
                <form action="${root}/AdminAccountServlet" method="post"  >
                    <legend>Thêm tài khoản ADMIN</legend>
                    <div class="form-group required">
                      <label for="input-email" class="col-sm-2 control-label">Tên tài khoản</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=name_err %></p>
                          <input type="text" class="form-control" id="input-email" placeholder="" value="" name="name">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Email</label>
                      <div class="col-sm-10">
                          <p style="color: red" > <%=email_err %> </p>
                          <input type="text" class="form-control" id="input-firstname" placeholder="" value="" name="email">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Password</label>
                      <div class="col-sm-10">
                          <p style="color: red" > <%=password_err %> </p>
                          <input type="text" class="form-control" id="input-telephone" placeholder="" value="" name="password">
                      </div>
                    </div>
                    <div><button type="submit" class="btn btn-primary">Thêm</button></div>
                    <p style="color: red" >  </p>
                </form>
              </div>
            </div>
        </div>
    </body>
</html>
