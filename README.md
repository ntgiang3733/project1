# Tài liệu hướng dẫn sử dụng

**SVTH: Nguyễn Giản Mão - 20175642 - Frontend , Nguyễn Trường Giang - 20173083 - Backend**


### Mục lục

## [Backend](#backend)

[I.Mục tiêu](#muctieu1)

[II.Công nghệ sử dụng](#congnghesudung1)

[III.Hướng dẫn cài đặt](#huongdancaidat1)

[IV.Hướng dẫn sử dụng](#huongdansudung1)

## [Frontend](#frontend)

[I.Mục tiêu](#muctieu2)

[II.Công nghệ sử dụng](#congnghesudung2)

[III.Hướng dẫn cài đặt](#huongdancaidat2)

[IV.Hướng dẫn sử dụng](#huongdansudung2)

## [Demo Video](#demovideo)




==========================================================
<a name="backend"></a>
# Backend
<a name="muctieu1"></a>
## I . Mục tiêu
  Website thương mại điện tử là trang thông tin điện tử được thiết lập để phục vụ một phần hoặc toàn bộ quy trình của hoạt động mua bán hàng hóa hay cung ứng dịch vụ, từ trưng bày giới thiệu hàng hóa, dịch vụ đến giao kết hợp đồng, cung ứng dịch vụ, thanh toán và dịch vụ sau bán hàng.
  Project này nhóm em thực hiện thiết kế trang web bán laptop , trong đó phần backend được xây dựng nhằm cung cấp các tính năng và cơ sở dữ liệu phục vụ cho người sử dụng, cụ thể gồm:
- Cung cấp cơ sở dữ liệu, nơi lưu trữ thông tin về sản phẩm, tài khoản, hóa đơn...
- Cung cấp cho người dùng các chức năng khi truy cập trang web gồm : xem danh sách sản phẩm, lọc sản phẩm theo danh mục, sắp xếp sản phẩm theo tên, theo giá,tìm kiếm sản phẩm, thực hiện đăng ký , đăng nhập tài khoản, thêm sản phẩm vào giỏ hàng, thanh toán.

<a name="congnghesudung1"></a>
## II . Công nghệ sử dụng
  Phần Backend của Project lập trình bằng ngôn ngữ Java, sử dụng công nghệ JSP Servlet JDBC để xây dựng các chức năng và 2 hệ quản trị CSDL : SQLServer và MySQL

<a name="huongdancaidat1"></a>
## III . Hướng dẫn cài đặt phần
**Các phần mềm cần thiết** :NetBean IDE, SQLServer( hoặc MySQL)
-B1: Lấy phần source code trên git về máy, dùng NetBean tìm đường dẫn và mở project nằm trong máy
<img src=https://i.imgur.com/wKEuXvP.png>
-B2: Thiết lập các thông số của class SQLConnect.java trong package prj.project1.connect cho phù hợp với thông số hiện tại trên máy
<img src=https://i.imgur.com/0b6WZI7.png>
-B3: Nếu sử dụng SQLServer, tạo mới database tên MoonStore , chạy file scriptSQLServer.sql trong thư mục Media để có được CSDL phù hợp .
Nếu sử dụng MySQL. tạo mới database tên project, chạy file scriptMySQL.sql trong thư mục Media để có được CSDL phù hợp.

<a name="huongdansudung1"></a>
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
    <img src=https://i.imgur.com/Jp1nb0s.png>.
    
    - ProductDAO : chứa các hàm chính như lấy danh sách sản phẩm theo danh mục, sắp xếp theo tên, giá, lấy sản phẩm theo mã sản phẩm, thêm sửa xóa sản phẩm...
    <img src=https://i.imgur.com/bp3IrKl.png>.
    
    - UsersDAO : chứa các hàm chính như lấy danh sách tài khoản, các hàm kiểm tra tài khoản hỗ trợ cho việc đăng ký đăng nhập, các hàm thêm xóa tài khoản...
    <img src=https://i.imgur.com/seqgW2W.png>.
    
    - BillDAO và BillDetailDAO : chứa các hàm phục vụ cho việc thống kê qua hóa đơn và chi tiết hóa đơn.
    <img src=https://i.imgur.com/sJT3Xxp.png>.
    
- **controller, service** : tiếp nhận những yêu cầu xử lý được gửi từ người dùng, gồm các class/function xử lý nhiều nghiệp vụ logic để lấy dữ liệu thông tin cần thiết nhờ các nghiệp vụ lớp Model, DAO từ đó cung cấp dữ liệu ra cho người dùng như:
  - CartServlet : xử lý các tác vụ với giỏ hàng như tạo phiên làm việc với giỏ hàng, thêm, bớt, hủy sản phẩm trong giỏ hàng
  - LoginServet, RegisterServlet : xử lý các tác vụ như thực hiện việc kiểm tra tài khoản khi đăng ký, tạo phiên làm việc khi đăng nhập...
  - CheckoutServlet : xử lý các tác vụ với việc thanh toán như thêm đơn hàng và thông tin vào chi tiết đơn hàng khi người dùng thực hiện việc thanh toán.
  - ProductService : cung cấp dữ liệu về các sản phẩm cho người dùng như cung cấp danh sách toàn bộ sản phẩm, danh sách sản phẩm theo danh mục, theo trật tự sắp xếp, theo mã sản phẩm... và tiếp nhận xử lý các yêu cầu thêm sửa xóa sản phẩm.
  - UserService : tiếp nhận xử lý các yêu cầu đăng ký đăng nhập và chỉnh sửa tài khoản.
  
***************************************************************************************************
<a name="frontend"></a>
# Frontend

<a name="muctieu2"></a>
## Mục tiêu

-Nhằm mục đích tiểm hiểu và học hỏi về những điều căn bản của việc xây dựng và vẫn hành của một website

<a name="congnghesudung2"></a>
## Công nghệ sử dụng

 1. Framework ReactJS
 2. Nodejs
 3. Boostrap
 4. Các ngôn ngữ: HTML, CSS, JAVASCRIP.
 5. Visual Studio Code

<a name="huongdancaidat2"></a>
## Hướng dẫn cài đặt  

* B1: Download và cài đặt Nodejs (Theo tùy version bạn chọn tại website :<https://nodejs.org/en/> (Nên download bản LTS)).
* B2: Download và cài đặt Visual Studio Code tại website :<https://code.visualstudio.com/>
* B3: Dowload file code front-end của trang web mình đã làm tại : <https://drive.google.com/drive/folders/1PeoLIA2wg2c113qcB7tYunNjsUgZ-7Gu?usp=sharing>
* B4: Khởi động IDE Visual Studio Code và mở Folder vừa tải lên.
* B5: Trên thanh công cụ chọn Terminal -> New Terminal ![alt](https://eastasia1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fhusteduvn-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!oL6EJtYbbUWvWD7mYofcDs-XaoC1N9hDn2on50u5JD9tknjA2_N0S7vQ8ztIPUse%2Fitems%2F012DW6JKUH6445SHGBRNCJ4PXHSU7YS4WG%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvaHVzdGVkdXZuLW15LnNoYXJlcG9pbnQuY29tQDA2ZjFiODlmLTA3ZTgtNDY0Zi1iNDA4LWVjMWI0NTcwM2YzMSIsImlzcyI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMCIsIm5iZiI6IjE1Nzc5NzYxNjgiLCJleHAiOiIxNTc3OTk3NzY4IiwiZW5kcG9pbnR1cmwiOiJqcm91YlZ3RDA5VzNkMERGYklvTmkrc2YyUTVpUE95Z2M1QWtXNHZLOVF3PSIsImVuZHBvaW50dXJsTGVuZ3RoIjoiMTE5IiwiaXNsb29wYmFjayI6IlRydWUiLCJjaWQiOiJNalU0WlRJM09XWXROekEyWlMxaE1EQXdMVFkyWlRVdE1qVXdNR1F5TURZNU56UXkiLCJ2ZXIiOiJoYXNoZWRwcm9vZnRva2VuIiwic2l0ZWlkIjoiTWpZNE5HSmxZVEF0TVdKa05pMDBOVFprTFdGbU5UZ3RNMlZsTmpZeU9EZGtZekJsIiwibmFtZWlkIjoiMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsIm5paSI6Im1pY3Jvc29mdC5zaGFyZXBvaW50IiwiaXN1c2VyIjoidHJ1ZSIsImNhY2hla2V5IjoiMGguZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsInNoYXJpbmdpZCI6IkY5UUxIMGREUjBLVmdyVldCR0syTWciLCJ0dCI6IjAiLCJ1c2VQZXJzaXN0ZW50Q29va2llIjoiMiJ9.Ulk5dzRVb1MzOXVqZVVmbEF5dzFObG5wS0JVWksxVHdxT0xkKzJWTVg5QT0&encodeFailures=1&srcWidth=&srcHeight=&width=469&height=509&action=Access) 
rồi gõ :

        cd ./project        
        npm i 
        npm start

<a name="huongdansudung2"></a>
## Hướng dẫn sử dụng

#### **Project trên gồm 6 trang** :

* *Index*

* *Forgetpassword*

* *Register*

* *Cart*

* *Checkout*

* *Login*

#### Cơ bản về nguyên lý hoạt động của code :

* Mọi thứ bạn nhìn được trên giao diện là của file ***index.html*** trong **public** và ta thấy trong fle ***index.html*** nó hiển thị 1 cái thẻ div có id="root" ![alt](https://eastasia1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fhusteduvn-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!oL6EJtYbbUWvWD7mYofcDs-XaoC1N9hDn2on50u5JD9tknjA2_N0S7vQ8ztIPUse%2Fitems%2F012DW6JKWHUDXKDQ53NVBLBJDP72MR5MYS%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvaHVzdGVkdXZuLW15LnNoYXJlcG9pbnQuY29tQDA2ZjFiODlmLTA3ZTgtNDY0Zi1iNDA4LWVjMWI0NTcwM2YzMSIsImlzcyI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMCIsIm5iZiI6IjE1Nzc5NzYzMDciLCJleHAiOiIxNTc3OTk3OTA3IiwiZW5kcG9pbnR1cmwiOiJqcm91YlZ3RDA5VzNkMERGYklvTmkrc2YyUTVpUE95Z2M1QWtXNHZLOVF3PSIsImVuZHBvaW50dXJsTGVuZ3RoIjoiMTE5IiwiaXNsb29wYmFjayI6IlRydWUiLCJjaWQiOiJORGM0WlRJM09XWXROekEyTkMxaE1EQXdMVGc1WmpJdE5tSXdNMlJtTm1FMFpqVTAiLCJ2ZXIiOiJoYXNoZWRwcm9vZnRva2VuIiwic2l0ZWlkIjoiTWpZNE5HSmxZVEF0TVdKa05pMDBOVFprTFdGbU5UZ3RNMlZsTmpZeU9EZGtZekJsIiwibmFtZWlkIjoiMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsIm5paSI6Im1pY3Jvc29mdC5zaGFyZXBvaW50IiwiaXN1c2VyIjoidHJ1ZSIsImNhY2hla2V5IjoiMGguZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsInNoYXJpbmdpZCI6IkY5UUxIMGREUjBLVmdyVldCR0syTWciLCJ0dCI6IjAiLCJ1c2VQZXJzaXN0ZW50Q29va2llIjoiMiJ9.YjJuakVsQVU5b0lhR1dIdnhQYm1UQndBRDFHWHVuYWNyWXlhZEtZK3crND0&encodeFailures=1&srcWidth=&srcHeight=&width=797&height=583&action=Access) 
thì cái div root này là do file ***index.js*** trong **src** render các trang có trong file ***App.js*** đổ vào file ***index.html***.

* Rôi như đã nói ở trên ta có file ***App.js*** sẽ chứa các trang nhưng ở đây tôi đã viết một file **Router** để điều hưởng chuyển cho các trong trong website vậy nên ở đây ta chỉ trả về trang ***Manage.js*** (file Router)![alt](http://https://husteduvn-my.sharepoint.com/:i:/g/personal/mao_ng175642_sis_hust_edu_vn/EVJwIMEKJrJNmLHaQ1uG_ukBh5sRl_zCTzRvdqL-NLJBYw?e=oF0orl)

* File Router(**Managr.js**) ở đây các trang của website sẽ được gọi và định nghĩ cách thức chuyển trong đây 
. VD: Trang ***Login.js*** được định nghĩa đường dẫn là định tuyền khi ra click vào đăng ký hoặc gõ:

```bash
/dang-nhap
```

* Ví dụ về 1 trang cụ thể ***Cart.js*** trong **src/component/cart** ![alt](https://eastasia1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fhusteduvn-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!oL6EJtYbbUWvWD7mYofcDs-XaoC1N9hDn2on50u5JD9tknjA2_N0S7vQ8ztIPUse%2Fitems%2F012DW6JKQ3YMNVHLZ2FRH2TEYKYTI23CVW%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvaHVzdGVkdXZuLW15LnNoYXJlcG9pbnQuY29tQDA2ZjFiODlmLTA3ZTgtNDY0Zi1iNDA4LWVjMWI0NTcwM2YzMSIsImlzcyI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMCIsIm5iZiI6IjE1Nzc5NzYzNjUiLCJleHAiOiIxNTc3OTk3OTY1IiwiZW5kcG9pbnR1cmwiOiJqcm91YlZ3RDA5VzNkMERGYklvTmkrc2YyUTVpUE95Z2M1QWtXNHZLOVF3PSIsImVuZHBvaW50dXJsTGVuZ3RoIjoiMTE5IiwiaXNsb29wYmFjayI6IlRydWUiLCJjaWQiOiJOVFU0WlRJM09XWXRPVEJoWmkxaE1EQXdMVGc1WmpJdE5tRXpaalZrTTJRMU56UTQiLCJ2ZXIiOiJoYXNoZWRwcm9vZnRva2VuIiwic2l0ZWlkIjoiTWpZNE5HSmxZVEF0TVdKa05pMDBOVFprTFdGbU5UZ3RNMlZsTmpZeU9EZGtZekJsIiwibmFtZWlkIjoiMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsIm5paSI6Im1pY3Jvc29mdC5zaGFyZXBvaW50IiwiaXN1c2VyIjoidHJ1ZSIsImNhY2hla2V5IjoiMGguZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsInNoYXJpbmdpZCI6IkY5UUxIMGREUjBLVmdyVldCR0syTWciLCJ0dCI6IjAiLCJ1c2VQZXJzaXN0ZW50Q29va2llIjoiMiJ9.aTVYR0VqWEx0dm1za1Z6ZFNBMm1jaXhkZCswMnJzV21McHBVTHQzb1ZRcz0&encodeFailures=1&srcWidth=&srcHeight=&width=791&height=583&action=Access)
ta thất trng đây có 6 file .js mà cart sẽ trả về đó là Header.js, Menu.js, Body_cart01.js, Body_cart02.js, FooterTop.js và Footer.js về cơ bản những phần mà file này trả về thì từng file sẽ có một cấu trúc như các file bootstrap để hình thành lên giao diện nhưng ở đây được gọi là JSX.

* Ví dụ một file JSX cụ thể ***Header.js*** ![alt](https://eastasia1-mediap.svc.ms/transform/thumbnail?provider=spo&inputFormat=png&cs=fFNQTw&docid=https%3A%2F%2Fhusteduvn-my.sharepoint.com%3A443%2F_api%2Fv2.0%2Fdrives%2Fb!oL6EJtYbbUWvWD7mYofcDs-XaoC1N9hDn2on50u5JD9tknjA2_N0S7vQ8ztIPUse%2Fitems%2F012DW6JKTMMIYX5SVPYZHJ7WXXQFC3UPKT%3Fversion%3DPublished&access_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJub25lIn0.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDAvaHVzdGVkdXZuLW15LnNoYXJlcG9pbnQuY29tQDA2ZjFiODlmLTA3ZTgtNDY0Zi1iNDA4LWVjMWI0NTcwM2YzMSIsImlzcyI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMCIsIm5iZiI6IjE1Nzc5NzYzOTMiLCJleHAiOiIxNTc3OTk3OTkzIiwiZW5kcG9pbnR1cmwiOiJqcm91YlZ3RDA5VzNkMERGYklvTmkrc2YyUTVpUE95Z2M1QWtXNHZLOVF3PSIsImVuZHBvaW50dXJsTGVuZ3RoIjoiMTE5IiwiaXNsb29wYmFjayI6IlRydWUiLCJjaWQiOiJOV000WlRJM09XWXROakEyWkMxaE1EQXdMVGc1WmpJdE5qSXdPR0UzTmpnd05XUXgiLCJ2ZXIiOiJoYXNoZWRwcm9vZnRva2VuIiwic2l0ZWlkIjoiTWpZNE5HSmxZVEF0TVdKa05pMDBOVFprTFdGbU5UZ3RNMlZsTmpZeU9EZGtZekJsIiwibmFtZWlkIjoiMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsIm5paSI6Im1pY3Jvc29mdC5zaGFyZXBvaW50IiwiaXN1c2VyIjoidHJ1ZSIsImNhY2hla2V5IjoiMGguZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jM2JmYmNmOTkyMGI5ZDFkMDhjYjJjYmViODU0ZDc2MmQ3NTQ3MDgxZmIwNDY0NTg5Yzk1MTQxZmIzNzgwNzUzYSIsInNoYXJpbmdpZCI6IkY5UUxIMGREUjBLVmdyVldCR0syTWciLCJ0dCI6IjAiLCJ1c2VQZXJzaXN0ZW50Q29va2llIjoiMiJ9.VXJHcE1GQ3BpaERqZU8zS2ZXM1lFNURuYTBaVTNxQ0d1cWl2b2VrRjluRT0&encodeFailures=1&srcWidth=&srcHeight=&width=850&height=583&action=Access)
các bạn nhìn qua thì nó khá là giống cấu trúc của 1 trang và các câu lệnh của html nhưng đững nhầm lẫn vì đó là JSX nha các trang còn lại cũng tương tự như vậy rồi được đổ vào từng file lớn trước khi đưa đến định danh tại file Router(***Manage.js***) rồi đổ vào ***App.js***  và nhờ ***index.js*** render và đổ vào root trong ***index.html*** để hiện thị cho chúng ta giao diện. 

<a name="demovideo"></a>
#  Demo Video :
link video demo:https://www.youtube.com/watch?v=pqCETUN0vDQ



