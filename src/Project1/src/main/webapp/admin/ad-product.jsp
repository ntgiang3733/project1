<%-- 
    Document   : ad-product
    Created on : Dec 12, 2019, 11:39:45 PM
    Author     : GD
--%>

<%@page import="prj.project1.model.Product"%>
<%@page import="prj.project1.model.Cart"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="prj.project1.dao.ProductDAO"%>
<%@page import="prj.project1.dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad product</title>
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
        <jsp:include page="ad-header.jsp"></jsp:include>
        <div class="panel">
            <div class="panel-heading">
                    <h3 class="panel-title">Quản lý sản phẩm</h3>
            </div>
            <div class="panel-body">
                <div class="pad-btm form-inline">
                        <div class="row">
                                <div class="col-sm-6 table-toolbar-left">
                                <a href="ad-addproduct.jsp">	<button id="demo-btn-addrow" class="btn btn-purple btn-labeled fa fa-plus">Thêm sản phẩm</button></a>
                                </div>
                        </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th style="width:4ex" class="text-center">IDP</th>
                                <th style="width:40ex" class="text-center">Tên sản phẩm</th>
                                <th style="width:40ex" class="text-center">Ảnh</th>
                                <th style="width:20ex" class="text-center">Mã danh mục</th>
                                <th style="width:20ex" class="text-right">Giá sản phẩm</th>
                                <td class="text-center">Mô tả</td>
                                <td style="width:30ex" class="text-center"></td>
                            </tr>
                        </thead>
                        <% for(Product product:productDAO.sortBy(category_ID, value )){ %>
                        <tbody>
                            <tr>
                                <td class="text-center"><%=product.getProductID() %></td>
                                <td class="text-center"><%=product.getProductName() %></td>
                                <td class="text-center"><a href="#"><img style="height: 150px;" class="img-thumbnail" title="iPhone" alt="iPhone" src="${root}/image/product/<%=product.getProductImage() %>"></a></td>
                                <td  class="text-center"><%=product.getCategoryID() %></td>
                                <td  class="text-center"><%=formatter.format(product.getProductPrice()) %> VNĐ</td>
                                <td  class="text-center"><%=product.getProductDescription() %></td>
                                <td class="text-right">
                                        <a class="btn btn-xs btn-default add-tooltip" data-toggle="tooltip" href="ad-editproduct.jsp?product_ID=<%=product.getProductID() %>" data-original-title="Edit" data-container="body"><i class="fa fa-pencil"></i></a>
                                        <a class="btn btn-xs btn-danger add-tooltip"  data-toggle="tooltip" href="/Project/EditProductServlet?command=delete&product_ID=<%=product.getProductID() %> " data-original-title="Delete" data-container="body"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                        </tbody><%} %>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
