<%-- 
    Document   : register
    Created on : Dec 12, 2019, 7:55:47 AM
    Author     : GD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
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
            String name_err="",email_err="",password_err="";
            if(request.getAttribute("name_err")!=null){
                name_err=(String)request.getAttribute("name_err");
            }
            if(request.getAttribute("email_err")!=null){
                email_err=(String)request.getAttribute("email_err");
            }
            if(request.getAttribute("password_err")!=null){
                password_err=(String)request.getAttribute("password_err");
            }
            
            String name="",email="",password="";
            if(request.getAttribute("name")!=null){
                name=(String)request.getAttribute("name");
            }
            if(request.getAttribute("email")!=null){
                email=(String)request.getAttribute("email");
            }
            if(request.getAttribute("password")!=null){
                password=(String)request.getAttribute("password");
            }
            String err="";
            if(request.getAttribute("err")!=null){
                err=(String)request.getAttribute("err");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="breadcrumb parallax-container">
            <div class="parallax"><img src="image/prlx1.jpg" alt="#"></div>
            <h1>Đăng ký tài khoản</h1>
            <ul>
              <li><a href="index.jsp">Trang chủ</a></li>
              <li><a href="#">Tài khoản</a></li>
              <li><a href="#">Đăng ký</a></li>
            </ul>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-sm-3 hidden-xs column-left" id="column-left">
                <div class="Categories left-sidebar-widget">
                  <div class="columnblock-title">Tài khoản</div>
                  <div class="category_block">
                    <ul class="box-category">
                      <li><a href="login.jsp">Đăng nhập</a></li>
                      <li><a href="register.jsp">Đăng ký</a></li>
                      <li><a href="#">Quên mật khẩu</a></li>
                      <li><a href="#">Tài khoản </a></li>
                      <li><a href="#">Danh sách yêu thích</a></li>
                      <li><a href="#">Lịch sử mua hàng</a></li>
                      <li><a href="#">Tải xuống</a></li>
                      <li><a href="#">Điểm thưởng</a></li>
                      <li><a href="#">Giao dịch</a></li>
                      <li><a href="#">Quay lại</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-sm-9" id="content">
                <p>Nếu bạn đã có tài khoản với chúng tôi, vui lòng đăng nhập tại <a href="login.jsp">Đăng nhập</a>.</p>
                <form action="RegisterServlet" method="post"  >
                  <fieldset id="account">
                    <legend>Thông tin cá nhân</legend>
                    <div class="form-group required">
                      <label for="input-firstname" class="col-sm-2 control-label">Tên</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=name_err %></p>
                        <input type="text" class="form-control" id="input-firstname" placeholder="Tên" value="" name="name">
                      </div>
                    </div>

                    <div class="form-group required">
                      <label for="input-email" class="col-sm-2 control-label">E-Mail</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=email_err %></p>
                        <input type="email" class="form-control" id="input-email" placeholder="E-Mail" value="" name="email">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-password" class="col-sm-2 control-label">Mật khẩu</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=password_err %></p>
                        <input type="password" class="form-control" id="input-password" placeholder="Mật khẩu" value="" name="password">
                      </div>
                    </div>
                    <div class="form-group required">
                      <label for="input-confirm" class="col-sm-2 control-label">Nhập lại mật khẩu</label>
                      <div class="col-sm-10">
                          <p style="color: red" ><%=password_err %></p>
                        <input type="password" class="form-control" id="input-confirm" placeholder="Nhập lại mật khẩu" value="" name="confirm">
                      </div>
                    </div>   
                  </fieldset>
                  <div class="buttons">
                    <div class="pull-right">Tôi đồng ý với tất cả điều khoản trên về <a class="agree" href="#"><b>Chính sách bảo mật</b></a>
                      <input type="checkbox" value="1" name="agree">
                      &nbsp;
                      <input type="submit" class="btn btn-primary" value="Tiếp tục">
                    </div>
                  </div>
                </form>
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
