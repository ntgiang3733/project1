import React from 'react';
import {BrowserRouter as Router, Link} from "react-router-dom";
function Header() {
  return (
    <div className="App">
       <div>
        <header  >
          <div className="header-top">
            <div className="container">
              <div className="row">
                <div className="col-sm-12">
                  <div className="top-left pull-left">
                    <div className="currency">
                      <form action="#" method="post" encType="multipart/form-data" id="currency">
                      </form>
                    </div>
                    <div className="wel-come-msg"> Chào mừng đến với Project Laptop </div>
                  </div>
                  <div className="top-right pull-right">
                    <div id="top-links" className="nav pull-right">
                    
                      <ul className="list-inline">
                        <li className="dropdown"><a href="Header.js" title="My Account" className="dropdown-toggle" data-toggle="dropdown"><i className="fa fa-user" aria-hidden="true" /><span>Tài khoản</span> <span className="caret" /></a>
                      
                          <ul className="dropdown-menu dropdown-menu-right">
                          <li><a href="/dang-ky">Đăng ký</a></li>
                          <li><Link to="/dang-nhap">Đăng nhập</Link></li> 
                          </ul>
                         
                        </li>
                        <li><a href=".." id="wishlist-total" title="Wish List (0)"><i className="fa fa-heart" aria-hidden="true" /><span>Danh sách yêu thích</span><span> (0)</span></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="container">
            <div className="header-inner">
              <div className="col-sm-3 col-xs-3 header-left">
                <div id="logo"> <a href=".."><img src="https://eastasia1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fhusteduvn-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!oL6EJtYbbUWvWD7mYofcDs-XaoC1N9hDn2on50u5JD9tknjA2_N0S7vQ8ztIPUse%2Fitems%2F012DW6JKQSRIKONFQHEZCJYC52G6244PHZ%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvaHVzdGVkdXZuLW15LnNoYXJlcG9pbnQuY29tQDA2ZjFiODlmLTA3ZTgtNDY0Zi1iNDA4LWVjMWI0NTcwM2YzMSIsImlzcyI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMCIsIm5iZiI6IjE1NzU4ODU3ODYiLCJleHAiOiIxNTc1OTA3Mzg2IiwiZW5kcG9pbnR1cmwiOiJqcm91YlZ3RDA5VzNkMERGYklvTmkrc2YyUTVpUE95Z2M1QWtXNHZLOVF3PSIsImVuZHBvaW50dXJsTGVuZ3RoIjoiMTE5IiwiaXNsb29wYmFjayI6IlRydWUiLCJjaWQiOiJPV0ZqTkRGbU9XWXRNREF6T0MxaE1EQXdMVFkyWlRVdE1qTTFNamMzWXpoaE5EbGoiLCJ2ZXIiOiJoYXNoZWRwcm9vZnRva2VuIiwic2l0ZWlkIjoiTWpZNE5HSmxZVEF0TVdKa05pMDBOVFprTFdGbU5UZ3RNMlZsTmpZeU9EZGtZekJsIiwic2lnbmluX3N0YXRlIjoiW1wia21zaVwiXSIsIm5hbWVpZCI6IjAjLmZ8bWVtYmVyc2hpcHxtYW8ubmcxNzU2NDJAc2lzLmh1c3QuZWR1LnZuIiwibmlpIjoibWljcm9zb2Z0LnNoYXJlcG9pbnQiLCJpc3VzZXIiOiJ0cnVlIiwiY2FjaGVrZXkiOiIwaC5mfG1lbWJlcnNoaXB8MTAwM2JmZmRhNWNkYThjN0BsaXZlLmNvbSIsInR0IjoiMCIsInVzZVBlcnNpc3RlbnRDb29raWUiOiIzIn0.K3hzWlZOOGlRTXNFWE4ycWE5enluTlYrOFdFNmJ0QVJpYWpHZnNuRWVNTT0&encodeFailures=1&srcWidth=&srcHeight=&width=120&height=63&action=Preview" style={{height: '100%'}} width="100%" title="E-Commerce" alt="Logo" className="img-responsive" /></a> </div>
              </div>
              <div className="col-sm-9 col-xs-9 header-right">
                <div id="search" className="input-group" >
                  <input type="text" name="search"  placeholder="Nhập từ khóa tìm kiếm ..." className="form-control input-lg" />
                  <span className="input-group-btn">
                    <button type="button" className="btn btn-default btn-lg"><span>Tìm kiếm</span></button>
                  </span> </div>
                <div id="cart" className="btn-group btn-block">
                  <button type="button" className="btn btn-inverse btn-block btn-lg dropdown-toggle cart-dropdown-button"> <span id="cart-total">
                      <span>Giỏ hàng</span><br />
                      3 sản phẩm</span></button>
                  
                </div>
              </div>
            </div>
          </div>
        </header>
      </div>
    </div>
  );
}

export default Header;
 

