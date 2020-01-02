import React,{Component} from 'react'

class Menu extends Component {
    render() {
        return(
            <nav id="menu" className="navbar">
  <div className="nav-inner">
    <div className="navbar-header"><span id="category" className="visible-xs">Thể loại</span>
      <button type="button" className="btn btn-navbar navbar-toggle" ><i className="fa fa-bars"></i></button>
    </div>
    <div className="navbar-collapse">
      <ul className="main-navigation">
        <li><a href=".."   className="parent"  >Trang chủ</a> </li>
        <li><a href="/Laptopgaming"   className="parent"  >Laptop gaming</a> </li>
        <li><a href="/Laptopgaming"   className="parent"  >laptop đồ họa</a> </li>
        <li><a href="/Laptopgaming"   className="parent"  >laptop văn phòng</a> </li>
        <li><a  className="active parent">Danh mục</a>
          <ul>
            <li><a href="thanh-toan">Thanh toán</a></li>
            <li><a href="..">Hệ thống showroom</a></li>
            <li><a href="/gio-hang">Giỏ hàng</a></li>
            <li><a href="/quen-mat-khau">Quên mật khẩu</a></li>
          </ul>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
        );
    }
}

export default Menu