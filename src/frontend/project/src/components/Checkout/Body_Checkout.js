import React,{Component} from 'react'


class Body_Checkout extends Component {
    render() {
        return(
            <div className="container">
            <div className="row">
              <div id="column-left" className="col-sm-3 hidden-xs column-left">
                <div className="Categories left-sidebar-widget">
                  <div className="columnblock-title">Sản phẩm được ưa thích</div>
                  <div className="category_block">
                    <ul className="box-category treeview-list treeview">
                      <li><a href=".." className="activSub">Màn hình</a>
                        
                      </li>
                      <li><a href=".." className="activSub">Laptop văn phòng &amp; Notebooks</a>
                        
                      </li>
                      <li><a href=".." className="activSub">Laptop văn phòng</a>
                        
                      </li>
                      
                    </ul>
                  </div>
                </div>
                <div className="latest left-sidebar-widget">
                  <div className="columnblock-title"> Sản phẩm mới nhất</div>
                  <ul className="row ">
                    <li className="product-layout">
                      <div className="product-list col-xs-4">
                        <div className="product-thumb">
                          <div className="image product-imageblock"> <a href="product.html">
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-01.jpg" />
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-01-1.jpg" />
                            </a> </div>
                        </div>
                      </div>
                      <div className="col-xs-8">
                        <div className="caption product-detail">
                          <h4 className="product-name"><a title="Casual Shirt With Ruffle Hem" href="..">Macbook Pro 2017</a></h4>
                          <p className="price product-price">30.000.000 đ</p>
                          <div className="addto-cart"><a href="..">Thêm vào giở hàng</a></div>
                        </div>
                      </div>
                    </li>
                    <li className="product-layout">
                      <div className="product-list col-xs-4">
                        <div className="product-thumb">
                          <div className="image product-imageblock"> <a href="product.html">
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-04.jpg" />
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-04-1.jpg" />
                            </a> </div>
                        </div>
                      </div>
                      <div className="col-xs-8">
                        <div className="caption product-detail">
                          <h4 className="product-name"><a title="Casual Shirt With Ruffle Hem" href="..">Macbook Pro 2017</a></h4>
                          <p className="price product-price">30.000.000 đ</p>
                          <div className="addto-cart"><a href="..">Thêm vào giở hàng</a></div>
                        </div>
                      </div>
                    </li>
                    <li className="product-layout">
                      <div className="product-list col-xs-4">
                        <div className="product-thumb">
                          <div className="image product-imageblock"> <a href="product.html">
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-08.jpg" />
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-08-1.jpg" />
                            </a> </div>
                        </div>
                      </div>
                      <div className="col-xs-8">
                        <div className="caption product-detail">
                          <h4 className="product-name"><a title="Casual Shirt With Ruffle Hem" href="..">Macbook Pro 2017</a></h4>
                          <p className="price product-price">30.000.000 đ</p>
                          <div className="addto-cart"><a href="..">Thêm vào giở hàng</a></div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-9" id="content">
                <div id="accordion" className="panel-group">
                  <div className="form-group required">
                    <label htmlFor="input-payment-firstname" className="col-sm-2 control-label">Tên </label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-payment-firstname" placeholder="Tên"  name="firstname" />
                    </div>
                  </div>
                  <div className="form-group required">
                    <label htmlFor="input-payment-address-1" className="col-sm-2 control-label">Địa chỉ </label>
                    <div className="col-sm-10">
                      <input type="text" className="form-control" id="input-payment-address-1" placeholder="Địa chỉ "  name="address_1" />
                    </div> 
                    <div className="panel panel-default">
                      <div className="panel-heading">
                        <h4 className="panel-title"><a className data-parent="#accordion" data-toggle="collapse" href="#collapse-payment-method" aria-expanded="false">Chọn phương thức thanh toán<i className="fa fa-caret-down" /> </a></h4>
                      </div>
                      <div id="collapse-payment-method" role="heading" className="panel-collapse collapse" aria-expanded="false" style={{height: '0px'}}>
                        <div className="panel-body">  
                          <p>Chọn phương thức thanh toán</p>
                          <div className="radio">
                            <label style={{display: 'block'}}>
                              <input type="radio" defaultChecked="checked" Value="cod" name="payment_method" />
                              Thanh toán khi giao hàng </label>
                            <label>
                              <input type="radio" defaultChecked="checked" Value="cod" name="payment_method" />
                              Thanh toán Online </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="panel panel-default">
                      <div className="panel-heading">
                        <h4 className="panel-title"><a data-parent="#accordion" data-toggle="collapse" href="#collapse-checkout-confirm" aria-expanded="true"> Xác nhận giao hàng <i className="fa fa-caret-down" /></a></h4>
                      </div>
                      <div id="collapse-checkout-confirm" role="heading" className="panel-collapse collapse in" aria-expanded="true">
                        <div className="panel-body">
                          <div className="table-responsive">
                            <table className="table table-bordered">
                              <thead>
                                <tr>
                                  <td className="text-left">Mã sản phẩm</td>
                                  <td className="text-center">Tên sản phẩm</td>
                                  <td className="text-center">Ảnh sản phẩm</td>
                                  <td className="text-right">Số lượng</td>
                                  <td className="text-right">Đơn giá</td>
                                  <td className="text-right">Tổng</td>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td className="text-left"><a href>MAC1</a></td>
                                  <td className="text-left">MacBook Pro 2017</td>
                                  <td className="text-center"><a href=".."><img style={{height: '150px'}} className="img-thumbnail" alt="MAC1" src="image/img-product/apple-macbook-pro-touch-2019-i5-14ghz-8gb-128gb-m-2-2-600x600.jpg" /></a></td>
                                  <td className="text-right">1</td>
                                  <td className="text-right">30.000.000 VNĐ/máy</td>
                                  <td className="text-right">30.000.000 đ</td>
                                </tr>
                              </tbody>
                              <tbody>
                                <tr>
                                  <td className="text-left"><a href>MAC1</a></td>
                                  <td className="text-left">MacBook Pro 2017</td>
                                  <td className="text-center"><a href=".."><img style={{height: '150px'}} className="img-thumbnail" alt="MAC1" src="image/img-product/apple-macbook-pro-touch-2019-i5-14ghz-8gb-128gb-m-2-2-600x600.jpg" /></a></td>
                                  <td className="text-right">1</td>
                                  <td className="text-right">30.000.000 VNĐ/máy</td>
                                  <td className="text-right">30.000.000 đ</td>
                                </tr>
                              </tbody>
                              <tbody>
                                <tr>
                                  <td className="text-left"><a href>MAC1</a></td>
                                  <td className="text-left">MacBook Pro 2017</td>
                                  <td className="text-center"><a href=".."><img style={{height: '150px'}} className="img-thumbnail" alt="MAC1" src="image/img-product/apple-macbook-pro-touch-2019-i5-14ghz-8gb-128gb-m-2-2-600x600.jpg" /></a></td>
                                  <td className="text-right">1</td>
                                  <td className="text-right">30.000.000 VNĐ/máy</td>
                                  <td className="text-right">30.000.000 đ</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <div className="buttons">
                            <div className="pull-right">
                              <input type="button" data-loading-text="Loading..." className="btn btn-primary" id="button-confirm" defaultValue="Đặt hàng" />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        );
    }
}

export default Body_Checkout
