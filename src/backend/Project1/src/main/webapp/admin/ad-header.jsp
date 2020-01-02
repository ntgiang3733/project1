<%-- 
    Document   : ad-header
    Created on : Dec 12, 2019, 11:13:37 PM
    Author     : GD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad header</title>
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
        <header>
            <div class="header-top">
              <div class="container">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="top-left pull-left">

                      <div class="currency">
                        <form action="#" method="post" enctype="multipart/form-data" id="currency">

                        </form>
                      </div>

                    </div>

                  </div>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="header-inner">
                <div class="col-sm-3 col-xs-3 header-left">
                  <div id="logo"> <a href="${root}/index.jsp"><img style="height: 100%;" width="100%" src="${root}/image/logo.png" title="E-Commerce" alt="E-Commerce" class="img-responsive" /></a> </div>
                </div>

              </div>
            </div>
          </header>
          <nav id="menu" class="navbar">
            <div class="nav-inner">
              <div class="navbar-header"><span id="category" class="visible-xs">Danh mục</span>
                <button type="button" class="btn btn-navbar navbar-toggle" ><i class="fa fa-bars"></i></button>
              </div>
              <div class="navbar-collapse">
                <ul class="main-navigation">
                  <li><a href="${root}/admin/ad-account.jsp"   class="parent"  >QL tài khoản</a> </li>
                  <li><a href="/Project/admin/ad-product.jsp?category_ID=1000&sortby=#"   class="parent"  >QL sản phẩm</a> </li>
                  <li><a href="ad-bill.jsp"   class="parent"  >Quản lý hóa đơn</a> </li>

                  </li>

                </ul>
              </div>
            </div>
          </nav>
    </body>
</html>
