<%-- 
    Document   : top-product
    Created on : Dec 10, 2019, 5:47:02 PM
    Author     : GD
--%>

<%@page import="prj.project1.model.Cart"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.dao.ProductDAO"%>
<%@page import="prj.project1.dao.CategoryDAO"%>
<%@page import="prj.project1.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>top product</title>
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
        ProductDAO productDAO = new ProductDAO();
        DecimalFormat formatter=new DecimalFormat("###,###,###");
        Cart cart = (Cart)session.getAttribute("cart");
        if(cart==null){
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        %>
        <div class="content col-sm-12">
        <div class="customtab">
          <h3 class="productblock-title">Sản phẩm</h3>
          <div id="tabs" class="customtab-wrapper">
            <ul class='customtab-inner'>
              <li class='tab'><a href="#tab-furnitur">Laptop Gaming</a></li>
              <li class='tab'><a href="#tab-livin">Laptop đồ họa</a></li>
              <li class='tab'><a href="#tab-kitche">Laptop văn phòng</a></li>
            </ul>
          </div>
        </div>
        <!-- tab-furniture-->
        <div id="tab-furnitur" class="tab-content">
          <div class="row">
              <% for(Product product:productDAO.getListProductByCategory(1001)){ %> 
            <div class="product-layout  product-grid  col-lg-3 col-md-4 col-sm-6 col-xs-12">
                          <div class="item">
                            <div class="product-thumb">
                              <div class="image product-imageblock"> <a href="product.jsp?product_ID=<%=product.getProductID() %>"> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> </a>
                                <ul class="button-group">
                                    <a href="CartServlet?command=plus&product_ID=<%=product.getProductID() %>&cartID=<%=System.currentTimeMillis() %>" ><button type="button" class="addtocart-btn" title="Thêm vào giỏ hàng"  > Thêm vào giỏ hàng </button></a>
                                </ul>
                              </div>
                              <div class="caption product-detail">
                                <h4 class="product-name"><a href="product.jsp?product_ID=<%=product.getProductID() %>" title="<%=product.getProductName() %>"><%=product.getProductName() %></a></h4>
                                <p class="price product-price"><%=formatter.format(product.getProductPrice()) %> VNĐ<span class="price-tax">Ex Tax: $100.00</span></p>
                              </div>
                            </div>
                          </div>
                        </div>
              <%} %>
            <div class="viewmore">
              <div class="btn"><a href="category.jsp?category_ID=1001&sortby=all"> Xem tất cả sản phẩm</a></div>
            </div>
          </div>
        </div>
        <!-- tab-living-->
        <div id="tab-livin" class="tab-content">
          <div class="row">
              <% for(Product product:productDAO.getListProductByCategory(1002)){ %>
            <div class="product-layout  product-grid  col-lg-3 col-md-4 col-sm-6 col-xs-12">
              <div class="item">
                <div class="product-thumb">
                  <div class="image product-imageblock"> <a href="product.jsp?product_ID=<%=product.getProductID() %>"> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> </a>
                    <ul class="button-group">
                        <a href="CartServlet?command=plus&product_ID=<%=product.getProductID() %>&cartID=<%=System.currentTimeMillis() %>" ><button type="button" class="addtocart-btn" title="Thêm vào giỏ hàng"  > Thêm vào giỏ hàng </button></a>
                    </ul>
                  </div>
                  <div class="caption product-detail">
                    <h4 class="product-name"><a href="product.jsp?product_ID=<%=product.getProductID() %>" title="Casual Shirt With Ruffle Hem"><%=product.getProductName() %></a></h4>
                    <p class="price product-price"><%=formatter.format(product.getProductPrice()) %> VNĐ<span class="price-tax">Ex Tax: $100.00</span></p>
                  </div>
                </div>
              </div>
            </div>
            <%}%>
            <div class="viewmore">
                <div class="btn"><a href="category.jsp?category_ID=1002&sortby=all" >Xem tất cả sản phẩm</a></div>
            </div>
          </div>
        </div>
        <!-- tab-living-->
        <div id="tab-kitche" class="tab-content">
          <div class="row">
              <% for(Product product:productDAO.getListProductByCategory(1003)){ %>
            <div class="product-layout  product-grid  col-lg-3 col-md-4 col-sm-6 col-xs-12">
              <div class="item">
                <div class="product-thumb">
                  <div class="image product-imageblock"> <a href="product.jsp?product_ID=<%=product.getProductID() %>"> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="iPod Classic" class="img-responsive" /> </a>
                    <ul class="button-group">
                        <a href="CartServlet?command=plus&product_ID=<%=product.getProductID() %>&cartID=<%=System.currentTimeMillis() %>" ><button type="button" class="addtocart-btn" title="Thêm vào giỏ hàng"  > Thêm vào giỏ hàng </button></a>
                    </ul>
                  </div>
                  <div class="caption product-detail">
                    <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                    <h4 class="product-name"><a href="product.jsp?product_ID=<%=product.getProductID() %>" title="Casual Shirt With Ruffle Hem"><%=product.getProductName() %></a></h4>
                    <p class="price product-price"><%=formatter.format(product.getProductPrice()) %> VNĐ<span class="price-tax">Ex Tax: $100.00</span></p>
                  </div>
                </div>
              </div>
            </div>
                  <%}%>
            <div class="viewmore">
                <div class="btn"><a href="category.jsp?category_ID=1002&sortby=all" >Xem tất cả sản phẩm</a></div>
            </div>
          </div>
        </div>
      </div>
    </body>
</html>
