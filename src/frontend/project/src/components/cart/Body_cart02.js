import React,{Component} from 'react'
class Body_cart02 extends Component {
    render() {
        return(
            <div className="container">
            <div className="row">
              <div id="column-left" className="col-sm-3 hidden-xs column-left">
                <div className="Categories left-sidebar-widget">
                  <div className="columnblock-title">Sản phẩm được ưa thích</div>
                  <div className="category_block">
                    <ul className="box-category treeview-list treeview">
                      <li><a href="/gio-hang" className="activSub">Màn hình</a>
                        
                      </li>
                      <li><a href="/gio-hang" className="activSub">Laptop văn phòng &amp; Notebooks</a>
                        
                      </li>
                      <li><a href="/gio-hang" className="activSub">Laptop văn phòng</a>
                        
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
                          <div className="image product-imageblock"> <a href="..">
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
                          <div className="image product-imageblock"> <a href="..">
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-04.jpg" />
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-04-1.jpg" />
                            </a> </div>
                        </div>
                      </div>
                      <div className="col-xs-8">
                        <div className="caption product-detail">
                          <h4 className="product-name"><a title="MacBook Pro 2017" href="..">Macbook Pro 2017</a></h4>
                          <p className="price product-price">30.000.000 đ</p>
                          <div className="addto-cart"><a href="..">Thêm vào giở hàng</a></div>
                        </div>
                      </div>
                    </li>
                    <li className="product-layout">
                      <div className="product-list col-xs-4">
                        <div className="product-thumb">
                          <div className="image product-imageblock"> <a href="..">
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-08.jpg" />
                              <img className="img-responsive" title="iPod Classic" alt="iPod Classic" src="image/product/Pro-08-1.jpg" />
                            </a> </div>
                        </div>
                      </div>
                      <div className="col-xs-8">
                        <div className="caption product-detail">
                          <h4 className="product-name"><a title="MacBook Pro 2017" href="..">Macbook Pro 2017</a></h4>
                          <p className="price product-price">30.000.000 đ</p>
                          <div className="addto-cart"><a href="..">Thêm vào giở hàng</a></div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-9" id="content">
                <form encType="multipart/form-data" method="post" action="#">
                  <div className="table-responsive">
                    <table className="table table-bordered">
                      <thead>
                        <tr>
                          <td className="text-center">Ảnh</td>
                          <td className="text-left">Tên sản phẩm</td>
                          <td className="text-left">Mã sản phẩm</td>
                          <td className="text-left">Sô lượng</td>
                          <td className="text-right">Giá</td>
                          <td className="text-right">Tổng</td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td className="text-center"><a href="product.html"><img className="img-thumbnail" title="iPhone" alt="iPhone" src="image/product/2product56x72.jpg" /></a></td>
                          <td className="text-left"><a href="product.html">Macbook Pro 2017</a></td>
                          <td className="text-left">MAC 1</td>
                          <td className="text-left"><div style={{maxWidth: '200px'}} className="input-group btn-block">
                              <input type="text" className="form-control quantity" size={1} defaultValue={1} name="quantity" />
                              <span className="input-group-btn">
                                <button className="btn btn-primary" title data-toggle="tooltip" type="submit" data-original-title="Update"><i className="fa fa-refresh" /></button>
                                <button className="btn btn-danger" title data-toggle="tooltip" type="button" data-original-title="Remove"><i className="fa fa-times-circle" /></button>
                              </span></div></td>
                          <td className="text-right">30.000.000 đ</td>
                          <td className="text-right">30.000.000 đ</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </form>
                <h2>Bạn thích làm gì tiếp theo?</h2>
                <p>Chọn mã giảm giá hoặc thẻ tích điểm nếu có</p>
                <div id="accordion" className="panel-group">
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title"><a className="accordion-toggle " aria-expanded="true" data-parent="#accordion" data-toggle="collapse" href="#collapse-coupon">Sử dụng mã giảm giá <i className="fa fa-caret-down" /></a></h4>
                    </div>
                    <div className="panel-collapse collapse in" id="collapse-coupon">
                      <div className="panel-body">
                        <label htmlFor="input-coupon" className="col-sm-4 control-label">Nhập phiểu giảm giá của bạn ở đây</label>
                        <div className="input-group">
                          <input type="text" className="form-control" id="input-coupon" placeholder="Nhập phiếu giảm giá "  name="coupon" />
                          <span className="input-group-btn">
                            <input type="button" className="btn btn-primary" data-loading-text="Loading..." id="button-coupon" defaultValue="Áp dụng" />
                          </span></div>
                      </div>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title"><a className="accordion-toggle collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse-voucher">Sử dụng phiêu qua tặng <i className="fa fa-caret-down" /></a></h4>
                    </div>
                    <div className="panel-collapse collapse" id="collapse-voucher">
                      <div className="panel-body">
                        <label htmlFor="input-voucher" className="col-sm-4 control-label">Nhập mã phiếu quà tặng tại đây</label>
                        <div className="input-group">
                          <input type="text" className="form-control" id="input-voucher" placeholder="Nhập mã phiếu quà tặng"  name="voucher" />
                          <span className="input-group-btn">
                            <input type="submit" className="btn btn-primary" data-loading-text="Loading..." id="button-voucher" defaultValue="Áp dụng" />
                          </span> </div>
                      </div>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title"><a data-parent="#accordion" data-toggle="collapse" className="accordion-toggle collapsed" href="#collapse-shipping">Địa điểm giao hàng <i className="fa fa-caret-down" /></a></h4>
                    </div>
                    <div className="panel-collapse collapse" id="collapse-shipping">
                      <div className="panel-body">
                        <p>Nhập địa chỉ muốn giao hàng.</p>
                        <form className="form-horizontal">
                          <div className="form-group required">
                            <label htmlFor="input-city" className="col-sm-2 control-label">Thành phố</label>
                            <div className="col-sm-10">
                              <select className="form-control" id="input-country" name="city_id">
                                <option value> --- Chọn --- </option>
                                <option value={244}>Hà Nội</option>
                                <option value={1}>Bắc Ninh</option>
                                <option value={2}>Tuyên Quang</option>
                                <option value={3}>Hà Giang</option>
                                <option value={4}>Hòa Bình</option>
                                <option value={5}>Sơn La</option>
                                <option value={6}>Lạng Sơn</option>
                                <option value={7}>Vĩnh Phúc</option>
                                <option value={8}>Cao Bằng</option>
                                <option value={9}>Tp.Hồ Chí Minh</option>
                                <option value={10}>Đà Nẵng</option>
                                <option value={11}>Cần Thơ</option>
                                <option value={12}>Hải Phòng</option>
                                <option value={252}>Đồng Nai</option>
                                <option value={13}>Huế</option>
                                <option value={244}>Hà Nội</option>
                                <option value={1}>Bắc Ninh</option>
                                <option value={2}>Tuyên Quang</option>
                                <option value={3}>Hà Giang</option>
                                <option value={4}>Hòa Bình</option>
                                <option value={5}>Sơn La</option>
                                <option value={6}>Lạng Sơn</option>
                                <option value={7}>Vĩnh Phúc</option>
                                <option value={8}>Cao Bằng</option>
                                <option value={9}>Tp.Hồ Chí Minh</option>
                                <option value={10}>Đà Nẵng</option>
                                <option value={11}>Cần Thơ</option>
                                <option value={12}>Hải Phòng</option>
                                <option value={252}>Đồng Nai</option>
                                <option value={13}>Huế</option><option value={244}>Hà Nội</option>
                                <option value={1}>Bắc Ninh</option>
                                <option value={2}>Tuyên Quang</option>
                                <option value={3}>Hà Giang</option>
                                <option value={4}>Hòa Bình</option>
                                <option value={5}>Sơn La</option>
                                <option value={6}>Lạng Sơn</option>
                                <option value={7}>Vĩnh Phúc</option>
                                <option value={8}>Cao Bằng</option>
                                <option value={9}>Tp.Hồ Chí Minh</option>
                                <option value={10}>Đà Nẵng</option>
                                <option value={11}>Cần Thơ</option>
                                <option value={12}>Hải Phòng</option>
                                <option value={252}>Đồng Nai</option>
                                <option value={13}>Huế</option>
                              </select>
                            </div>
                          </div>
                          <div className="form-group required">
                            <label htmlFor="input-zone" className="col-sm-2 control-label">Quận/Huyện</label>
                            <div className="col-sm-10">
                              <select className="form-control" id="input-zone" name="zone_id">
                                <option value> --- Chọn --- </option>
                                <option value={3513}>Đông Anh</option>
                                <option value={3514}>Mê Linh </option>
                                <option value={3515}>Sóc Sơn</option>
                                <option value={3516}>Thanh Xuân</option>
                                <option value={3517}>Hia Bà Trưng</option>
                                <option value={3518}>Hà Đông</option>
                                <option value={3519}>Thanh Trì</option>
                                <option value={3520}>Hoàng Mai</option>
                                <option value={3521}>Đống Đa</option>
                                <option value={3522}>Ba Đình</option>
                                <option value={3523}>Bắc Từ Liêm</option>
                                <option value={3524}>Nam Từ Liêm</option>
                                <option value> --- Chọn --- </option>
                                <option value={3513}>Đông Anh</option>
                                <option value={3514}>Mê Linh </option>
                                <option value={3515}>Sóc Sơn</option>
                                <option value={3516}>Thanh Xuân</option>
                                <option value={3517}>Hia Bà Trưng</option>
                                <option value={3518}>Hà Đông</option>
                                <option value={3519}>Thanh Trì</option>
                                <option value={3520}>Hoàng Mai</option>
                                <option value={3521}>Đống Đa</option>
                                <option value={3522}>Ba Đình</option>
                                <option value={3523}>Bắc Từ Liêm</option>
                                <option value={3524}>Nam Từ Liêm</option>
                                <option value> --- Chọn --- </option>
                                <option value={3513}>Đông Anh</option>
                                <option value={3514}>Mê Linh </option>
                                <option value={3515}>Sóc Sơn</option>
                                <option value={3516}>Thanh Xuân</option>
                                <option value={3517}>Hia Bà Trưng</option>
                                <option value={3518}>Hà Đông</option>
                                <option value={3519}>Thanh Trì</option>
                                <option value={3520}>Hoàng Mai</option>
                                <option value={3521}>Đống Đa</option>
                                <option value={3522}>Ba Đình</option>
                                <option value={3523}>Bắc Từ Liêm</option>
                                <option value={3524}>Nam Từ Liêm</option>           
                              </select>
                            </div>
                          </div>
                          <div className="form-group required">
                            <label htmlFor="input-postcode" className="col-sm-2 control-label">Mã bưu điện</label>
                            <div className="col-sm-10">
                              <input type="text" className="form-control" id="input-postcode" placeholder="Mã bưu điện" name="postcode" />
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                <br />
                <div className="row">
                  <div className="col-sm-4 col-sm-offset-8">
                    <table className="table table-bordered">
                      <tbody>
                        <tr>
                          <td className="text-right"><strong>Tổng phụ phí:</strong></td>
                          <td className="text-right">30.000.000</td>
                        </tr>
                        <tr>
                          <td className="text-right"><strong>VAT (10%):</strong></td>
                          <td className="text-right">3.000.000 đ</td>
                        </tr>
                        <tr>
                          <td className="text-right"><strong>Tổng:</strong></td>
                          <td className="text-right">33.0000.000 đ</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div className="buttons">
                  <div className="pull-left"><a className="btn btn-default" href="index.html">Tiếp tục mua sắm</a></div>
                  <div className="pull-right"><a className="btn btn-primary" href="checkout.html">Thanh toán</a></div>
                </div>
              </div>
            </div>
          </div>
        );
    }
}

export default Body_cart02
