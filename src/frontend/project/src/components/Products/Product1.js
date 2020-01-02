import React from 'react';

function Product1() {
  return (
    <div className="container">
        <div className="cms_banner">
          <div className="row">
            <div className="col-xs-12 col-sm-4 col-md-4">
              <div className="banner sub-hover">
                <a href=".."><img src="../image/macbook-pro-2019-6.png" alt="MACBOOK" className="img-responsive" /></a>
                <div className="bannertext">
                  <h2 style={{color: 'white'}}>MacBook </h2>
                  <p style={{color: 'white'}}>Laptop đồ họa</p>
                  <button className="btn">Xem ngay</button>
                </div>        
              </div>
            </div>
            <div className="col-xs-12 col-sm-4 col-md-4">
              <div className="banner sub-hover">
                <a href=".."><img src="../image/laptop-g-series-g5-15-5590-dell.jpg" alt="DELL" className="img-responsive" /></a>
                <div className="bannertext">
                  <h2 style={{color: 'white'}}>DELL</h2>
                  <p style={{color: 'white'}}>Laptop Gaming</p>
                  <button className="btn">Xem ngay</button>
                </div>            
              </div>
            </div>
            <div className="col-xs-12 col-sm-4 col-md-4">
              <div className="banner sub-hover">
                <a href=".."><img src="../image/ASUS-VivoBook-14-A412.jpg" alt="ASUS" className="img-responsive" /></a>
                <div className="bannertext">
                  <h2 style={{color: 'white'}}>ASUS</h2>
                  <p style={{color: 'white'}}>Laptop Văn Phòng</p>
                  <button className="btn">Xem ngay</button>
                </div>        
              </div>
            </div>
          </div>
        </div>
      </div>
  );
}

export default Product1;
