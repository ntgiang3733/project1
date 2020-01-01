<%-- 
    Document   : checkout
    Created on : Dec 12, 2019, 1:32:21 PM
    Author     : GD
--%>

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
        <title>checkout</title>
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
            if(session.getAttribute("email")==null){
                response.sendRedirect("/Project/login.jsp");
            }else{
                String email=(String)session.getAttribute("email");
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
            <h1>Đăng nhập</h1>
            <ul>
              <li><a href="index.jsp">Trang chủ</a></li>
              <li><a href="#">Tài khoản</a></li>
              <li><a href="#">Đăng nhập</a></li>
            </ul>
         </div>
        <form action="CheckoutServlet" method="post" >
        <div class="container">
            <div class="panel panel-default">
                      <input type="text" class="form-control" id="input-payment-firstname" placeholder="Tên" value="" name="Tên">
                      <input type="text" class="form-control" id="input-payment-firstname" placeholder="Địa chỉ" value="" name="address">
                      <div class="panel-body">  
                        <p>Chọn phương thức thanh toán</p>
                        <div class="radio">
                          <label style="display:block">
                            <input type="radio" checked="checked" value="thanh toán khi giao hàng" name="payment">
                          Thanh toán khi giao hàng </label>
                          <label>
                            <input type="radio" checked="checked" value="thanh toán online" name="payment">
                          Thanh toán Online </label>
                        </div>
                      </div>
                      <input type="hidden" value="<%=session.getAttribute("email") %>" />
                  </div>
                   <table class="table table-bordered table-hover">
                            <thead>
                              <tr>
                                <td class="text-left"></td>
                                <td class="text-left">Sản phẩm</td>
                                <td class="text-left">Mã sản phẩm</td>
                                <td class="text-right">Số lượng</td>
                                <td class="text-right"></td>
                                <td class="text-right">Giá</td>
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
                                    <p><a class="btn btn-default" href="CartServlet?command=plus&product_ID=<%=list.getValue().getProduct().getProductID() %>&cartID=<%=System.currentTimeMillis() %>">+</a></p>
                                    <div><a class="btn btn-default" href="CartServlet?command=sub&product_ID=<%=list.getValue().getProduct().getProductID() %>&cartID=<%=System.currentTimeMillis() %>"> - </a></div>
                                    <div><a class="btn btn-default" href="CartServlet?command=remove&product_ID=<%=list.getValue().getProduct().getProductID() %>">x</a></div>
                                    </div></td>
                                <td class="text-right"><%=formatter.format(list.getValue().getProduct().getProductPrice()) %> VNĐ/máy</td>
                                <td class="text-right"><%=formatter.format((list.getValue().getProduct().getProductPrice())*(list.getValue().getQuantity())) %> VNĐ</td>
                                </tr>
                                <% } %>
                            </tbody>
                            <tfoot>
                              <tr>
                                <td class="text-right" colspan="4"><strong><%=email %></strong></td>
                                <td class="text-right">$1,000.00</td>
                              </tr>
                              <tr>
                                <td class="text-right" colspan="4"><strong>Flat Shipping Rate:</strong></td>
                                <td class="text-right">$5.00</td>
                              </tr>
                              <tr>
                                <td class="text-right" colspan="4"><strong>Total:</strong></td>
                                <td class="text-right">$1,005.00</td>
                              </tr>
                            </tfoot>
                          </table>
                    <input type="submit" data-loading-text="Loading..." class="btn btn-primary" id="button-confirm" value="Đặt hàng">            
        </div>
        </form>
            
        <jsp:include page="footer.jsp"></jsp:include>
        <% } %>
        <script src="javascript/jquery.parallax.js"></script> 
        <script>
            jQuery(document).ready(function ($) {
                $('.parallax').parallax();
            });
        </script>
    </body>
</html>
