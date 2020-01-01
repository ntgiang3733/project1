<%-- 
    Document   : ad-editproduct
    Created on : Dec 13, 2019, 12:18:41 AM
    Author     : GD
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad editproduct</title>
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
            ProductDAO productDAO=new ProductDAO();
            long product_ID=0;
            if(request.getParameter("product_ID")!=null){
                product_ID=(long)Long.parseLong(request.getParameter("product_ID"));
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###"); 
            
            
            
            
            String product_name="",category_id="",product_price="",product_description="";
            if(request.getAttribute("product_name")!=null){
                product_name=(String)request.getAttribute("product_name");
            }
            if(request.getAttribute("category_id")!=null){
                category_id=(String)request.getAttribute("category_id");
            }
            if(request.getAttribute("product_price")!=null){
                product_price=(String)request.getAttribute("product_price");
            }
            if(request.getAttribute("product_description")!=null){
                product_description=(String)request.getAttribute("product_description");
            }
            
        %>
        <jsp:include page="ad-header.jsp"></jsp:include>
        <div class="breadcrumb parallax-container">
            <div class="parallax" ><img src="../img/bannercategory.jpg" alt="#"></div>
          <h1>CHỈNH SỬA SẢN PHẨM</h1>
        </div>
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center">Mã SP</td>
                <td class="text-center">Hình ảnh</td>
                <td class="text-center">Tên sp</td>
                <td class="text-center">Mã danh mục</td>
                <td class="text-center">Giá sp</td>
                <td class="text-center">Mô tả</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                  <td class="text-center"><%=productDAO.getProduct(product_ID).getProductID() %></td>
                <td class="text-center" style="width:40ex"><a href=""><img class="image product-imageblock" title="iPhone" alt="iPhone" src="${root}/image/product/<%=productDAO.getProduct(product_ID).getProductImage() %>"></a></td>
                <td class="text-center"><a href="product.html"><%=productDAO.getProduct(product_ID).getProductName() %></a></td>
                <td class="text-center"><a href="product.html"><%=productDAO.getProduct(product_ID).getCategoryID() %></a></td>
                <td class="text-center"><%=formatter.format(productDAO.getProduct(product_ID).getProductPrice()) %> VNĐ</td>
                <td class="text-center"><%=productDAO.getProduct(product_ID).getProductDescription() %></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="container">
            <div class="row">
              <div class="col-sm-9" id="content">
                <form action="/Project1/EditProductServlet" method="post"  >
                    <legend>Nhập thông tin cần thay đổi</legend>
                    <div class="form-group required">
                      <label for="input-email" class="col-sm-2 control-label">Mã danh mục</label>
                      <div class="col-sm-10">
                          <p style="color: red" ></p>
                          <input type="text" class="form-control" id="input-email" placeholder="<%=productDAO.getProduct(product_ID).getCategoryID() %>" value="" name="category_id">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Tên sp</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-firstname" placeholder="<%=productDAO.getProduct(product_ID).getProductName() %>" value="" name="product_name">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Giá sp</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-telephone" placeholder="<%=productDAO.getProduct(product_ID).getProductPrice() %>" value="" name="product_price">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Mô tả</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-telephone" placeholder="<%=productDAO.getProduct(product_ID).getProductDescription() %>" value="" name="product_description">
                      </div>
                    </div>
                      <input type="hidden" name="command" value="edit">
                        <input type="hidden" name="product_ID" value="<%=request.getParameter("product_ID")%>">
                          <div><button type="submit" class="btn btn-primary">Hoàn tất</button></div>
                    <p style="color: red" >  </p>
                </form>
              </div>
            </div>
        </div>
    </body>
</html>
