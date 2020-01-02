import React,{Component} from 'react'


class Body_register02 extends Component {
    render() {
        return(
          <div className="container">
          <div className="row">
            <div className="col-sm-3 hidden-xs column-left" id="column-left">
              <div className="Categories left-sidebar-widget">
                <div className="columnblock-title">Phụ lục</div>
                <div className="category_block">
                  <ul className="box-category">
                    <li><a href="/dang-nhap">Đăng nhập</a></li>
                    <li><a href="/dang-ky">Đăng ký</a></li>
                    <li><a href="..">Quên mật khẩu</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div className="col-sm-9" id="content">
              <p>Nếu đã có tài khoản xin hãy đăng nhập <a href="/dang-nhap">Đăng nhập</a>.</p>
              <form className="form-horizontal" encType="multipart/form-data" method="post" action="..">
                <fieldset id="account">
                  <legend>Thông tin cá nhân</legend>
                  <div className="form-group required">
                    <label htmlFor="input-firstname" className="col-sm-2 control-label">Tên</label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-firstname" placeholder="Tên"  name="Tên" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-lastname" className="col-sm-2 control-label">Họ và tên đệm</label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-lastname" placeholder="Họ và tên đệm"  name="Họ và tên đệm" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-email" className="col-sm-2 control-label">E-Mail</label>
                    <div className="col-sm-10">
                      <input type="email" className="form-control" id="input-email" placeholder="E-Mail"  name="email" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-telephone" className="col-sm-2 control-label">Số điện thoại</label>
                    <div className="col-sm-10">
                      <input type="tel" className="form-control" id="input-telephone" placeholder="Số điện thoại"  name="Sô điện thoại" />
                    </div>
                  </div>
                  
                </fieldset>
                <fieldset id="address">
                  <legend>Địa chỉ</legend>
                  <div className="form-group">
                    <label htmlFor="input-company" className="col-sm-2 control-label">Công ty</label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-company" placeholder="Công ty" name="company" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-address-1" className="col-sm-2 control-label">Địa chỉ thường trú</label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-address-1" placeholder="Sô x-Đường-y "  name="Địa chỉ" />
                    </div>
                  </div>
                  
                  <div className="form-group required">
                    <label htmlFor="input-zone" className="col-sm-2 control-label">Thành phố</label>
                    <div className="col-sm-10">
                    <select className="form-control" id="input-zone" name="zone_id">
                        <option value> --- Chọn --- </option>
                        <option value={3513}>Hà Nội </option>
                        <option value={3514}>Hồ Chí Minh</option>
                        <option value={3515}>Đà Nẵng</option>
                        <option value={3516}>Hải Phòn</option>
                        <option value={3517}>Cần Thơ</option>
                        <option value={3518}>Bình Dương</option>
                        <option value={3519}>Thanh Hóa</option>
                        <option value={3520}>Nghệ An</option>
                        <option value={3521}>Vinh</option>
                        <option value={3522}>Hải Dương</option>
                       
                      </select>
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-zone" className="col-sm-2 control-label">Quận/Huyện</label>
                    <div className="col-sm-10">
                      <select className="form-control" id="input-zone" name="zone_id">
                        <option value> --- Chọn --- </option>
                        <option value={3513}>Thanh Xuân </option>
                        <option value={3514}>Ba Đình</option>
                        <option value={3515}>Hoàng Mai</option>
                        <option value={3516}>Hai Bà Trưng</option>
                        <option value={3517}>Thanh Trì</option>
                        <option value={3518}>Đông Anh</option>
                        <option value={3519}>Sóc Sơn</option>
                        <option value={3520}>Mê Linh</option>
                        <option value={3521}>Hoàn Kiếm</option>
                        <option value={3522}>Tây Hồ</option>
                       
                      </select>
                    </div>
                  </div>
                </fieldset>
                <fieldset>
                  <legend>Mật khẩu</legend>
                  <div className="form-group required">
                    <label htmlFor="input-password" className="col-sm-2 control-label">Mật khẩu</label>
                    <div className="col-sm-10">
                      <input type="password" className="form-control" id="input-password" placeholder="Mật khẩu"  name="password" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-confirm" className="col-sm-2 control-label">Nhập lại mật khẩu</label>
                    <div className="col-sm-10">
                      <input type="password" className="form-control" id="input-confirm" placeholder="Nhập lại mật khẩu"  name="confirm" />
                    </div>
                  </div>
                </fieldset>
                <fieldset>
                  <legend>Xác nhận</legend>
                  <div className="form-group">
                    <label className="col-sm-2 control-label">Đăng ký</label>
                    <div className="col-sm-10">
                      <label className="radio-inline">
                        <input type="radio" defaultValue={1} name="newsletter" />
                        Đồng ý</label>
                      <label className="radio-inline">
                        <input type="radio" defaultChecked="checked" defaultValue={0} name="newsletter" />
                        Không</label>
                    </div>
                  </div>
                </fieldset>
                <div className="buttons">
                  <div className="pull-right">Tôi đã đọc và đồng ý với tất cả các điều khoản <a className="agree" href="/"><b>Xác nhận</b></a>
                    <input type="checkbox" defaultValue={1} name="agree" />
                    &nbsp;
                    <input type="submit" className="btn btn-primary" href="/"/>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        );
    }
}

export default Body_register02
