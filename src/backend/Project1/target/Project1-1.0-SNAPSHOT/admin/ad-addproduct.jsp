<%-- 
    Document   : ad-addproduct
    Created on : Dec 13, 2019, 12:07:43 AM
    Author     : GD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad addproduct</title>
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
            String err="";
            if(request.getAttribute("err")!=null){
                err=(String)request.getAttribute("err");
            }
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
        <div class="container">
            <div class="row">
              <div class="col-sm-9" id="content">
                <form action="/Project/AddProductServlet" method="post"  >
                    <legend>Nhập thông tin sản phẩm</legend>
                    <div class="form-group required">
                      <label for="input-email" class="col-sm-2 control-label">Mã danh mục</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=err %></p>
                          <input type="text" class="form-control" id="input-email" placeholder="" value="" name="category_id">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Tên sp</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-firstname" placeholder="" value="" name="product_name">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Giá sp</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-telephone" placeholder="" value="" name="product_price">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Mô tả</label>
                      <div class="col-sm-10">
                          <p style="color: red" >  </p>
                          <input type="text" class="form-control" id="input-telephone" placeholder="" value="" name="product_description">
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
