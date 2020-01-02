<%-- 
    Document   : header
    Created on : Dec 10, 2019, 5:32:03 PM
    Author     : GD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="e-commerce site well design with responsive view." />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="../ms03/image/logo - Copy.png" rel="icon" type="image/png" >
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
        <link href="javascript/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700" rel="stylesheet"/>
        <link href="css/stylesheet.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="javascript/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
        <link href="javascript/owl-carousel/owl.transitions.css" type="text/css" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="javascript/jquery-2.1.1.min.js" ></script>
        <script type="text/javascript" src="javascript/bootstrap/js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="javascript/template_js/jstree.min.js"></script>
        <script type="text/javascript" src="javascript/template_js/template.js"></script>
        <script type="text/javascript" src="javascript/common.js" ></script>
        <script type="text/javascript" src="javascript/global.js" ></script>
        <script type="text/javascript" src="javascript/owl-carousel/owl.carousel.min.js" ></script>
    </head>
    <body>
        
        <header>
            <div class="header-top">
              <div class="container">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="top-left pull-left">
                        <div class="wel-come-msg"> Chào mừng đến với Project Laptop </div>
                    </div>
                    <div class="top-right pull-right">
                      <div id="top-links" class="nav pull-right">
                        <ul class="list-inline">
                          <li><a href="<%=(session.getAttribute("email")!=null)?"LogInServlet?command=logout":"login.jsp" %>" id="wishlist-total" title="Đăng xuất"><i class="fa fa-heart" aria-hidden="true"></i><span><%=(session.getAttribute("email")!=null)?(session.getAttribute("email")):"Đăng nhập" %></span></a></li>
                          <li><a href="#" id="wishlist-total" title="Wish List (0)"><i class="fa fa-heart" aria-hidden="true"></i><span>Danh sách yêu thích</span><span> (0)</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="container">
              <div class="header-inner">
                <div class="col-sm-3 col-xs-3 header-left">
                  <div id="logo"> <a href="index.jsp"><img style="height: 100%;" width="100%" src="image/logo.png" title="E-Commerce" alt="E-Commerce" class="img-responsive" /></a> </div>
                </div>
                <div class="col-sm-9 col-xs-9 header-right">
                    <form action="SearchServlet" method="POST" >
                    <div id="search" class="input-group">
                    <input type="text" name="search" value="" placeholder="Nhập từ khóa tìm kiếm ..." class="form-control input-lg" />
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default btn-lg"><span>Tìm kiếm</span></button>
                    </span> </div></form>
                  <div id="cart" class="btn-group btn-block">
                    <button type="button" class="btn btn-inverse btn-block btn-lg dropdown-toggle cart-dropdown-button"> <span id="cart-total">
                    <span>Giỏ hàng</span><br>
                    3 sản phẩm</span></button>
                    <ul class="dropdown-menu pull-right cart-dropdown-menu">
                      <li>
                        <table class="table table-striped">
                          <tbody>
                            <tr>
                              <td class="text-center"><a href="#"><img class="img-thumbnail" title="lorem ippsum dolor dummy" alt="lorem ippsum dolor dummy" src="image/product/7product56x72.jpg"></a></td>
                              <td class="text-left"><a href="#">Macbook Pro 2017</a></td>
                              <td class="text-right">x 1</td>
                              <td class="text-right">30.000.000 đ</td>
                              <td class="text-center"><button class="btn btn-danger btn-xs" title="Remove" type="button"><i class="fa fa-times"></i></button></td>
                            </tr>
                          </tbody>
                        </table>
                      </li>
                      <li>
                        <table class="table table-striped">
                          <tbody>
                            <tr>
                              <td class="text-center"><a href="#"><img class="img-thumbnail" title="lorem ippsum dolor dummy" alt="lorem ippsum dolor dummy" src="image/product/7product56x72.jpg"></a></td>
                              <td class="text-left"><a href="#">Macbook Pro 2017</a></td>
                              <td class="text-right">x 1</td>
                              <td class="text-right">30.000.000 đ</td>
                              <td class="text-center"><button class="btn btn-danger btn-xs" title="Remove" type="button"><i class="fa fa-times"></i></button></td>
                            </tr>
                          </tbody>
                        </table>
                      </li>
                      <li>
                        <table class="table table-striped">
                          <tbody>
                            <tr>
                              <td class="text-center"><a href="#"><img class="img-thumbnail" title="lorem ippsum dolor dummy" alt="lorem ippsum dolor dummy" src="image/product/7product56x72.jpg"></a></td>
                              <td class="text-left"><a href="#">Macbook Pro 2017</a></td>
                              <td class="text-right">x 1</td>
                              <td class="text-right">30.000.000 đ</td>
                              <td class="text-center"><button class="btn btn-danger btn-xs" title="Remove" type="button"><i class="fa fa-times"></i></button></td>
                            </tr>
                          </tbody>
                        </table>
                      </li>
                      <li>
                        <div>
                          <table class="table table-bordered">
                            <tbody>
                              <tr>
                                <td class="text-right"><strong></strong></td>
                                <td class="text-right"></td>
                              </tr>
                              <tr>
                                <td class="text-right"><strong>Thuế sinh thái(-2.00)</strong></td>
                                <td class="text-right">300.000 đ</td>
                              </tr>
                              <tr>
                                <td class="text-right"><strong>VAT (20%)</strong></td>
                                <td class="text-right">$42.00</td>
                              </tr>
                              <tr>
                                <td class="text-right"><strong>Total</strong></td>
                                <td class="text-right">$254.00</td>
                              </tr>
                            </tbody>
                          </table>
                          <p class="text-right"> <span class="btn-viewcart"><a href="cart.html"><strong><i class="fa fa-shopping-cart"></i> Xem giỏ hàng</strong></a></span> <span class="btn-checkout"><a href="checkout.html"><strong><i class="fa fa-share"></i> Thanh toán</strong></a></span> </p>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </header>
        <nav id="menu" class="navbar">
            <div class="nav-inner">
              <div class="navbar-header"><span id="category" class="visible-xs">Thể loại</span>
                <button type="button" class="btn btn-navbar navbar-toggle" ><i class="fa fa-bars"></i></button>
              </div>
              <div class="navbar-collapse">
                <ul class="main-navigation">
                  <li><a href="index.jsp"   class="parent"  >Trang chủ</a> </li>
                  <li><a href="category.jsp?category_ID=1001&sortby=all"   class="parent"  >Laptop gaming</a> </li>
                  <li><a href="category.jsp?category_ID=1002&sortby=all"   class="parent"  >laptop đồ họa</a> </li>
                  <li><a href="category.jsp?category_ID=1003&sortby=all"   class="parent"  >laptop văn phòng</a> </li>
                  <li><a href="#" class="active parent">Danh mục</a>
                    <ul>
                      <li><a href="checkout.jsp">Thanh toán</a></li>
                      <li><a href="cart.jsp">Giỏ hàng</a></li>
                      <li><a href="login.jsp">Đăng nhập</a></li>
                    </ul>
                  </li>

                </ul>
              </div>
            </div>
          </nav>
    </body>
</html>
