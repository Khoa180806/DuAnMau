# 💻 Dự Án Mẫu - Java Swing + JDBC

> Đây là dự án mẫu giúp sinh viên và người học Java làm quen với cách xây dựng ứng dụng CRUD đơn giản sử dụng Java Swing và kết nối cơ sở dữ liệu bằng JDBC.

## 📌 Mục Tiêu Dự Án

- Làm quen với mô hình 3 lớp (DAO - Service - UI)
- Thành thạo thao tác cơ bản với Java Swing
- Biết cách kết nối và thao tác với cơ sở dữ liệu sử dụng JDBC
- Làm nền tảng cho các project lớn hơn như ERP mini, quản lý bán hàng, v.v.

## 🛠️ Công Nghệ Sử Dụng

- Java 8+
- NetBeans IDE
- MySQL (hoặc có thể đổi sang Oracle)
- JDBC (Java Database Connectivity)
- Git + GitHub

## 📁 Cấu Trúc Thư Mục

```plaintext
DuAnMau/
├── src/
│   ├── dao/              # Lớp DAO xử lý truy vấn CSDL
│   ├── model/            # Lớp mô hình dữ liệu (POJO)
│   ├── service/          # Lớp nghiệp vụ (tùy dự án)
│   ├── ui/               # Giao diện người dùng (Swing)
│   ├── utils/            # Lớp tiện ích (kết nối DB, validate, v.v.)
│   └── main.java         # Điểm khởi chạy ứng dụng
├── README.md
└── database/             # File script CSDL (nếu có)
🧪 Các Chức Năng Chính
🧍 Quản lý người dùng (thêm, sửa, xóa, tìm kiếm)

🔐 Đăng nhập

📋 Form nhập liệu có kiểm tra hợp lệ (validate)

💾 Kết nối & thao tác CSDL bằng JDBC

⚙️ Hướng Dẫn Cài Đặt & Chạy
Clone repo: git clone https://github.com/Khoa180806/DuAnMau.git

Mở bằng NetBeans:

File > Open Project > chọn thư mục DuAnMau

Cấu hình database:

Tạo database trong MySQL Workbench

Import file database/script.sql nếu có

Sửa thông tin kết nối DB trong utils/DBConnection.java

Chạy chương trình: Nhấn F6 để chạy main.java (giao diện khởi động)

✅ Yêu Cầu Tối Thiểu
JDK 8 trở lên
NetBeans 12+
MySQL hoặc Oracle
Thư viện JDBC đã cấu hình đúng
