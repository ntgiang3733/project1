<%-- 
    Document   : product
    Created on : Dec 12, 2019, 7:51:04 AM
    Author     : GD
--%>

<%@page import="prj.project1.model.Product"%>
<%@page import="prj.project1.model.Cart"%>
<%@page import="prj.project1.dao.CategoryDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product</title>
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
            ProductDAO productDAO=new ProductDAO();
            long product_ID=0;
            if(request.getParameter("product_ID")!=null){
                product_ID=(long)Long.parseLong(request.getParameter("product_ID"));
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###"); 
            CategoryDAO categoryDAO=new CategoryDAO();
            Cart cart=(Cart)session.getAttribute("cart");
            if(cart==null){
                cart=new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="breadcrumb parallax-container">
            <div class="parallax"><img src="image/prlx1.jpg" alt="#"></div>
            <h1>Sản Phẩm</h1>
            <ul>
              <li><a href="index.jsp">Trang chủ</a></li>
              <li><a href="category.jsp?category_ID=1000&sortby=#">Sản phẩm</a></li>
              <li><a href="#"><%=productDAO.getProduct(product_ID).getProductName() %></a></li>
            </ul>
          </div>
          <div class="container">
            <div class="row">
              <div class="content col-sm-12">
                <div class="row">
                  <div class="col-sm-5">
                    <div class="thumbnails">
                      <div><a class="thumbnail fancybox" href="image/product/<%=productDAO.getProduct(product_ID).getProductImage() %>" title="Casual Shirt With Ruffle Hem"><img src="image/product/<%=productDAO.getProduct(product_ID).getProductImage() %>"  /></a></div>
                      <div id="product-thumbnail" class="owl-carousel">
                        <%for(int i=1;i<8;i++){ %><div class="item">
                          <div class="image-additional"><a class="thumbnail fancybox" href="image/product/<%=productDAO.getProduct(product_ID).getProductImage() %>" > <img src="image/product/<%=productDAO.getProduct(product_ID).getProductImage() %>"  /></a></div>
                        </div><%} %>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-7 prodetail">
                    <h1 class="productpage-title"><%=productDAO.getProduct(product_ID).getProductName() %></h1>
                    <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i><i class="fa fa-star fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span><span class="riview"><a href="#">10.000 lượt xem</a> / <a href="#">5.678 đánh giá</a></span> </div>
                    <ul class="list-unstyled productinfo-details-top">
                      <li>
                        <h2 class="productpage-price"><%=formatter.format(productDAO.getProduct(product_ID).getProductPrice()) %> VNĐ</h2>
                      </li>
                    </ul>
                    <hr>
                    <ul class="list-unstyled product_info">
                      <li>
                        <label>Thương hiệu:</label>
                        <span> <a href="#">Apple</a></span></li>
                      <li>
                        <label>Product ID:</label>
                        <span><%=productDAO.getProduct(product_ID).getProductID() %></span></li>
                      <li>
                        <label>Tình trạng:</label>
                        <span> Còn hàng</span></li>
                    </ul>
                    <hr>
                    <p class="product-desc"> <%=productDAO.getProduct(product_ID).getProductDescription() %> </p>
                    <div id="product">
                      <div class="form-group">
                        <div class="row">
                          <div class="Sort-by col-md-6">
                            <label>Core </label>
                            <select id="select-by-size" class="selectpicker form-control">
                              <option value="#" selected="selected">i5</option>
                              <option value="#">i5</option>
                              <option value="#">i7</option>
                            </select>
                          </div>
                          <div class="Color col-md-6">
                            <label>RAM</label>
                            <select id="select-by-color" class="selectpicker form-control">
                              <option value="#" selected="selected">8GB</option>
                              <option value="#">16GB</option>
                              <option value="#">32BG</option>
                              <option value="#">64BG</option>
                            </select>
                          </div>
                        </div>
                        <div class="qty">
                          <label>SL</label>
                          <input id="qty" placeholder="1" type="number">
                          <ul class="button-group list-btn">
                            <li>
                              <button type="button" class="wishlist" data-toggle="tooltip" data-placement="top" title="Thêm vào danh sách yêu thích" ><i class="fa fa-heart-o"></i></button>
                            </li>
                            <li>
                                <a href="CartServlet?command=plus&product_ID=<%=productDAO.getProduct(product_ID).getProductID() %>&cartID=<%=System.currentTimeMillis() %>" ><button type="button" class="addtocart-btn" data-toggle="tooltip" data-placement="top" title="Thêm vào giỏ"  ><i class="fa fa-shopping-bag"></i></button></a>
                            </li>
                            <li>
                              <button type="button" class="compare" data-toggle="tooltip" data-placement="top" title="So sánh sảnh phẩm" ><i class="fa fa-exchange"></i></button>
                            </li>
                            <li>
                              <button type="button" class="quick-view" data-toggle="tooltip" data-placement="top" title="Xem nhanh" ><i class="fa fa-eye"></i></button>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="productinfo-tab">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab-description" data-toggle="tab">Miêu tả</a></li>
                    <li><a href="#tab-review" data-toggle="tab">Đánh giá</a></li>
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab-description">
                      <div class="cpt_product_description ">
                        <div>
                          <p> <strong>Chíp đồ họa khủng</strong></p>
                          <p> Chip GTX 1080ti VGA 234fda</p>
                          <p> <strong>Dung lượng RAM khủng</strong></p>
                          <p> Dung lượng RAM tối đa lên đến tận 128GB</p>
                          <p> <strong>Thiết kế sành điệu</strong></p>
                          <p> Với từng đường nết uyển chuyển mềm mại đem lại thiết kế rất tinh tế và lịch sự</p>
                          <p> <strong>Mỏng nhẹ</strong></p>
                          <p> Với thiết kế tối ưu phù hợp với các chuyến công tác máy chỉ có khối lượng 1,5kg</p>
                        </div>
                      </div>
                      <!-- cpt_container_end --></div>
                    <div class="tab-pane" id="tab-review">
                      <form class="form-horizontal">
                        <div id="review"></div>
                        <h2>Write a review</h2>
                        <div class="form-group required">
                          <div class="col-sm-12">
                            <label class="control-label" for="input-name">Tên của bạn</label>
                            <input type="text" name="name" value="" id="input-name" class="form-control" />
                          </div>
                        </div>
                        <div class="form-group required">
                          <div class="col-sm-12">
                            <label class="control-label" for="input-review">Đánh giá của bạn</label>
                            <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                            <div class="help-block"><span class="text-danger">Chú ý:</span> Không xác định được</div>
                          </div>
                        </div>
                        <div class="form-group required">
                          <div class="col-sm-12">
                            <label class="control-label">Xếp hạng</label>
                            &nbsp;&nbsp;&nbsp; Bad&nbsp;
                            <input type="radio" name="rating" value="1" />
                            &nbsp;
                            <input type="radio" name="rating" value="2" />
                            &nbsp;
                            <input type="radio" name="rating" value="3" />
                            &nbsp;
                            <input type="radio" name="rating" value="4" />
                            &nbsp;
                            <input type="radio" name="rating" value="5" />
                            &nbsp;Tốt</div>
                        </div>
                        <div class="buttons clearfix">
                          <div class="pull-right">
                            <button type="button" id="button-review" data-loading-text="Loading..." class="btn btn-primary">Tiếp tục</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <h3 class="productblock-title">Sản phẩm cùng loại</h3>
                <h4 class="title-subline">Có gì đặc biệt!Xem ngay.</h4>
                <div class="box">
                  <div id="related-slidertab" class="row owl-carousel product-slider">
                    <% for(Product product:productDAO.getListProductByCategory(productDAO.getProduct(product_ID).getCategoryID())){ %>
                      <div class="item">
                      <div class="product-thumb transition">
                        <div class="image product-imageblock"> <a href="product.jsp?product_ID=<%=product.getProductID() %>">
                          <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="<%=product.getProductName() %>" class="img-responsive" />
                          <img src="image/product/<%=product.getProductImage() %>" alt="iPod Classic" title="<%=product.getProductName() %>" class="img-responsive" />
                          </a>
                          <ul class="button-group">
                              <button title="Add to Cart" class="addtocart-btn" type="button">Add to Cart</button>
                          </ul>
                        </div>
                        <div class="caption product-detail">
                          <h4 class="product-name"><a href="product.jsp?product_ID=<%=product.getProductID() %>" title="<%=product.getProductName() %>"><%=product.getProductName() %></a></h4>
                          <p class="price product-price"><%=formatter.format(product.getProductPrice()) %> VNĐ</p>
                        </div>
                      </div>
                    </div>
                      <%}%>
                  </div>
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
