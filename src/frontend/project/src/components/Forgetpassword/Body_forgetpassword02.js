
import React,{Component} from 'react'


class Body_forgetpassword02 extends Component {
    render() {
        return(
            <div>
            <div className="container">
              <div className="row">
                <div className="col-sm-3 hidden-xs column-left" id="column-right">
                  <div className="recentpost left-sidebar-widget">
                    <div className="columnblock-title">Liên kết</div>
                    <div className="category_block">
                      <ul className="box-category">
                        <li><a href="/dang-nhap">Đăng nhập</a></li>
                        <li><a href="/dang-ky">Đăng ký</a></li>
                        <li><a href="/quen-mat-khau">Quên mật khẩu</a></li>
                        <li><a href="..">Tài khoản của tôi</a></li>
                        <li><a href="..">Phương thức thanh toán</a></li>
                        <li><a href="..">Theo dõi liên kết</a></li>
                        <li><a href="..">Thanh toán</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div id="content" className="col-sm-9">
                  <h1>Quên mật khẩu?</h1>
                  <p>Nhập địa chỉ email liên kết với tài khoản của bạn. Nhấp vào gửi để gửi mật khẩu của bạn qua email cho bạn</p>
                  <form action="forgotten" method="post" encType="multipart/form-data" className="form-horizontal">
                    <fieldset>
                      <legend>Địa chỉ Email của bạn</legend>
                      <div className="form-group required">
                        <label className="col-sm-2 control-label" htmlFor="input-email">Địa chỉ Email</label>
                        <div className="col-sm-10">
                          <input type="text" name="email"  placeholder="mao.ng175642@sis.hust.edu.vn" id="input-email" className="form-control" />
                        </div>
                      </div>
                    </fieldset>
                    <div className="buttons clearfix">
                      <div className="pull-left"><a href="login.html" className="btn btn-default">Quay lại</a></div>
                      <div className="pull-right">
                        <input type="submit" defaultValue="Tiếp tục" className="btn btn-primary" />
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
           
          </div>
        
        );
    }
}

export default Body_forgetpassword02
