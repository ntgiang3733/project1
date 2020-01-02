<%-- 
    Document   : ad-bill
    Created on : Nov 29, 2019, 1:17:08 AM
    Author     : GD
--%>

<%@page import="prj.project1.dao.UsersDAO"%>
<%@page import="prj.project1.model.Bill"%>
<%@page import="prj.project1.dao.BillDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ad-account</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="e-commerce site well design with responsive view." />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="${root}/image/favicon.png" rel="icon" type="image/png" >
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
        <script src="<c:url value="/javascript/jquery.parallax.js" />"></script>
        <script>
            jQuery(document).ready(function (${root}) {
                $('.parallax').parallax();
            });
        </script>
    </head>
    <body>
        <%
            
            UsersDAO ud=new UsersDAO();
            BillDAO bd= new BillDAO();
            
        %>
        <jsp:include page="ad-header.jsp"></jsp:include>
        <legend>QL HÓA ĐƠN</legend>
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center">Mã hóa đơn</td>
                <td class="text-center">Khách hàng</td>
                <td class="text-center">Tổng hóa đơn</td>
                <td class="text-center">Hình thức thanh toán</td>
                <td class="text-center">Địa chỉ</td>
                <td class="text-center">Ngày mua</td>
                <td class="text-center"></td>
              </tr>
            </thead>
            <% for(Bill b:bd.getListBill() ){ %>
            <tbody>
              <tr>
                <td class="text-center"><%=b.getBillID() %></td>
                <td class="text-center"><%=ud.getUser(b.getID()).getName() %></td>
                <td class="text-center"><a href="product.html"><%=b.getTotal() %></a></td>
                <td class="text-center"><%=b.getPayment() %></td>
                <td class="text-center"><%=b.getAddress() %></td>
                <td class="text-center"><%=b.getDate() %></td>
                <td class="text-center" ><a href="/Project/AdminAccountServlet?user_ID= ">Xóa</a></td>
              </tr>
            </tbody><% } %>
          </table>
        </div>
          
    </body>
</html>