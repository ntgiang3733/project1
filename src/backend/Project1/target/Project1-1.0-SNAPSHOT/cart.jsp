<%-- 
    Document   : cảt
    Created on : Dec 10, 2019, 6:00:04 PM
    Author     : GD
--%>

<%@page import="prj.project1.model.Category"%>
<%@page import="java.util.Map"%>
<%@page import="prj.project1.model.Item"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.model.Cart"%>
<%@page import="prj.project1.dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
        <%
            CategoryDAO categoryDAO=new CategoryDAO();
            Cart cart = (Cart)session.getAttribute("cart");
            if(cart==null){
                cart= new Cart();
                session.setAttribute("cart", cart);
            }
            
            DecimalFormat formatter = new DecimalFormat("###,###,###"); 
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="breadcrumb parallax-container">
            <div class="parallax"><img src="image/prlx1.jpg" alt="#"></div>
            <h1>Giỏ hàng</h1>
            <ul>
              <li><a href="index.html">Trang chủ</a></li>
              <li><a href="cart.html">Giỏ hàng</a></li>
            </ul>
          </div>
          <div class="container">
            <div class="row">
              <div id="column-left" class="col-sm-3 hidden-xs column-left">
                <div class="Categories left-sidebar-widget">
                  <div class="columnblock-title">Danh mục</div>
                  <div class="category_block">
                    <ul class="box-category treeview">
                      <% for(Category category:categoryDAO.getListCategory()){ %>
                        <li><a href="category.jsp?category_ID=<%=category.getCategoryID() %>&sortby=#"><%= category.getCategoryName() %></a></li>
                        <%}%>
                    </ul>
                  </div>
                </div>
                <div class="filter left-sidebar-widget">
                  <div class="columnblock-title">Lọc sản phẩm </div>
                  <div class="filter-block">
                    <div class="list-group">
                      <p class="list-group-item">Màu sắc</p>
                      <div class="list-group-item">
                        <div id="filter-group1">
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="1" />
                            Đen</label>
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="2" />
                            Xanh</label>
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="3" />
                            Đỏ</label>
                        </div>
                      </div>
                      <p class="list-group-item">Giá</p>
                      <div class="list-group-item">
                        <div id="filter-group2">
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="4" />
                            5 triệu - 7 triệu</label>
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="5" />
                            Trên 7 triệu</label>
                        </div>
                      </div>
                      <p class="list-group-item">Kiểu dáng</p>
                      <div class="list-group-item">
                        <div id="filter-group3">
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="6" />
                            Mỏng nhẹ</label>
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="7" />
                            Mỏng nhẹ</label>
                          <label class="checkbox">
                            <input name="filter[]" type="checkbox" value="8" />
                            Mỏng nhẹ</label>
                        </div>
                      </div>
                    </div>
                    <div class="panel-footer">
                      <button type="button" id="button-filter" class="btn btn-primary">Tùy chọn tìm kiếm</button>
                    </div>
                  </div>
                </div>
                <div class="banner left-sidebar-widget"> <a href="#"><img src="" alt="Banner" class="img-responsive" /></a> </div>
                <div class="special left-sidebar-widget">
                  <div class="columnblock-title">Sản phẩm đặc biệt</div>
                  <ul class="row ">
                    <li class="product-layout">
                      <div class="product-list col-xs-4">
                        <div class="product-thumb">
                          <div class="image product-imageblock">
                          <a href="product.html">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-06.jpg">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-06-1.jpg">
                          </a>
                          </div>
                        </div>
                      </div>
                      <div class="col-xs-8">
                        <div class="caption product-detail">
                          <h4 class="product-name"><a title="Casual Shirt With Ruffle Hem" href="#">Laptop văn phòng Asus</a></h4>
                          <p class="price product-price"> <span class="price-new">13.000.000 đ</span> <Strike class="price-old"> 15.000.000 đ</Strike> </p>
                          <div class="addto-cart"><a href="#">Thêm vào giỏ</a></div>
                        </div>
                      </div>
                    </li>
                    <li class="product-layout">
                      <div class="product-list col-xs-4">
                        <div class="product-thumb">
                          <div class="image product-imageblock"> <a href="product.html">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-02.jpg">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-02-1.jpg">
                          </a> </div>
                        </div>
                      </div>
                      <div class="col-xs-8">
                        <div class="caption product-detail">
                          <h4 class="product-name"><a title="Casual Shirt With Ruffle Hem" href="#">Laptop văn phòng Asus</a></h4>
                          <p class="price product-price"> <span class="price-new">13.000.000 đ</span> <Strike class="price-old"> 15.000.000 đ</Strike> </p>
                          <div class="addto-cart"><a href="#">Thêm vào giỏ</a></div>
                        </div>
                      </div>
                    </li>
                    <li class="product-layout">
                      <div class="product-list col-xs-4">
                        <div class="product-thumb">
                          <div class="image product-imageblock"> <a href="product.html">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-03.jpg">
                          <img class="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-03-1.jpg">
                          </a> </div>
                        </div>
                      </div>
                      <div class="col-xs-8">
                        <div class="caption product-detail">
                          <h4 class="product-name"><a title="Casual Shirt With Ruffle Hem" href="#">Laptop văn phòng Asus</a></h4>
                          <p class="price product-price"> <span class="price-new">13.000.000 đ</span> <Strike class="price-old"> 15.000.000 đ</Strike> </p> 
                          <div class="addto-cart"><a href="#">Thêm vào giỏ</a></div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-9" id="content">
                <form enctype="multipart/form-data" method="post" action="#">
                  <div class="table-responsive">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <td class="text-center">Ảnh</td>
                          <td class="text-left">Tên sản phẩm</td>
                          <td class="text-left">Mã sản phẩm</td>
                          <td class="text-left">Sô lượng</td>
                          <td class="text-right">Giá</td>
                          <td class="text-right">Tổng</td>
                        </tr>
                      </thead>
                      <tbody>
                          <% for(Map.Entry<Long,Item> list: cart.getCartItems().entrySet()){ %>
                        <tr>
                          <td class="text-center"><a href="product.jsp?product_ID=<%=list.getValue().getProduct().getProductID() %>"><img class="img-thumbnail" title="iPhone" alt="iPhone" src="image/product/<%=list.getValue().getProduct().getProductImage() %>"></a></td>
                          <td class="text-left"><a href="product.jsp?product_ID=<%=list.getValue().getProduct().getProductID() %>"><%= list.getValue().getProduct().getProductName() %></a></td>
                          <td class="text-left"><%=list.getValue().getProduct().getProductID() %></td>
                          <td class="text-left"><div style="max-width: 200px;" class="input-group btn-block">
                              <input type="text" class="form-control quantity" size="1" value="<%=list.getValue().getQuantity() %>" name="quantity">
                              <span class="input-group-btn">
                                  <p><a class="btn btn-default" href="CartServlet?command=plus&product_ID=<%=list.getValue().getProduct().getProductID() %>&cartID=<%=System.currentTimeMillis() %>">+</a></p>
                              <div><a class="btn btn-default" href="CartServlet?command=sub&product_ID=<%=list.getValue().getProduct().getProductID() %>&cartID=<%=System.currentTimeMillis() %>"> - </a></div>
                              <div><a class="btn btn-default" href="CartServlet?command=remove&product_ID=<%=list.getValue().getProduct().getProductID() %>">x</a></div>
                              </span></div></td>
                          <td class="text-right"><%=formatter.format(list.getValue().getProduct().getProductPrice()) %> VNĐ</td>
                          <td class="text-right"><%=formatter.format((list.getValue().getProduct().getProductPrice())*(list.getValue().getQuantity())) %> VNĐ</td>
                        </tr><% } %>
                      </tbody>
                    </table>
                  </div>
                </form>
                <div class="buttons">
                  <div class="pull-left"><a class="btn btn-default" href="index.jsp">Tiếp tục mua sắm</a></div>
                  <div class="pull-right"><a class="btn btn-primary" href="checkout.jsp">Thanh toán</a></div>
                </div>
              </div>
            </div>
          </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="javascript/jquery.parallax.js"></script> 
        <script>
            jQuery(document).ready(function ($) {
                $('.parallax').parallax();
            });
        </script>
    </body>
</html>
