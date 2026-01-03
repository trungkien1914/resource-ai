/* =========================
   INSERT DATA FOR PROJECT
   ========================= */

-- 1. MÔN HỌC
INSERT INTO MonHoc (TenMon, MoTa, SoTinChi, KhoaQuanLy) VALUES
('Cơ sở dữ liệu', 'Thiết kế và quản lý cơ sở dữ liệu', 3, 'Công nghệ thông tin'),
('Lập trình Python', 'Python cơ bản đến nâng cao', 3, 'Công nghệ thông tin'),
('Cấu trúc dữ liệu', 'Danh sách, cây, đồ thị', 4, 'Công nghệ thông tin'),
('Trí tuệ nhân tạo', 'AI cơ bản cho sinh viên', 3, 'Công nghệ thông tin'),
('Phát triển Web', 'Frontend và Backend cơ bản', 3, 'Công nghệ thông tin');

-- 2. CHỦ ĐỀ
INSERT INTO ChuDe (TenChuDe, MoTa, TuKhoa) VALUES
('SQL cơ bản', 'Các câu lệnh SQL cơ bản', 'select,insert,update'),
('SQL nâng cao', 'Join, Subquery, Index', 'join,index,view'),
('Python cơ bản', 'Biến, vòng lặp, hàm', 'python,loop,function'),
('Python nâng cao', 'OOP, thư viện', 'oop,module'),
('Cấu trúc dữ liệu', 'Stack, Queue, Tree', 'stack,queue,tree'),
('Machine Learning', 'ML cơ bản', 'ml,ai'),
('Web Backend', 'API, Server', 'api,backend');

-- 3. SINH VIÊN
INSERT INTO SinhVien (HoTen, Email, Lop, Nganh, KhoaHoc, NgayDangKy) VALUES
('Nguyễn Văn A', 'a@gmail.com', 'CTK44', 'CNTT', '2021-2025', '2023-01-10'),
('Trần Thị B', 'b@gmail.com', 'CTK44', 'CNTT', '2021-2025', '2023-01-12'),
('Lê Văn C', 'c@gmail.com', 'CTK45', 'CNTT', '2022-2026', '2023-02-01'),
('Phạm Thị D', 'd@gmail.com', 'CTK45', 'CNTT', '2022-2026', '2023-02-05'),
('Hoàng Văn E', 'e@gmail.com', 'CTK43', 'CNTT', '2020-2024', '2022-12-20'),
('Võ Thị F', 'f@gmail.com', 'CTK44', 'CNTT', '2021-2025', '2023-01-20'),
('Đặng Văn G', 'g@gmail.com', 'CTK43', 'CNTT', '2020-2024', '2022-11-15'),
('Nguyễn Thị H', 'h@gmail.com', 'CTK45', 'CNTT', '2022-2026', '2023-02-10'),
('Trần Văn I', 'i@gmail.com', 'CTK44', 'CNTT', '2021-2025', '2023-01-25'),
('Lê Thị K', 'k@gmail.com', 'CTK43', 'CNTT', '2020-2024', '2022-10-05'),
('Phạm Văn L', 'l@gmail.com', 'CTK45', 'CNTT', '2022-2026', '2023-03-01'),
('Hoàng Thị M', 'm@gmail.com', 'CTK44', 'CNTT', '2021-2025', '2023-01-18');

-- 4. TÀI NGUYÊN
INSERT INTO TaiNguyen
(TenTaiNguyen, LoaiTaiNguyen, MoTa, DuongDan, NgonNgu, NgayTao, TrangThai, MaMon, MaChuDe) VALUES
('SQL Select cơ bản', 'Video', 'Học câu lệnh SELECT', 'link1', 'VN', '2023-01-01', 'Active', 1, 1),
('SQL Insert Update', 'PDF', 'Thêm và sửa dữ liệu', 'link2', 'VN', '2023-01-02', 'Active', 1, 1),
('Join trong SQL', 'Video', 'Join nhiều bảng', 'link3', 'VN', '2023-01-05', 'Active', 1, 2),
('Index và View', 'PDF', 'Tối ưu truy vấn', 'link4', 'VN', '2023-01-06', 'Active', 1, 2),

('Python biến và kiểu dữ liệu', 'Video', 'Python cơ bản', 'link5', 'VN', '2023-02-01', 'Active', 2, 3),
('Vòng lặp Python', 'Video', 'For, While', 'link6', 'VN', '2023-02-02', 'Active', 2, 3),
('Hàm trong Python', 'PDF', 'Định nghĩa hàm', 'link7', 'VN', '2023-02-03', 'Active', 2, 3),
('OOP trong Python', 'Video', 'Lập trình hướng đối tượng', 'link8', 'VN', '2023-02-05', 'Active', 2, 4),

('Stack và Queue', 'Video', 'Cấu trúc dữ liệu tuyến tính', 'link9', 'VN', '2023-03-01', 'Active', 3, 5),
('Tree cơ bản', 'PDF', 'Cây nhị phân', 'link10', 'VN', '2023-03-02', 'Active', 3, 5),

('Giới thiệu AI', 'Video', 'AI là gì', 'link11', 'VN', '2023-04-01', 'Active', 4, 6),
('Machine Learning cơ bản', 'Video', 'Thuật toán ML', 'link12', 'VN', '2023-04-02', 'Active', 4, 6),

('Giới thiệu Backend', 'Video', 'Backend là gì', 'link13', 'VN', '2023-05-01', 'Active', 5, 7),
('REST API', 'PDF', 'Thiết kế API', 'link14', 'VN', '2023-05-02', 'Active', 5, 7),
('Flask cơ bản', 'Video', 'Xây dựng API Flask', 'link15', 'VN', '2023-05-03', 'Active', 5, 7),
('Kết nối DB', 'Video', 'Kết nối MySQL', 'link16', 'VN', '2023-05-04', 'Active', 5, 7),
('Xác thực API', 'PDF', 'JWT cơ bản', 'link17', 'VN', '2023-05-05', 'Active', 5, 7),
('Triển khai Backend', 'Video', 'Deploy cơ bản', 'link18', 'VN', '2023-05-06', 'Active', 5, 7);

-- 5. LỊCH SỬ SỬ DỤNG
INSERT INTO LichSuSuDungTaiNguyen
(MaSV, MaTaiNguyen, ThoiGianTruyCap, ThoiLuong, MucDoHoanThanh, SoLanTruyCap, DanhGiaNguoiHoc) VALUES
(1,1,'2023-06-01 08:00',30,100,3,'Rất dễ hiểu'),
(1,2,'2023-06-02 09:00',25,80,2,'Ổn'),
(1,3,'2023-06-03 10:00',40,90,3,'Hữu ích'),
(1,4,'2023-06-04 08:30',35,70,2,'Khá khó'),

(2,1,'2023-06-01 14:00',20,60,1,'Bình thường'),
(2,5,'2023-06-02 15:00',45,100,4,'Hay'),
(2,6,'2023-06-03 16:00',30,90,3,'Dễ hiểu'),

(3,5,'2023-06-01 09:00',50,100,5,'Rất hay'),
(3,6,'2023-06-02 10:00',45,100,4,'Tốt'),
(3,7,'2023-06-03 11:00',40,90,3,'Ổn'),

(4,9,'2023-06-01 13:00',60,100,4,'Rõ ràng'),
(4,10,'2023-06-02 14:00',55,90,3,'Khá'),

(5,11,'2023-06-03 15:00',30,70,2,'Khó'),
(5,12,'2023-06-04 16:00',35,80,3,'Ổn'),

(6,13,'2023-06-01 08:00',40,100,3,'Hay'),
(6,14,'2023-06-02 09:00',30,90,2,'Tốt'),
(6,15,'2023-06-03 10:00',45,100,4,'Rất tốt'),

(7,1,'2023-06-01 07:30',20,50,1,'Khó'),
(7,2,'2023-06-02 08:30',25,60,2,'Tạm'),

(8,5,'2023-06-01 10:00',35,80,2,'Ổn'),
(8,6,'2023-06-02 11:00',40,90,3,'Dễ hiểu'),

(9,9,'2023-06-03 14:00',60,100,4,'Rất hay'),
(9,10,'2023-06-04 15:00',55,90,3,'Tốt'),

(10,13,'2023-06-01 16:00',45,100,4,'Hay'),
(10,15,'2023-06-02 17:00',40,90,3,'Ổn');
