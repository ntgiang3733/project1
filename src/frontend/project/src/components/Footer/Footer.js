import React,{Component} from 'react'

class Footer extends Component {
    render() {
        return(
<footer>
        <div className="cms_searvice">
          <div className="container">
            <div className="row">
              <div className="col-md-3 ">
                <div className="cms-block1 z-depth-5">
                  <h4>Giao hàng miến phí</h4>
                  <p>Giao hàng toàn quốc</p>
                </div>
              </div>
              <div className="col-md-3 ">
                <div className="cms-block2">
                  <h4>Đổi trả trong 30 ngày</h4>
                  <p>Uy tín-Chất lượng</p>
                </div>
              </div>
              <div className="col-md-3 ">
                <div className="cms-block3">
                  <h4>Tuy vấn 24/7</h4>
                  <p>Luôn luôn sẵn sàng</p>
                </div>
              </div>
              <div className="col-md-3 ">
                <div className="cms-block4">
                  <h4>Thanh toán Online </h4>
                  <p>Mọi lúc mọi nơi</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="container">
          <div className="row">
            <div className="col-sm-3 footer-block">
              <h5 className="footer-title">THÔNG TIN</h5>
              <ul className="list-unstyled ul-wrapper">
                <li><a href="html/index.html">Giới thiệu chung</a></li>
                <li><a href="1">Thông tin đơn hàng</a></li>
                <li><a href="2">Chính sách bảo mật</a></li>
                <li><a href="3">Điều khoản và điều kiện</a></li>
                <li><a href="4">Danh sách mong muốn</a></li>
                <li><a href="5">Phiếu quà tặng</a></li>
                <li><a href="6">Xem giỏ hàng</a></li>
                <li><a href="7">Lịch sử mua hàng</a></li>
              </ul>
            </div>
            <div className="col-sm-3 footer-block">
              <h5 className="footer-title">TÀI KHOẢN </h5>
              <ul className="list-unstyled ul-wrapper">
                <li><a href="./html/index.html">Liên hệ với chúng tôi</a></li>
                <li><a href="1">Tài khoản của tôi</a></li>
                <li><a href="2">Lịch sử mua hàng</a></li>
                <li><a href="3">Danh sách yêu thích</a></li>
                <li><a href="4">Bản tin</a></li>
                <li><a href="5">Phiếu quà tặng</a></li>
                <li><a href="6">Thương hiệu</a></li>
                <li><a href="7">Chi nhánh</a></li>
              </ul>
            </div>
            <div className="col-sm-3 footer-block">
              <h5 className="footer-title">TIỆN ÍCH</h5>
              <ul className="list-unstyled ul-wrapper">
                <li><a href="1">Thông tin đơn hàng</a></li>
                <li><a href="2">Chính sách bảo mật</a></li>
                <li><a href="3">Điều khoản và điều kiện</a></li>
                <li><a href="4">Liên hệ với chúng tôi</a></li>
                <li><a href="6">Sơ đồ web</a></li>
                <li><a href="5">Thu hồi sản phẩm</a></li>
                <li><a href="7">Phiếu quà tặng</a></li>
                <li><a href="8">Giúp đỡ và hỏi đáp</a></li>
                <li><a href="9">Bán trong ngày</a></li>
              </ul>
            </div>
            <div className="col-sm-3 footer-block">
              <div className="content_footercms_right">
                <div className="footer-contact">
                  <h5 className="contact-title footer-title">LIÊN HỆ</h5>
                  <ul className="ul-wrapper">
                    <li><i className="fa fa-map-marker" /><span className="location2">Đại chỉ:<br />
                        Trường đại học Bách Khoa Hà Nội<br />
                        Số 1, Đại Cồ Việt <br />
                        Hai Bà Trưng-Hà Nội</span></li>
                    <li><i className="fa fa-envelope" /><span className="mail2"><a href="2">mao.ng17xxxx@sis.hust.edu.vn</a><br />
                        <a href="1">giang.nt@17xxxxx@sis.hust.edu.vn</a></span></li>
                    <li><i className="fa fa-mobile" /><span className="phone2">+84 0987-654-321<br />
                        +84 0987-654-321</span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <div id="bottom-footer">
            <ul className="footer-link">
              <li><a href="../index.js">Trang chủ</a></li>
              <li><a href="2">Giới thiệu</a></li>
              <li><a href="3">Dịch vụ</a></li>
              <li><a href="4">Bộ phận</a></li>
              <li><a href="5">Giá cả</a></li>
              <li><a href="6">Giao tiếp</a></li>
            </ul>
            <div className="footer-bottom-cms">
              <div className="footer-payment">
                <ul>
                  <li className="mastero"><a href="1"><img alt="" src="image/payment/mastero.jpg" /></a></li>
                  <li className="visa"><a href="2"><img alt="" src="image/payment/visa.jpg" /></a></li>
                  <li className="currus"><a href="3"><img alt="" src="image/payment/currus.jpg" /></a></li>
                  <li className="discover"><a href="4"><img alt="" src="image/payment/discover.jpg" /></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </footer>
        );
    }
}

export default Footer