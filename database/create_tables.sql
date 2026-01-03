-- Tạo bảng MonHoc
CREATE TABLE MonHoc (
    MaMon INT PRIMARY KEY AUTO_INCREMENT,
    TenMon VARCHAR(100) NOT NULL,
    MoTa TEXT,
    SoTinChi INT,
    KhoaQuanLy VARCHAR(100)
);

-- Tạo bảng ChuDe
CREATE TABLE ChuDe (
    MaChuDe INT PRIMARY KEY AUTO_INCREMENT,
    TenChuDe VARCHAR(100) NOT NULL,
    MoTa TEXT,
    TuKhoa VARCHAR(255)
);

-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    MaSV INT PRIMARY KEY AUTO_INCREMENT,
    HoTen VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Lop VARCHAR(50),
    Nganh VARCHAR(100),
    KhoaHoc VARCHAR(50),
    NgayDangKy DATE
);

-- Tạo bảng TaiNguyen
CREATE TABLE TaiNguyen (
    MaTaiNguyen INT PRIMARY KEY AUTO_INCREMENT,
    TenTaiNguyen VARCHAR(200) NOT NULL,
    LoaiTaiNguyen VARCHAR(50),
    MoTa TEXT,
    DuongDan VARCHAR(255),
    NgonNgu VARCHAR(50),
    NgayTao DATE,
    TrangThai VARCHAR(50),
    MaMon INT,
    MaChuDe INT,
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon),
    FOREIGN KEY (MaChuDe) REFERENCES ChuDe(MaChuDe)
);

-- Tạo bảng LichSuSuDungTaiNguyen
CREATE TABLE LichSuSuDungTaiNguyen (
    MaLichSu INT PRIMARY KEY AUTO_INCREMENT,
    MaSV INT,
    MaTaiNguyen INT,
    ThoiGianTruyCap DATETIME,
    ThoiLuong INT,
    MucDoHoanThanh INT,
    SoLanTruyCap INT,
    DanhGiaNguoiHoc VARCHAR(255),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaTaiNguyen) REFERENCES TaiNguyen(MaTaiNguyen)
);

-- Tạo bảng GoiYTaiNguyen
CREATE TABLE GoiYTaiNguyen (
    MaGoiY INT PRIMARY KEY AUTO_INCREMENT,
    MaSV INT,
    MaTaiNguyen INT,
    DiemPhuHop FLOAT,
    LyDoGoiY TEXT,
    ThoiDiemGoiY DATETIME,
    TrangThaiXem BOOLEAN,
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaTaiNguyen) REFERENCES TaiNguyen(MaTaiNguyen)
);
