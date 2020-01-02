import React from 'react';

function FooterTop() {
  return (
    <div className="footer-top-cms parallax-container">
    <div className="parallax"><img src="../image/Backgound.jpg" alt="#" /></div>
    <div className="container">
      <div className="row">
        <div className="newslatter">
          <form>
            <h5>ĐĂNG KÝ ĐỂ NHẬN ĐƯỢC THÔNG TIN MỚI NHẤT</h5>
            <h4 className="title-subline">Hãy luôn theo dõi để biết những cập nhật về sản phẩm mới nhất từ chúng tôi</h4>
            <div className="input-group">
              <input type="text" className=" form-control" placeholder="nguyenvana@gmail.com" />
              <button type="submit" value="Sign up" className="btn btn-large btn-primary">Đăng ký</button>
            </div>
          </form>
        </div>
        <div className="footer-social">
          <ul>
            <li className="facebook"><a href="https://www.facebook.com/groups/soict/"><i className="fa fa-facebook" /></a></li>
            <li className="linkedin"><a href=".."><i className="fa fa-linkedin"></i></a></li>
            <li className="twitter"><a href=".."><i className="fa fa-twitter" /></a></li>
            <li className="gplus"><a href=".."><i className="fa fa-google-plus" /></a></li>
            <li className="youtube"><a href=".."><i className="fa fa-youtube-play" /></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  );
}

export default FooterTop;
