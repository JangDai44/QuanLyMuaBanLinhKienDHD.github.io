USE [master]
GO
/****** Object:  Database [QuanLyLinhKien]    Script Date: 12/13/2020 11:10:10 PM ******/
CREATE DATABASE [QuanLyLinhKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyLinhKien', FILENAME = N'D:\QuanLyLinhKien.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyLinhKien_log', FILENAME = N'D:\QuanLyLinhKien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyLinhKien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyLinhKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyLinhKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyLinhKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyLinhKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyLinhKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyLinhKien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyLinhKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyLinhKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyLinhKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyLinhKien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyLinhKien]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maLinhKien] [varchar](10) NOT NULL,
	[maHoaDon] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[mucGiamGia] [int] NOT NULL,
 CONSTRAINT [PK__ChiTietH__5B9539F40E234FEE] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC,
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[maKhachHang] [varchar](10) NOT NULL,
	[maNhanVien] [varchar](10) NOT NULL,
	[ngayDatHang] [date] NOT NULL,
	[ngayChuyenHang] [date] NOT NULL,
	[ngayGiaoHang] [date] NOT NULL,
	[noiNhanGiaoHang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__HoaDon__026B4D9A763F5BB1] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [varchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](100) NOT NULL,
	[sDT] [varchar](10) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinhKien]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinhKien](
	[maNCC] [varchar](10) NOT NULL,
	[maLinhKien] [varchar](10) NOT NULL,
	[tenLinhKien] [nvarchar](200) NOT NULL,
	[loaiLinhKien] [nvarchar](20) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[giaBan] [money] NOT NULL,
	[baoHanh] [int] NOT NULL,
	[moTa] [ntext] NOT NULL,
	[ngayNhap] [date] NOT NULL,
 CONSTRAINT [PK__LinhKien__EBB38D2D2B4E155F] PRIMARY KEY CLUSTERED 
(
	[maLinhKien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNCC] [varchar](10) NOT NULL,
	[tenNCC] [nvarchar](30) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[sDT] [varchar](10) NOT NULL,
	[email] [varchar](30) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[maNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/13/2020 11:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](10) NOT NULL,
	[tenNhanVien] [nvarchar](30) NULL,
	[chucVu] [nvarchar](20) NULL,
	[luong] [money] NULL,
	[diaChi] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[sDT] [varchar](10) NULL,
	[cMND] [varchar](9) NULL,
	[matKhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000001', N'HD10000000', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000005', N'HD10000001', 5, 20)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000007', N'HD10000000', 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000008', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000012', N'HD10000001', 4, 20)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000017', N'HD10000002', 1, 0)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000019', N'HD10000001', 4, 20)
INSERT [dbo].[ChiTietHoaDon] ([maLinhKien], [maHoaDon], [soLuong], [mucGiamGia]) VALUES (N'LK10000020', N'HD10000002', 1, 0)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000000', N'KH10000001', N'NV10000000', CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), N'HCM')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000001', N'KH10000002', N'NV10000000', CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), N'HaNoi')
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [ngayDatHang], [ngayChuyenHang], [ngayGiaoHang], [noiNhanGiaoHang]) VALUES (N'HD10000002', N'KH10000003', N'NV10000001', CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), CAST(0xDE410B00 AS Date), N'Ha Noi')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000001', N'Nguyễn Văn A', N'HCM', N'0123456789', N'sss')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000002', N'Trần Văn B', N'Ha Nội', N'0222333555', N'abc@gmail.com')
INSERT [dbo].[KhachHang] ([maKhachHang], [tenKhachHang], [diaChi], [sDT], [email]) VALUES (N'KH10000003', N'Lê Thị C', N'Ha Noi', N'0988638610', N'')
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000001', N'LK10000000', N'Ổ cứng HDD NCC1000000 Backup Plus ', N'HDD', 28, 1640000.0000, 36, N'Tên sản phẩm: ổ cứng HDD NCC1000000 1TB Backup Plus 3.0, 2.5'''' (Đỏ)
- Dung lượng: 1TB
- Kích thước: 2.5""
- Kết nối: USB 3.0', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000002', N'LK10000001', N'Ổ cứng HDD NCC1000000 Expansion Desktop 3TB 3.5" 3.0 ', N'HDD', 49, 2890000.0000, 24, N'Tên sản phẩm: ổ cứng HDD NCC1000000 Expansion Desktop 3TB 3.5"" 3.0 (STEB3000300)
- Dung lượng: 3TB
- Kích thước: 3.5""
- Kết nối: USB 3.0
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000001', N'LK10000002', N'Tản nhiệt CPU AIO NCC1000001 Masterliquid  ', N'Tản nhiệt', 62, 3840000.0000, 36, N'"Tên sản phẩm: Tản nhiệt CPU AIO CM Masterliquid ML240P Mirage

- Tên sản phẩm: MASTERLIQUID ML240P MIRAGE
- Dạng tản nhiệt: Tản nước
- Chất liệu: Nhôm"
', CAST(0xAF410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000012', N'LK10000003', N'Đế tản nhiệt Laptop NCC1000002 Windpal Mini ', N'Tản nhiệt', 21, 209000.0000, 12, N'"Tên sản phẩm: Tản nhiệt/ Fan laptop Deep cool Windpal Mini
- Cổng kết nối: USB
- Phù hợp laptop 15.6"" trở xuống
- Tốc độ quạt: 1000 ± 10% rpm
- Kích thước: 140x140x15 mm
- Trọng lượng: 575g"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000005', N'LK10000004', N'RAM desktop NCC1000003 AD4U240038G17-R (1x8GB) DDR4 2400MHz ', N'HDD', 50, 1490000.0000, 24, N'"Tên sản phẩm: Bộ nhớ DDR4 NCC1000003 8GB (2400) AD4U240038G17-R
- Dung lượng: 1 x 8GB
- Thế hệ: DDR4
- Bus: 2400MHz"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000016', N'LK10000005', N'Case máy tính NCC1000004 Night Hawk - Mid Tower ', N'Case', 15, 990000.0000, 12, N'"Tên sản phẩm: Thùng máy/ Case NCC1000004 Night Hawk
- Hỗ trợ mainboard: Mini-ITX, Micro-ATX, ATX, Extended-ATX
- Khay mở rộng tối đa: 2 x 3.5"", 4 x 2.5""
- USB: , 2 x USB 3.0"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000005', N'LK10000006', N'RAM server NCC1000005 KSM24ES8/8ME (1x8GB) DDR4 ', N'RAM', 31, 1490000.0000, 24, N'"Tên sản phẩm: Bộ nhớ/ Ram NCC1000005 8GB ECC DDR4 2400 (KSM24ES8/8ME)
- Dung lượng: 1 x 8GB
- Thế hệ: DDR4
- Bus: 2400MHz
- Cas: 17"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000000', N'LK10000007', N'RAM laptop NCC1000015 (1x8GB) DDR4 2400MHz ', N'RAM', 22, 980000.0000, 36, N'"Tên sản phẩm: Bộ nhớ laptop DDR4 NCC1000015 8GB (2400) - CT8G4SFS824A
- Dung lượng: 1 x 8GB
- Thế hệ: DDR4
- Bus: 2400MHz
- Cas: 17"
', CAST(0xC8410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000024', N'LK10000008', N'Bàn phím cơ NCC1000006 ROG Strix Scope (Red switch) ', N'Bàn phím', 46, 3590000.0000, 12, N'"Tên sản phẩm: Bàn phím cơ NCC1000006 ROG Strix Scope (Red switch)
- Bàn phím cơ
- Kết nối: USB
- Switch: Cherry MX"
', CAST(0x8C410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000009', N'Bàn phím cơ NCC1000007 3084 World Tour - Blue Switch ', N'Bàn phím', 47, 1299000.0000, 12, N'"Tên sản phẩm: Bàn phím cơ NCC1000007 3084 World Tour - Tokyo Blue Switch (84 keys)
- Bàn phím cơ
- Kết nối: USB Type-C
- Switch: NCC1000007 Blue
- phụ kiện đi kèm: Key puller, Cover chống bụi, cáp USB-C, Keycap tặng kèm"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000010', N'Bàn phím NCC1000007 3108S RGB PRO Blue Switch ', N'HDD', 28, 2399000.0000, 12, N'"Tên sản phẩm: Bàn phím NCC1000007 3108S RGB PRO Blue Switch (108 keys) (Đen)
- Bàn phím cơ
- Kết nối: USB Type-C
- Switch: Cherry MX Blue
- phụ kiện đi kèm: Key puller, Cover chống bụi, cáp USB-C"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000011', N'Bàn phím NCC1000008 EK880 Blue Switch ', N'Bàn phím', 45, 749000.0000, 12, N'"Tên sản phẩm: Bàn phím cơ NCC1000008 EK880 Blue Switch
- Kiểu kết nối: Có dây
- Switch: Blue D switch
- Đèn nền: RGB
- Kích thước: Tenkeyless
- Màu sắc: Đen"
', CAST(0xC3410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000009', N'LK10000012', N'Màn Hình cong NCC1000009 27" LC27F397FHEXXV ', N'Màn hình', 13, 4490000.0000, 12, N'"Tên sản phẩm: Màn hình LCD NCC1000009 27'''' LC27F397FHEXXV
- Kích thước: 27""
- Độ phân giải: 1920 x 1080 ( 16:9 )
- Tần số quét: 60Hz
- Thời gian phản hồi: 4 ms"
', CAST(0xB5410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000009', N'LK10000013', N'Màn hình cong NCC1000010 24" ED242QR ', N'Màn hình', 20, 3690000.0000, 12, N'"Tên sản phẩm: Màn hình cong NCC1000010 24"" ED242QR
- Kích thước: 23.6"" (1920 x 1080), Tỷ lệ 16:9
- Tấm nền VA, Góc nhìn: 178 (H) / 178 (V)
- Tần số quét: 75Hz , Thời gian phản hồi 4 ms
- HIển thị màu sắc: 16.7 triệu màu
- Cổng hình ảnh: , 1 x HDMI, 1 x VGA/D-sub"
', CAST(0xB5410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000014', N'Màn hình LCD NCC1000006 24" VL249HE (1920 x 1080/IPS/75Hz/5 ms ', N'Màn hình', 19, 3850000.0000, 12, N'"Tên sản phẩm: Màn hình LCD NCC1000006 24"" VL249HE
- Kích thước: 23.8"" (1920 x 1080), Tỷ lệ 16:9
- Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V)
- Tần số quét: 75Hz , Thời gian phản hồi 5 ms
- Cổng hình ảnh: , 1 x HDMI, 1 x VGA/D-sub"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000009', N'LK10000015', N'Màn hình LCD NCC1000011 18.5" D19-10 (61E0KAR6WW) (1366 x 768/TN/60Hz/5 ms ', N'Màn hình', 48, 1590000.0000, 12, N'"Tên sản phẩm: Màn hình LCD NCC1000011 18.5"" D19-10 (61E0KAR6WW)
- Kích thước: 18.5"" (1366 x 768), Tỷ lệ 16:9
- Tấm nền TN, Góc nhìn: 90 (H) / 65 (V)
- Tần số quét: 60Hz , Thời gian phản hồi 5 ms
- HIển thị màu sắc: 16.7 triệu màu
- Cổng hình ảnh: , 1 x HDMI, 1 x VGA/D-sub"', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000017', N'LK10000016', N'Chuột máy tính NCC1000008 EM908 ', N'Chuột', 100, 349000.0000, 12, N'"Tên sản phẩm: Chuột máy tính NCC1000008 EM908
- Kiểu kết nối: Có dây
- Cảm biến: BRAVO ATG4090
- Độ phân giải: 6000 DPI
- Màu sắc: Đen"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000014', N'LK10000017', N'Chuột máy tính có dây NCC1000012 EM602 (Đen) ', N'Chuột', 98, 149000.0000, 6, N'"Tên sản phẩm: Chuột máy tính có dây NCC1000012 EM602 (Đen)
- Chuột chơi game NCC1000012 EM602 
- Chuẩn kết nối USB, độ phân giải 1200DPI 
- Chất liệu nhựa phủ lớp chống nước 
- Switch: Hunao cho độ bền lên đến 10 triệu lần nhấn 
- Tương thích hệ điều hành: Windows 98 / 2000 / ME / NT / XP / win 7"
', CAST(0xC9410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000022', N'LK10000018', N'Chuột gaming EMS610 (Đen) ', N'Chuột', 59, 259000.0000, 6, N'"Tên sản phẩm: Chuột máy tính NCC1000012 EMS610 (Đen)

- Thương hiệu: NCC1000012 - Mã sản phẩm: EMS610 - Kích thước:125 x 66 x 39 mm"
', CAST(0x91410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000019', N'Mainboard NCC1000006 EX-B365M-V5 ', N'HDD', 66, 1750000.0000, 12, N'"Tên sản phẩm: Bo mạch chính/ Mainboard NCC1000006 EX-B365M-V5
- Chuẩn mainboard: Micro-ATX
- Socket: LGA 1151-v2 , Chipset: B365
- Hỗ trợ RAM: DDR4 , tối đa 32GB
- Cổng cắm lưu trữ: 1 x M.2 SATA/NVMe; 4 x SATA 3 6Gb/s; Hỗ trợ NCC1000018 Optane
- Cổng xuất hình: 1 x HDMI; 1 x VGA/D-sub"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000022', N'LK10000020', N'USB 256GB NCC1000013 Ultra Flair ', N'USB', 199, 940000.0000, 6, N'"Tên sản phẩm: ổ cứng di động/ USB NCC1000013 Ultra Flair 256GB SDCZ73-256G-G46
- NCC1000013 Ultra Flair USB 3.0 Flash Drive 
- Tốc lên đến 150MB/s 
- Password Protech giúp bảo mật an toàn dữ liệu 
- Hỗ trợ Window 7 trở lên, Mac OS 10.9 trở lên"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000021', N'LK10000021', N'Cáp Nối Nguồn NCC1000001 Sleeved Extension ', N'Cáp', 50, 670000.0000, 12, N'"Tên sản phẩm: Cáp Nối Nguồn NCC1000001 Sleeved Extension CMA-SEST16XXBK1-GL (Đen)
- Model: CMA-SEST16XXBK1-GL 
- CONNECTORS: 1x 24 Pin, 1x 8(4+4) Pin, 2x PCI-e 6 Pin, 2x PCI-e 8 Pin 
- CABLE CLIP NUMBERS: 4x 24 Pin, 12x 8 Pin, 8x 6 Pin
- Màu sắc: Đen"
', CAST(0xC9410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000003', N'LK10000022', N'Ổ cứng SSD Western Digital NCC1000014 Green 240GB M.2 2280 SATA 3 ', N'SSD', 30, 930000.0000, 15, N'"Tên sản phẩm: Ổ cứng SSD NCC1000014 Green 240GB M2-2280 (NCC1000014S240G2G0B)
- Dung lượng: 240GB
- Kích thước: M.2 2280
- Kết nối: M.2 SATA
- Tốc độ đọc / ghi (tối đa): 545MB/s"', CAST(0xC2410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000012', N'LK10000023', N'Ổ cứng SSD Western Digital NCC1000014 Green 520GB M.2 2280 SATA 3 ', N'SSD', 20, 930000.0000, 12, N'"Tên sản phẩm: Ổ cứng SSD NCC1000014 Green 520GB M2-2280 (NCC1000014S240G2G0B)
- Dung lượng: 520GB
- Kích thước: M.2 2280
- Kết nối: M.2 SATA
- Tốc độ đọc / ghi (tối đa): 545MB/s"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000005', N'LK10000024', N'Ổ cứng SSD Western Digital Blue 500GB M.2 2280 SATA 3 ', N'SSD', 30, 1790000.0000, 12, N'"Tên sản phẩm: Ổ cứng SSD NCC1000014 Blue 500GB M2-2280 (NCC1000014S500G2B0B)
- Dung lượng: 500GB
- Kích thước: M.2 2280
- Kết nối: M.2 SATA
- Tốc độ đọc / ghi (tối đa): 560MB/s / 530MB/s"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000005', N'LK10000025', N'Ổ cứngHDD NCC1000000 BARRACUDA 2TB 3.5" Sata ', N'HDD', 100, 1590000.0000, 12, N'"Tên sản phẩm: Ổ cứng HDD NCC1000000 BARRACUDA 2TB 3.5"" Sata (ST2000DM005)
- Dung lượng: 2TB
- Kích thước: 3.5""
- Kết nối: SATA 3
- Tốc độ vòng quay: 5400RPM
- Cache: 256MB"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000007', N'LK10000027', N'Đế tản nhiệt Laptop NCC1000001 C3 ', N'Tản nhiệt', 60, 230000.0000, 36, N'"Tên sản phẩm: Tản nhiệt/ Fan laptop CM C3
- Cổng kết nối: USB
- Tốc độ quạt: 700 ± 10 % RPM
- Kích thước: 322 x 290 x 50 mm
- Trọng lượng: 0,55 kg
- Màu sắc: Đen"
', CAST(0xD7410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000001', N'LK10000028', N'Tản khí NCC1000001 XDream i117 ', N'Tản nhiệt', 50, 220000.0000, 12, N'"Tên sản phẩm: Quạt CPU NCC1000001 X Dream i117
- Kích thước 112.2 x 112.2 x 60.4 mm - Tốc độ 1,800 ± 10 % RPM - Độ ồn 19 dBA - Lưu lượng gió 36.5 CFM ±10% - Tương thích NCC1000018 1156 / 1155 / 1151 / 1150 / 775"
', CAST(0xC2410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000005', N'LK10000029', N'RAM laptop NCC1000015 (1x8GB) DDR4 2400MHz ', N'HDD', 30, 980000.0000, 12, N'"Tên sản phẩm: Bộ nhớ laptop DDR4 NCC1000015 8GB (2400) - CT8G4SFS824A
- Dung lượng: 1 x 8GB
- Thế hệ: DDR4
- Bus: 2400MHz
- Cas: 17"
', CAST(0xC1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000030', N'Chuot', N'Chuột', 100, 500000.0000, 12, N'Ngon, bổ, rẻ





















hjgjgjhhjgjhg', CAST(0xDF410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000000', N'LK10000031', N'z', N'HDD', 22, 20000.0000, 22, N'asdad', CAST(0xDF410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000000', N'LK10000032', N'HHD', N'HDD', 100, 500000.0000, 24, N'asdasdasd', CAST(0xE2410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000006', N'LK10000033', N'Chuột', N'Chuột', 100, 500000.0000, 100, N'alksjdkslad', CAST(0xE1410B00 AS Date))
INSERT [dbo].[LinhKien] ([maNCC], [maLinhKien], [tenLinhKien], [loaiLinhKien], [soLuongTon], [giaBan], [baoHanh], [moTa], [ngayNhap]) VALUES (N'NCC1000000', N'LK10000034', N'Chuoit', N'HDD', 0, 500000.0000, 12, N'asdsad', CAST(0xE5410B00 AS Date))
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000000', N'SEAGATE', N'TPHCM', N'0123456798', N'')
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000001', N'Cooler Master', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000002', N'DEEPCOOL', N'THPCH', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000003', N'ADATA', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000004', N'AeroCool', N'TPHCM', N'0123456798', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000005', N'KINGSTON', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000006', N'ASUS', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000007', N'AKKO', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000008', N'DAREU', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000009', N'SAMSUNG', N'TPHCM', N'0123456798', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000010', N'ACER', N'HANOI', N'0123456798', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000011', N'Lenovo', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000012', N'E-Dra', N'TPHCM', N'0123456798', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000013', N'SANDISK', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000014', N'WD', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000015', N'CRUCIAL', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000016', N'SAMA', N'HANOI ', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000017', N'Khác', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000018', N'INTEL', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000019', N'AMD', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000020', N'KINGMAX', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000021', N'G.SKILL', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000022', N'GIGABYTE', N'TPHCM', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000023', N'UNITEK', N'HANOI', N'0123456789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000024', N'MSI', N'TPHCM', N'0123465789', NULL)
INSERT [dbo].[NhaCungCap] ([maNCC], [tenNCC], [diaChi], [sDT], [email]) VALUES (N'NCC1000025', N'ASRock', N'HANOI', N'0123456798', NULL)
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000000', N'Nguyễn Đình Linh', N'Bán Hàng', 2.0000, N'Lâm Đồng', 1, N'0123465798', N'199999999', N'123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000001', N'aaaa', N'Quản Lý', 43.0000, N'asdasd', 0, N'0326031916', N'123456789', N'123456')
INSERT [dbo].[NhanVien] ([maNhanVien], [tenNhanVien], [chucVu], [luong], [diaChi], [gioiTinh], [sDT], [cMND], [matKhau]) VALUES (N'NV10000002', N'Hậu', N'Bán Hàng', 4.0000, N'ff', 1, N'1234567890', N'234567890', N'456789')
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  CONSTRAINT [DF_ChiTietHoaDon_mucGiamGia]  DEFAULT ((0)) FOR [mucGiamGia]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__maHoa__29572725] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__maHoa__29572725]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHo__maLin__286302EC] FOREIGN KEY([maLinhKien])
REFERENCES [dbo].[LinhKien] ([maLinhKien])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHo__maLin__286302EC]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__maKhachH__20C1E124] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__maKhachH__20C1E124]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__maNhanVi__21B6055D] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__maNhanVi__21B6055D]
GO
ALTER TABLE [dbo].[LinhKien]  WITH CHECK ADD  CONSTRAINT [FK__LinhKien__maNCC__1BFD2C07] FOREIGN KEY([maNCC])
REFERENCES [dbo].[NhaCungCap] ([maNCC])
GO
ALTER TABLE [dbo].[LinhKien] CHECK CONSTRAINT [FK__LinhKien__maNCC__1BFD2C07]
GO
USE [master]
GO
ALTER DATABASE [QuanLyLinhKien] SET  READ_WRITE 
GO
