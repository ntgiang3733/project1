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
- Cung cấp cơ sở dữ liệu, nơi lưu trữ thông tin về sản phẩm, tài khoản, hóa đơn...
- Cung cấp cho người dùng các chức năng khi truy cập trang web gồm : xem danh sách sản phẩm, lọc sản phẩm theo danh mục, sắp xếp sản phẩm theo tên, theo giá,tìm kiếm sản phẩm, thực hiện đăng ký , đăng nhập tài khoản, thêm sản phẩm vào giỏ hàng, thanh toán.

<a name="congnghesudung"></a>
## II . Công nghệ sử dụng Backend
  Phần Backend của Project lập trình bằng ngôn ngữ Java, sử dụng công nghệ JSP Servlet JDBC để xây dựng các chức năng và 2 hệ quản trị CSDL : SQLServer và MySQL

<a name="huongdancaidat"></a>
## III . Hướng dẫn cài đặt phần Backend
**Các phần mềm cần thiết : **NetBean IDE, SQLServer( hoặc MySQL)
-B1: Lấy phần source code trên git về máy, dùng NetBean tìm đường dẫn và mở project nằm trong máy
<img src=https://i.imgur.com/wKEuXvP.png>
-B2: Thiết lập các thông số của class SQLConnect.java trong package prj.project1.connect cho phù hợp với thông số hiện tại trên máy
<img src=https://i.imgur.com/0b6WZI7.png>
-B3: Nếu sử dụng SQLServer, tạo mới database tên MoonStore , chạy file scriptSQLServer.sql để có được CSDL phù hợp .
Nếu sử dụng MySQL. tạo mới database tên project, chạy file scriptMySQL.sql để có được CSDL phù hợp.

<a name="huongdansudung"></a>
## IV . Hướng dẫn sử dụng :

**Phần Backend được xây dựng với các package chính gồm** :connect, controller,dao, model, service
<img src=https://i.imgur.com/JGhKkH6.png>.

- **connect**: gồm 2 class ConnectionUtils.java để kiểm tra kết nối và SQLConnect.java để thiết lập kết nối với CSDL :
<img src=https://i.imgur.com/hkAQmoM.png>
  Trong lớp SQLConnect.java,ta truyền các tham số cần thiết vào hàm getSQLServerConnection để hàm trả về đối tượng Connection kết nối với CSDL, trong đó :
  - Nếu sử dụng SQLServer thì cần gọi hàm getSQLServerConnection và truyền vào các tham số :hostName("localhost"), sqlInstanceName("SQLEXPRESS"), database(tên database, trong project database được đặt tên là "MoonStore"),userName, password(lấy giá trị đã đặt trên máy) đồng thời đặt giá trị sqlserver=true.
  - Nếu sử dụng MySQL thì cần gọi hàm getSQLServerConnection và truyền vào các tham số : hostName("localhost"), dbName(tên database, trong project database được đặt tên là "project"), userName, password(lấy giá trị đã đặt trên máy) đồng thời đặt giá trị sqlserver=false.
  
- **model** : gồm các class khai báo các thuộc tính và phương thức tương ứng với các đối tượng như : Bill-hóa đơn,BillDetail-chi tiết hóa đơn,Cart-giỏ hàng, Product- sản phẩm, User - tài khoản...
<img src=https://i.imgur.com/tZiTTMX.png>
<img src=https://i.imgur.com/gt2H3zf.png><img src=https://i.imgur.com/ayONe4C.png>
<img src=https://i.imgur.com/NecSIpg.png><img src=https://i.imgur.com/hZirdbR.png>.

- **dao** : chứa các class, funtion xử lý việc kết nối với database để truy vấn, thêm, sửa , xóa dữ liệu :
    - CategoryDAO : chứa các hàm lấy danh sách danh mục, chèn , sửa, xóa  danh mục
    <img src=https://i.imgur.com/Jp1nb0s.png>
    - ProductDAO : chứa các hàm chính như lấy danh sách sản phẩm theo danh mục, sắp xếp theo tên, giá, lấy sản phẩm theo mã sản phẩm, thêm sửa xóa sản phẩm...
    <img src=https://i.imgur.com/bp3IrKl.png>
    - UsersDAO : chứa các hàm chính như lấy danh sách tài khoản, các hàm kiểm tra tài khoản hỗ trợ cho việc đăng ký đăng nhập, các hàm thêm xóa tài khoản...
    <img src=https://i.imgur.com/seqgW2W.png>
    - BillDAO và BillDetailDAO : chứa các hàm phục vụ cho việc thống kê qua hóa đơn và chi tiết hóa đơn.
    <img src=https://i.imgur.com/sJT3Xxp.png>.
    
- **controller, service** : tiếp nhận những yêu cầu xử lý được gửi từ người dùng, gồm các class/function xử lý nhiều nghiệp vụ logic để lấy dữ liệu thông tin cần thiết nhờ các nghiệp vụ lớp Model, DAO từ đó cung cấp dữ liệu ra cho người dùng như:
  - CartServlet : xử lý các tác vụ với giỏ hàng như tạo phiên làm việc với giỏ hàng, thêm, bớt, hủy sản phẩm trong giỏ hàng
  - LoginServet, RegisterServlet : xử lý các tác vụ như thực hiện việc kiểm tra tài khoản khi đăng ký, tạo phiên làm việc khi đăng nhập...
  - CheckoutServlet : xử lý các tác vụ với việc thanh toán như thêm đơn hàng và thông tin vào chi tiết đơn hàng khi người dùng thực hiện việc thanh toán.
  - ProductService : cung cấp dữ liệu về các sản phẩm cho người dùng như cung cấp danh sách toàn bộ sản phẩm, danh sách sản phẩm theo danh mục, theo trật tự sắp xếp, theo mã sản phẩm... và tiếp nhận xử lý các yêu cầu thêm sửa xóa sản phẩm.
  - UserService : tiếp nhận xử lý các yêu cầu đăng ký đăng nhập và chỉnh sửa tài khoản.
  

<a name="demovideo"></a>
## V . Demo Video :
link video demo:



