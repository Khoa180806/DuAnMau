# ☕ PolyCafe - Hệ Thống Quản Lý Quán Café

> Ứng dụng quản lý quán café được xây dựng bằng Java Swing và JDBC, hỗ trợ đầy đủ các chức năng quản lý bán hàng và vận hành quán café.

## 🎯 Giới Thiệu Dự Án

PolyCafe là một hệ thống quản lý quán café hoàn chỉnh, được thiết kế để hỗ trợ việc quản lý bán hàng, nhân viên, thực đơn và doanh thu. Ứng dụng có giao diện thân thiện và phân quyền người dùng rõ ràng.

## 🏗️ Kiến Trúc Hệ Thống

### Mô hình 3 lớp (3-Layer Architecture)
- **Entity Layer**: Các lớp mô hình dữ liệu
- **DAO Layer**: Lớp truy cập dữ liệu  
- **UI Layer**: Lớp giao diện người dùng

### Công nghệ sử dụng
- **Ngôn ngữ**: Java 8+
- **Giao diện**: Java Swing
- **Cơ sở dữ liệu**: SQL Server
- **Kết nối DB**: JDBC
- **IDE**: NetBeans

## 📊 Cơ Sở Dữ Liệu

### Các bảng chính:
- `Users` - Quản lý thông tin người dùng và phân quyền
- `Categories` - Danh mục đồ uống
- `Drinks` - Thông tin đồ uống (giá, giảm giá, hình ảnh)
- `Cards` - Thẻ định danh khách hàng
- `Bills` - Hóa đơn bán hàng
- `BillDetails` - Chi tiết hóa đơn

## 🔐 Phân Quyền Người Dùng

### Manager (Quản lý)
- ✅ Quản lý người sử dụng
- ✅ Quản lý danh mục đồ uống
- ✅ Quản lý đồ uống (thêm/sửa/xóa)
- ✅ Quản lý thẻ định danh
- ✅ Quản lý hóa đơn
- ✅ Xem báo cáo doanh thu
- ✅ Bán hàng
- ✅ Xem lịch sử
- ✅ Đổi mật khẩu

### Nhân viên (Staff)
- ✅ Bán hàng
- ✅ Xem lịch sử giao dịch
- ✅ Đổi mật khẩu
- ❌ Không có quyền quản lý

## 🚀 Chức Năng Chính

### 🛒 Bán hàng
- Tạo hóa đơn mới
- Thêm/xóa sản phẩm vào hóa đơn
- Áp dụng giảm giá
- Thanh toán và in hóa đơn

### 👥 Quản lý người dùng
- Thêm/sửa/xóa nhân viên
- Phân quyền Manager/Staff
- Quản lý ảnh đại diện
- Kích hoạt/vô hiệu hóa tài khoản

### 🍹 Quản lý thực đơn
- Quản lý danh mục đồ uống
- Thêm/sửa/xóa đồ uống
- Cập nhật giá và khuyến mãi
- Quản lý hình ảnh sản phẩm
- Trạng thái có sẵn/hết hàng

### 💳 Quản lý thẻ
- Tạo/cập nhật thẻ định danh
- Theo dõi trạng thái thẻ
- Gán thẻ cho khách hàng

### 📈 Báo cáo doanh thu
- Thống kê doanh thu theo thời gian
- Báo cáo chi tiết theo sản phẩm
- Xuất báo cáo

## 📁 Cấu Trúc Dự Án

```
PolyCafe/
├── src/
│   └── poly/cafe/
│       ├── dao/                    # Lớp truy cập dữ liệu
│       │   ├── impl/              # Triển khai DAO
│       │   └── *.java             # Interface DAO
│       ├── entity/                # Các lớp mô hình
│       │   └── *.java             # User, Drink, Bill, etc.
│       ├── ui/                    # Giao diện người dùng
│       │   ├── manager/           # UI cho Manager
│       │   └── *.java             # UI chung
│       ├── util/                  # Lớp tiện ích
│       │   └── *.java             # XAuth, XJdbc, XDialog, etc.
│       ├── icons/                 # Tài nguyên hình ảnh
│       └── PolyCafe.sql          # Script tạo database
├── build.xml                      # Ant build file
└── README.md                      # Tài liệu dự án
```

## ⚙️ Hướng Dẫn Cài Đặt

### Yêu cầu hệ thống
- JDK 8 trở lên
- NetBeans IDE 12+
- SQL Server
- JDBC Driver cho SQL Server

### Các bước cài đặt

1. **Clone repository**
   ```bash
   git clone <repository-url>
   ```

2. **Mở dự án trong NetBeans**
   - File → Open Project
   - Chọn thư mục PolyCafe

3. **Cấu hình cơ sở dữ liệu**
   - Tạo database mới trong SQL Server
   - Chạy script `PolyCafe.sql` để tạo bảng và dữ liệu mẫu
   - Cập nhật thông tin kết nối trong `XJdbc.java`

4. **Chạy ứng dụng**
   - Run file `PolyCafeJFrame.java`
   - Đăng nhập với tài khoản mẫu:
     - **Manager**: `khoa@gmail.com` / `123`
     - **Staff**: `binh@gmail.com` / `123`

## 👥 Tài Khoản Mẫu

### Manager Account
- **Username**: khoa@gmail.com
- **Password**: 123
- **Quyền**: Toàn quyền quản lý

### Staff Accounts
- binh@gmail.com / 123
- cuong@gmail.com / 123
- dieu@gmail.com / 123
- (và nhiều tài khoản khác...)

## 🎨 Screenshots

### Giao diện chính
- Dashboard với menu chức năng
- Phân quyền theo role

### Giao diện bán hàng
- Chọn sản phẩm từ menu
- Tính toán tự động với giảm giá
- In hóa đơn

### Giao diện quản lý
- CRUD cho tất cả đối tượng
- Form validation
- Tìm kiếm và lọc dữ liệu

## 🛠️ Phát Triển

### Quy tắc coding
- Sử dụng mô hình MVC
- Tách biệt logic và giao diện
- Validation dữ liệu đầu vào
- Xử lý exception

### Mở rộng tính năng
- Thêm báo cáo chi tiết
- Tích hợp payment gateway
- Mobile responsive
- API REST

## 📞 Liên Hệ

- **Developer**: Phan Hoàng Anh KhoaKhoa
- **Email**: khoaphan180806@gmail.com
- **GitHub**: Khoa180806

## 📄 License

Dự án này được phát triển cho mục đích học tập và nghiên cứu.

---

⭐ **Nếu dự án hữu ích, hãy cho một star nhé!**