CREATE TABLE Categories(
    Id NVARCHAR(20) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Drinks(
    Id NVARCHAR(20) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    UnitPrice FLOAT NOT NULL,
    Discount FLOAT NOT NULL,
    Image NVARCHAR(50) NOT NULL,
    Available BIT NOT NULL,
    CategoryId NVARCHAR(20) NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(CategoryId) REFERENCES Categories(Id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
)

CREATE TABLE Cards(
    Id INT NOT NULL,
    Status INT NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Users(
    Username NVARCHAR(20) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    Enabled BIT NOT NULL,
    Fullname NVARCHAR(50) NOT NULL,
    Photo NVARCHAR(50) NOT NULL,
    Manager BIT NOT NULL,
    PRIMARY KEY(Username)
)

CREATE TABLE Bills(
    Id BIGINT NOT NULL IDENTITY(10000, 1),
    Username NVARCHAR(20) NOT NULL,
    CardId INT NOT NULL,
    Checkin DATETIME NOT NULL,
    Checkout DATETIME NULL,
    Status INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(Username) REFERENCES Users(Username) 
        ON UPDATE CASCADE,
    FOREIGN KEY(CardId) REFERENCES Cards(Id) 
        ON UPDATE CASCADE
)

CREATE TABLE BillDetails(
    Id BIGINT NOT NULL IDENTITY(100000, 1),
    BillId BIGINT NOT NULL,
    DrinkId NVARCHAR(20) NOT NULL,
    UnitPrice FLOAT NOT NULL,
    Discount FLOAT NOT NULL,
    Quantity INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(BillId) REFERENCES Bills(Id) 
        ON DELETE CASCADE,
    FOREIGN KEY(DrinkId) REFERENCES Drinks(Id) 
        ON UPDATE CASCADE
)

INSERT INTO Users (Username, Password, Enabled, Fullname, Photo, Manager) VALUES
('khoa@gmail.com', '123', 1, N'Phan Hoàng Anh Khoa', 'khoa.jpg', 1),
('binh@gmail.com', '123', 1, N'Trần Thị Bình', 'binh.jpg', 0),
('cuong@gmail.com', '123', 1, N'Lê Văn Cường', 'cuong.jpg', 0),
('dieu@gmail.com', '123', 1, N'Phạm Thị Diệu', 'dieu.jpg', 0),
('em@gmail.com', '123', 1, N'Ngô Văn Em', 'em.jpg', 0),
('hoa@gmail.com', '123', 1, N'Lý Thị Hoa', 'hoa.jpg', 0),
('huy@gmail.com', '123', 1, N'Đỗ Minh Huy', 'huy.jpg', 0),
('khanh@gmail.com', '123', 1, N'Bùi Quốc Khánh', 'khanh.jpg', 0),
('lan@gmail.com', '123', 1, N'Vũ Thị Lan', 'lan.jpg', 0),
('minh@gmail.com', '123', 1, N'Hoàng Văn Minh', 'minh.jpg', 0);

INSERT INTO Categories (Id, Name) VALUES
('C01', N'Cà phê'),
('C02', N'Trà'),
('C03', N'Nước ép'),
('C04', N'Sinh tố'),
('C05', N'Nước ngọt'),
('C06', N'Trà sữa'),
('C07', N'Nước tăng lực'),
('C08', N'Nước khoáng'),
('C09', N'Trà thảo mộc'),
('C10', N'Sữa');

INSERT INTO Drinks (Id, Name, UnitPrice, Discount, Image, Available, CategoryId) VALUES
('D01', N'Cà phê đen', 20000, 0, 'capheden.jpg', 1, 'C01'),
('D02', N'Cà phê sữa', 25000, 10, 'caphesua.jpg', 1, 'C01'),
('D03', N'Cà phê đá xay', 32000, 15, 'caphedaxay.jpg', 1, 'C01'),
('D04', N'Trà đào', 28000, 5, 'tradao.jpg', 1, 'C02'),
('D05', N'Trà chanh', 25000, 0, 'trachanh.jpg', 1, 'C02'),
('D06', N'Trà sen vàng', 30000, 10, 'trasenvang.jpg', 1, 'C02'),
('D07', N'Nước cam', 30000, 15, 'nuoccam.jpg', 1, 'C03'),
('D08', N'Nước ép dứa', 32000, 10, 'nuocepdua.jpg', 1, 'C03'),
('D09', N'Nước ép ổi', 28000, 5, 'nuocepoi.jpg', 1, 'C03'),
('D10', N'Sinh tố bơ', 35000, 5, 'sinhtobo.jpg', 1, 'C04'),
('D11', N'Sinh tố xoài', 34000, 0, 'sinhtoxoai.jpg', 1, 'C04'),
('D12', N'Sinh tố dâu', 36000, 10, 'sinhtodau.jpg', 1, 'C04'),
('D13', N'Pepsi', 15000, 0, 'pepsi.jpg', 1, 'C05'),
('D14', N'Coca-Cola', 15000, 5, 'cocacola.jpg', 1, 'C05'),
('D15', N'7Up', 15000, 0, '7up.jpg', 1, 'C05'),
('D16', N'Trà sữa trân châu', 32000, 10, 'trasua_tc.jpg', 1, 'C06'),
('D17', N'Trà sữa matcha', 34000, 15, 'trasua_matcha.jpg', 1, 'C06'),
('D18', N'Red Bull', 22000, 5, 'redbull.jpg', 1, 'C07'),
('D19', N'Number 1', 20000, 0, 'number1.jpg', 1, 'C07'),
('D20', N'Nước suối Lavie', 12000, 0, 'lavie.jpg', 1, 'C08'),
('D21', N'Nước mía', 18000, 5, 'nuocmia.jpg', 1, 'C09'),
('D22', N'Chè đậu xanh', 22000, 10, 'che_dauxanh.jpg', 1, 'C09'),
('D23', N'Chè bưởi', 25000, 0, 'che_buoi.jpg', 1, 'C09'),
('D24', N'Soda bạc hà', 28000, 10, 'soda_bacha.jpg', 1, 'C10'),
('D25', N'Matcha đá xay', 36000, 15, 'matchadaxay.jpg', 1, 'C10');

INSERT INTO Cards (Id, Status) VALUES
(1, 0), (2, 0), (3, 0), (4, 0), (5, 0), 
(6, 1), (7, 1), (8, 0), (9, 0), (10, 0), 
(11, 0), (12, 1), (13, 0), (14, 0), (15, 2),     
(16, 0), (17, 0), (18, 0), (19, 1), (20, 0), 
(21, 2), (22, 2), (23, 0), (24, 0), (25, 1),
(26, 0), (27, 2), (28, 1), (29, 0), (30, 2);              

INSERT INTO Bills (Username, CardId, Checkin, Checkout, Status) VALUES
('khoa@gmail.com', 1, '2025-05-01 07:12:35', '2025-05-01 08:45:50', 1),
('binh@gmail.com', 2, '2025-05-02 09:08:12', '2025-05-02 10:10:05', 1),
('cuong@gmail.com', 3, '2025-05-03 14:22:44', '2025-05-03 16:03:17', 0),
('dieu@gmail.com', 4, '2025-05-04 06:47:59', '2025-05-04 08:30:22', 1),
('em@gmail.com', 5, '2025-05-05 10:05:36', NULL, 0),
('hoa@gmail.com', 6, '2025-05-06 08:19:02', '2025-05-06 09:51:13', 1),
('huy@gmail.com', 7, '2025-05-07 13:35:18', NULL, 0),
('khanh@gmail.com', 8, '2025-05-08 11:03:27', '2025-05-08 12:22:41', 1),
('lan@gmail.com', 9, '2025-05-09 15:46:58', NULL, 2),
('minh@gmail.com', 10, '2025-05-10 14:50:50', '2025-05-10 16:30:11', 1),
('khoa@gmail.com', 11, '2025-05-11 08:58:07', '2025-05-11 10:00:15', 1),
('binh@gmail.com', 12, '2025-05-12 07:40:22', NULL, 0),
('cuong@gmail.com', 13, '2025-05-13 13:55:44', '2025-05-13 15:33:00', 1),
('dieu@gmail.com', 14, '2025-05-14 06:30:19', '2025-05-14 08:01:37', 1),
('em@gmail.com', 15, '2025-05-15 10:25:43', NULL, 0);

INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10001, 'D01', 10000, 10, 2),
(10001, 'D02', 10000, 15, 1);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10002, 'D03', 10000, 20, 3);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10003, 'D04', 10000, 12, 2),
(10003, 'D05', 10000, 5, 1),
(10003, 'D06', 10000, 30, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10004, 'D07', 10000, 25, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10005, 'D08', 10000, 40, 1),
(10005, 'D09', 10000, 15, 1);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10006, 'D10', 10000, 8, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10007, 'D11', 10000, 20, 1),
(10007, 'D12', 10000, 18, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10008, 'D13', 10000, 22, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10009, 'D14', 10000, 5, 1),
(10009, 'D15', 10000, 17, 3);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10010, 'D16', 10000, 30, 1),
(10010, 'D17', 10000, 10, 1),
(10010, 'D18', 10000, 20, 1);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10011, 'D19', 10000, 35, 1);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10012, 'D20', 10000, 12, 2),
(10012, 'D01', 10000, 5, 1);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10013, 'D02', 10000, 15, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10014, 'D03', 10000, 8, 1),
(10014, 'D04', 10000, 10, 2);
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10015, 'D05', 10000, 25, 2);
SELECT * FROM Bills WHERE Checkin BETWEEN '05/01/2025' AND '05/31/2025' ORDER BY Checkin ASC
SELECT * FROM Bills
DELETE FROM Bills
DBCC CHECKIDENT ('Bills', RESEED, 10000)