import React from 'react';

function Body_login2() {
  return (
    <div className="container">
        <div className="row">
          <div className="col-sm-3 hidden-xs column-left" id="column-left">
            <div className="Categories left-sidebar-widget">
              <div className="columnblock-title">Tài khoản</div>
              <div className="category_block">
                <ul className="box-category">
                  <li><a href="login.html">Đăng nhập</a></li>
                  <li><a href="register.html">Đăng ký</a></li>
                  <li><a href="forgetpassword.html">Quên mật khẩu</a></li>
                  <li><a href="..">Tài khoản </a></li>
                  <li><a href="..">Danh sách yêu thích</a></li>
                  <li><a href="..">Lịch sử mua hàng</a></li>
                  <li><a href="..">Tải xuống</a></li>
                  <li><a href="..">Điểm thưởng</a></li>
                  <li><a href="..">Giao dịch</a></li>
                  <li><a href="..">Quay lại</a></li>          
                </ul>
              </div>
            </div>
          </div>
          <div className="col-sm-9" id="content">
            <div className="row">
              <div className="col-sm-6">
                <h2>Khách hàng mới</h2>
                <p>Tùy chọn thanh toán:</p>
                <div className="radio">
                  <label>
                    <input type="radio" name="account" defaultValue="register" defaultChecked="checked" />
                    Đăng ký tài khoản</label>
                </div>
                <div className="radio">
                  <label>
                    <input type="radio" name="account" defaultValue="guest" />Thanh toán khách</label>
                </div>
                <p>Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh hơn, cập nhật trạng thái của đơn hàng và theo dõi các đơn hàng bạn đã thực hiện trước đó.</p>
                <input type="button" defaultValue="Tiếp tục" id="button-account" data-loading-text="Loading..." className="btn btn-primary" />
              </div>
              <div className="col-sm-6">
                <h2>Phản hồi của khách hàng</h2>
                <p>Tôi là khách hàng cũ</p>
                <div className="form-group">
                  <label className="control-label" htmlFor="input-email">E-Mail</label>
                  <input type="text" name="email"  placeholder=" your E-Mail" id="input-email" className="form-control" />
                </div>
                <div className="form-group">
                  <label className="control-label" htmlFor="input-password">Mật khẩu</label>
                  <input type="password" name="password"  placeholder="Password" id="input-password" className="form-control" />
                  <a href="forgetpassword.html" className="forgot">Quên mật khẩu</a></div>
                <input type="button" defaultValue="Đăng nhập" id="button-login" data-loading-text="Loading..." className="btn btn-primary" />
              </div>
            </div>
          </div>
        </div>
      </div>
  );
}

export default Body_login2;
