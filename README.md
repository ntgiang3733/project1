# Tài liệu hướng dẫn sử dụng

### Mục lục

[I.Mục tiêu](#muctieu)

[II.Công nghệ sử dụng](#congnghesudung)

[III.Hướng dẫn cài đặt](#huongdancaidat)

[IV.Hướng dẫn sử dụng](#huongdansudung)

[V.Demo Video](#demovideo)


==========================================================

<a name="muctieu"></a>
## I . Mục tiêu Backend
Website thương mại điện tử là trang thông tin điện tử được thiết lập để phục vụ một phần hoặc toàn bộ quy trình của hoạt động mua bán hàng hóa hay cung ứng dịch vụ, từ trưng bày giới thiệu hàng hóa, dịch vụ đến giao kết hợp đồng, cung ứng dịch vụ, thanh toán và dịch vụ sau bán hàng.
Project này nhóm em thực hiện thiết kế trang web bán laptop , trong đó phần backend được xây dựng nhằm cung cấp các tính năng và cơ sở dữ liệu phục vụ cho người sử dụng, cụ thể gồm:
-Cung cấp cơ sở dữ liệu, nơi lưu trữ thông tin về sản phẩm, tài khoản, hóa đơn...
-Cung cấp cho người dùng các chức năng khi truy cập trang web gồm : xem danh sách sản phẩm, lọc sản phẩm theo danh mục, sắp xếp sản phẩm theo tên, theo giá,tìm kiếm sản phẩm, thực hiện đăng ký , đăng nhập tài khoản, thêm sản phẩm vào giỏ hàng, thanh toán.

<a name="congnghesudung"></a>
##II . Công nghệ sử dụng Backend
Phần Backend của Project lập trình bằng ngôn ngữ Java, sử dụng công nghệ JSP Servlet JDBC để xây dựng các chức năng và 2 hệ quản trị CSDL : SQLServer và MySQL

<a name="huongdancaidat"></a>
## III . Hướng dẫn cài đặt phần Backend
**Các phần mềm cần thiết : **NetBean IDE, SQLServer( hoặc MySQL)
-B1: Lấy phần source code trên git về máy, dùng NetBean tìm đường dẫn và mở project nằm trong máy
<img src=https://imgur.com/wKEuXvP>
<img src=https://imgur.com/SGNi3Re>
-B2: Thiết lập các thông số của class SQLConnect.java trong package prj.project1.connect cho phù hợp với thông số hiện tại trên máy
<img src=https://imgur.com/0b6WZI7>
-B3: Nếu sử dụng SQLServer, tạo mới database tên MoonStore , chạy file scriptSQLServer.sql để có được CSDL phù hợp .
Nếu sử dụng MySQL. tạo mới database tên project, chạy file scriptMySQL.sql để có được CSDL phù hợp.

<a name="huongdansudung"></a>
## IV . Hướng dẫn sử dụng :
-Giao diện trang chủ với các mục tìm kiếm sản phẩm, xem sản phẩm theo loại như laptop gaming, đồ họa, văn phòng, thực hiện thanh toán, xem giỏ hàng, đăng ký đăng nhập:
<img src=https://imgur.com/IBooYO7>
-Giao diện trang danh sách sản phẩm, tại đây người dùng có thể sắp xếp sản phẩm theo tên hoặc theo giá, click vào từng sản phẩm để xem chi tiết hoặc thêm sản phẩm vào giỏ hàng:
<img src=https://imgur.com/dSt0aIH>
-Giao diện trang chi tiết sản phẩm, khi click vào sản phẩm bất kỳ thì trang web sẽ hiển thị chi tiết sản phẩm gồm mã sản phẩm, tên, giá, hình ảnh chi tiết của sản phẩm đồng thời có thể thêm vào giỏ hàng tại đây:
<img src=https://imgur.com/oRRoiDa>
-Giao diện trang giỏ hàng , tại đây trang web sẽ liệt kê các sản phẩm được chọn, thông tin chi tiết, số lượng từng sản phẩm, tổng giá tiền cần trả, người dùng có thể điều chỉnh số lượng trực tiếp ngay tại đây để phù hợp với nhu cầu trước khi thanh toán:
<img src=https://imgur.com/52yynsG>
-Giao diện trang đăng ký, đăng nhập, ở trang đăng ký người dùng cần điền đầy đủ thông tin thiết yếu gồm email, tên tài khoản, mật khẩu, lưu ý nếu email đã có người đăng ký thì sẽ không được chấp nhận, khi đăng nhập thì người dùng cần nhập email và mật khẩu đã đăng ký vào:
<img src=https://imgur.com/ZMBFpe8>
<img src=https://imgur.com/7AVCEJh>
-Giao diện trang thanh toán, sau khi đã thêm các sản phẩm cần thiết vào giỏ hàng, người dùng sẽ chuyển đến trang thanh toán để hoàn thành các thông tin cá nhân, lưu ý trước khi thanh toán cần phải đăng nhập vào hệ thống, tại trang thanh toán người dùng cần nhập các thông tin gồm họ tên, địa chỉ, lựa chọn hình thức thanh toán:
<img src=https://imgur.com/n69Son9>

<a name="demovideo"></a>
## V . Demo Video :
link video demo:



