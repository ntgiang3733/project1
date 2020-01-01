<%-- 
    Document   : laptopGaming
    Created on : Dec 12, 2019, 7:59:19 AM
    Author     : GD
--%>

<%@page import="prj.project1.model.Product"%>
<%@page import="prj.project1.model.Category"%>
<%@page import="prj.project1.model.Cart"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.dao.ProductDAO"%>
<%@page import="prj.project1.dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>laptop</title><meta http-equiv="content-type" content="text/html;charset=utf-8" />
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
            ProductDAO productDAO=new ProductDAO();
            DecimalFormat formatter=new DecimalFormat("###,###,###");
            long category_ID=0;
            if(request.getParameter("category_ID")!=null){
                category_ID=(long)Long.parseLong(request.getParameter("category_ID"));
            }
            String value=request.getParameter("sortby");
            Cart cart=(Cart)session.getAttribute("cart");
            if(cart==null){
                cart=new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="breadcrumb parallax-container">
            <div class="parallax"><img src="image/prlx1.jpg" alt="#"></div>
            <h1 class="category-title">LAPTOP</h1>
            <ul>
              <li><a href="index.jsp">Trang chủ</a></li>
              <li><a href="#">Danh sách Laptop</a></li>
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
                        <li><a href="category.jsp?category_ID=<%=category.getCategoryID() %>&sortby=all"><%= category.getCategoryName() %></a></li>
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
              <div class=" content col-sm-9">
                <div class="category-page-wrapper">
                  <div class="col-md-2 text-right sort-wrapper">
                    <label class="control-label" for="input-sort">Sắp xếp theo :</label>
                    <div class="sort-inner">

                      <select id="input-sort" class="form-control" name="select" onchange="window.location=this.value">
                          <option  value="category.jsp?category_ID=<%=category_ID %>&sortby=all" selected="selected">Mặc định</option>
                          <option value="category.jsp?category_ID=<%=category_ID %>&sortby=name1"><a>Tên (A - Z)</a></option>
                        <option value="category.jsp?category_ID=<%=category_ID %>&sortby=name2">Tên (Z - A)</option>
                        <option value="category.jsp?category_ID=<%=category_ID %>&sortby=price1">Giá (Thấp &gt; Cao)</option>
                        <option value="category.jsp?category_ID=<%=category_ID %>&sortby=price2">Giá (Cao &gt; Thấp)</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-6 list-grid-wrapper"> 
                    <div class="btn-group btn-list-grid">
                      <button type="button" id="list-view" class="btn btn-default list" data-toggle="tooltip" title="List"></button>
                      <button type="button" id="grid-view" class="btn btn-default grid" data-toggle="tooltip" title="Grid"></button>
                    </div>
                  </div>
                </div>
                <br />
                <div class="grid-list-wrapper">
                    <% for(Product product:productDAO.sortBy(category_ID, value )){ %> 
                  <div class="product-layout product-list col-xs-12">
                    <div class="product-thumb">
                      <div class="image product-imageblock">
                      <a href="product.jsp?product_ID=<%=product.getProductID() %>">
                      <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" />
                      <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" />
                      </a>
                        <ul class="button-group grid-btn">
                          <li>
                            <button type="button" class="wishlist" data-toggle="tooltip" data-placement="top" title="Add to Wish List" ><i class="fa fa-heart-o"></i></button>
                          </li>
                          <li>
                            <button type="button" class="compare" data-toggle="tooltip" data-placement="top" title="Compare this Product" ><i class="fa fa-exchange"></i></button>
                          </li>
                          <li>
                            <button type="button" class="quick-view" data-toggle="tooltip" data-placement="top" title="Quick View" ><i class="fa fa-eye"></i></button>
                          </li>
                          <li>
                              <a href="CartServlet?command=plus&product_ID=<%=product.getProductID() %>&cartID=<%=System.currentTimeMillis() %>"><button type="button" class="addtocart-btn" title="Add to Cart">Thêm vào giỏ</button></a>
                          </li>
                        </ul>
                      </div>
                      <div class="caption product-detail">
                        <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                        <h4 class="product-name"><a href="#" title=""><%= product.getProductName() %></a></h4>
                        <p class="price product-price"><%=formatter.format(product.getProductPrice()) %> VNĐ<span class="price-tax">Giá cũ: 13.0000.000 đ</span></p>
                        <p class="product-desc"> <%=product.getProductDescription() %></p>
                        <ul class="button-group list-btn">
                          <li>
                            <button type="button" class="wishlist" data-toggle="tooltip" data-placement="top" title="Add to Wish List" ><i class="fa fa-heart-o"></i></button>
                          </li>
                          <li>
                            <button type="button" class="compare" data-toggle="tooltip" data-placement="top" title="Compare this Product" ><i class="fa fa-exchange"></i></button>
                          </li>
                          <li>
                            <button type="button" class="quick-view" data-toggle="tooltip" data-placement="top" title="Quick View" ><i class="fa fa-eye"></i></button>
                          </li>
                          <li>
                              <%=product.getProductDescription() %><button type="button" class="addtocart-btn" data-toggle="tooltip" data-placement="top" title="Add to Cart"  ><i class="fa fa-shopping-bag"></i></button></a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <%} %>
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
