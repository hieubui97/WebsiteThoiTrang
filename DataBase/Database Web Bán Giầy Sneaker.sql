USE [master]
GO
/****** Object:  Database [WebsiteBanGiaySneaker]    Script Date: 11/23/2019 8:02:48 PM ******/
CREATE DATABASE [WebsiteBanGiaySneaker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteBanGiaySneaker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebsiteBanGiaySneaker.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebsiteBanGiaySneaker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebsiteBanGiaySneaker_log.ldf' , SIZE = 12608KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteBanGiaySneaker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET QUERY_STORE = OFF
GO
USE [WebsiteBanGiaySneaker]
GO
/****** Object:  User [oguynha]    Script Date: 11/23/2019 8:02:48 PM ******/
CREATE USER [oguynha] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[CHITIETHD]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHD](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[MaSize] [int] NOT NULL,
	[MaMau] [int] NOT NULL,
 CONSTRAINT [PK__CHITIETH__F557D6E0DF5C54B7] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC,
	[MaMau] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPN]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPN](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
	[MaSize] [int] NOT NULL,
	[MaMau] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK__CHITIETP__F557B771398DF526] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC,
	[MaSize] ASC,
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSP]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSP](
	[MaSP] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
	[MaMau] [int] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaSize] ASC,
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DCGiao] [nvarchar](50) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[ThanhToan] [nvarchar](20) NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[HoTen] [nvarchar](30) NULL,
	[Email] [varchar](30) NULL,
	[SDT] [nchar](11) NULL,
 CONSTRAINT [PK__DONHANG__2725866162885E81] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1000,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Sdt] [varchar](11) NOT NULL,
	[MatKhau] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMau] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCC]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Sdt] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Sdt] [varchar](11) NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [varchar](12) NOT NULL,
	[MatKhau] [varchar](15) NOT NULL,
	[QuyenNV] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Sdt] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[MaNV] [int] NULL,
	[MaNCC] [int] NULL,
	[TongTien] [decimal](18, 0) NULL,
	[TinhTrang] [nvarchar](20) NULL,
 CONSTRAINT [PK__PHIEUNHA__2725E7F049779E07] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Anh] [varchar](50) NULL,
	[MaNSX] [int] NOT NULL,
	[SoLuongTong] [int] NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[Anh2] [varchar](50) NULL,
	[Anh3] [varchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK__SANPHAM__2725081CACC89BF4] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/23/2019 8:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (1, 1, 2, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (1, 2, 1, CAST(1500000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (2, 3, 2, CAST(1550000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (2, 4, 5, CAST(2000000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (4, 6, 10, CAST(3200000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (4, 6, 1, CAST(3200000 AS Decimal(18, 0)), 2, 2)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (5, 9, 2, CAST(3600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (6, 1, 1, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (6, 2, 1, CAST(1500000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (6, 3, 1, CAST(1550000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (6, 6, 1, CAST(3200000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (7, 1, 1, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (8, 3, 1, CAST(1550000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (9, 6, 1, CAST(3200000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (9, 6, 1, CAST(3200000 AS Decimal(18, 0)), 1, 7)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (10, 8, 1, CAST(2100000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (11, 1, 7, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (11, 2, 1, CAST(1500000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (12, 1, 3, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETHD] ([MaDH], [MaSP], [SoLuong], [DonGia], [MaSize], [MaMau]) VALUES (13, 1, 1, CAST(1600000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (1, 4, 20, CAST(1200000 AS Decimal(18, 0)), 1, 1, CAST(130000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (1, 4, 100, CAST(1300000 AS Decimal(18, 0)), 1, 7, CAST(130000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (2, 5, 50, CAST(2000000 AS Decimal(18, 0)), 1, 5, CAST(100000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (2, 6, 100, CAST(2000000 AS Decimal(18, 0)), 1, 7, CAST(200000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (3, 4, 100, CAST(1300000 AS Decimal(18, 0)), 1, 1, CAST(120000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (3, 4, 12, CAST(3000000 AS Decimal(18, 0)), 1, 2, CAST(120000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (3, 4, 100, CAST(1200000 AS Decimal(18, 0)), 1, 7, CAST(120000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETPN] ([MaPN], [MaSP], [SoLuong], [Gia], [MaSize], [MaMau], [ThanhTien]) VALUES (3, 5, 1300000, CAST(20 AS Decimal(18, 0)), 1, 7, CAST(26000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (1, 1, 1, 85)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (1, 1, 2, 210)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (1, 3, 1, 50)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (2, 1, 1, 53)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (2, 1, 3, 80)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (3, 1, 1, 100)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (3, 3, 1, 15)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (4, 1, 1, 215)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (4, 1, 2, 24)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (4, 1, 7, 200)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (5, 1, 1, 5)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (5, 1, 7, 2600000)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 1, 13)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 2, 36)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 3, 26)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 4, 10)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 5, 20)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 6, 30)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 7, 109)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 1, 8, 15)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 2, 1, 2)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (6, 2, 2, 9)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (7, 1, 1, 550)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (8, 1, 1, 199)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (9, 1, 1, 298)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (10, 1, 1, 200)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (11, 1, 1, 150)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (12, 1, 1, 30)
INSERT [dbo].[CHITIETSP] ([MaSP], [MaSize], [MaMau], [SoLuong]) VALUES (13, 1, 1, 250)
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (1, 1009, 1, CAST(N'2018-06-16T00:09:27.070' AS DateTime), CAST(N'2018-06-16T00:28:28.927' AS DateTime), N'345 Núi Thành', CAST(4700000 AS Decimal(18, 0)), N'Đã thanh toán', N'Đã duyệt', N'Hoàng Oanh', N'hoangoanh@gmail.com', N'0963231425 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (2, NULL, 1, CAST(N'2018-06-16T00:24:35.580' AS DateTime), NULL, N'K382 Hùng vương Đà Nẵng', CAST(13100000 AS Decimal(18, 0)), NULL, N'Đã duyệt', N'Hà Quang Ảnh', N'haquanganh00@gmail.com', N'01689835922')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (3, NULL, 1, CAST(N'2018-06-16T00:34:24.007' AS DateTime), NULL, N'82 Trưng Nhị Đà Nẵng', CAST(14600000 AS Decimal(18, 0)), NULL, N'Đã hủy', N'Lê Hoàng Nam', N'lehoangnam123@gmail.com', N'01689835923')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (4, 1000, 1, CAST(N'2018-06-16T00:36:43.553' AS DateTime), NULL, N'Đà Nẵng', CAST(35200000 AS Decimal(18, 0)), N'Đã thanh toán', N'Đã duyệt', N'Nguyễn Văn An', N'an@gmail.com', N'0985648214 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (5, 1000, 1, CAST(N'2018-06-16T00:37:08.330' AS DateTime), NULL, N'Đà Nẵng', CAST(7200000 AS Decimal(18, 0)), N'Đã thanh toán', N'Đã duyệt', N'Nguyễn Văn An', N'an@gmail.com', N'0985648214 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (6, 1000, NULL, CAST(N'2018-06-16T00:41:39.967' AS DateTime), NULL, N'Đà Nẵng', CAST(7850000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Nguyễn Văn An', N'an@gmail.com', N'0985648214 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (7, 1009, NULL, CAST(N'2018-06-16T00:42:20.777' AS DateTime), NULL, N'345 Núi Thành', CAST(1600000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Hoàng Oanh', N'hoangoanh@gmail.com', N'0963231425 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (8, 1009, NULL, CAST(N'2018-06-16T00:42:28.073' AS DateTime), NULL, N'345 Núi Thành', CAST(1550000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Hoàng Oanh', N'hoangoanh@gmail.com', N'0963231425 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (9, 1009, NULL, CAST(N'2018-06-16T00:42:39.153' AS DateTime), NULL, N'345 Núi Thành', CAST(6400000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Hoàng Oanh', N'hoangoanh@gmail.com', N'0963231425 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (10, NULL, NULL, CAST(N'2018-06-16T00:43:54.177' AS DateTime), NULL, N'Đà Nẵng', CAST(2100000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Lê Xuân Hải', N'lexuanhaiglpt@gmail.com', N'0986532357 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (11, 1009, NULL, CAST(N'2018-06-16T07:12:10.533' AS DateTime), NULL, N'345 Núi Thành', CAST(12700000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Hoàng Oanh', N'hoangoanh@gmail.com', N'0963231425 ')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (12, NULL, 1, CAST(N'2018-06-16T09:33:48.997' AS DateTime), CAST(N'2018-06-16T09:34:36.740' AS DateTime), N'K382 Hùng vương Đà Nẵng', CAST(4800000 AS Decimal(18, 0)), N'Đã thanh toán', N'Đã duyệt', N'Hà Quang Ảnh', N'haquanganh000@gmail.com', N'01689835922')
INSERT [dbo].[DONHANG] ([MaDH], [MaKH], [MaNV], [NgayDat], [NgayGiao], [DCGiao], [TongTien], [ThanhToan], [TinhTrang], [HoTen], [Email], [SDT]) VALUES (13, 1000, NULL, CAST(N'2019-05-29T17:31:49.267' AS DateTime), NULL, N'Đà Nẵng', CAST(1600000 AS Decimal(18, 0)), NULL, N'Chưa duyệt', N'Nguyễn Văn An', N'an@gmail.com', N'0985648214 ')
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1000, N'Nguyễn Văn An', N'Nam', N'Đà Nẵng', N'an@gmail.com', N'0985648214', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1001, N'Nguyễn Văn Tuấn', N'Nam', N'Đà Nẵng', N'tuan@gmail.com', N'0975648214', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1002, N'Ngọc Hằng', N'Nữ', N'Đà Nẵng', N'hang@gmail.com', N'0975648277', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1003, N'Nguyễn Minh Ngọc', N'Nam', N'Đà Nẵng', N'ngoc@gmail.com', N'0975648217', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1004, N'Lê Xuân Hải', N'Nam', N'K382, Hùng Vương', N'lexuanhai@gmail.com', N'0963265421', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1006, N'Hồ Văn Tân', N'Nam', N'02 Cao Thắng', N'hovantan@gmail.com', N'0956213201', N'02132')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1009, N'Hoàng Oanh', N'Nữ', N'345 Núi Thành', N'hoangoanh@gmail.com', N'0963231425', N'123')
INSERT [dbo].[KHACHHANG] ([MAKH], [TenKH], [GioiTinh], [DiaChi], [Email], [Sdt], [MatKhau]) VALUES (1010, N'Hà Quang Ảnh', N'Nam', N'K382 Hùng Vương', N'haquanganh000@gmail.com', N'0963265325', N'123')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (1, N'Xanh')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (2, N'Vàng')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (3, N'Đỏ')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (4, N'Xanh Dương')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (5, N'Xanh Lục')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (6, N'Trắng')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (7, N'Đen')
INSERT [dbo].[MauSac] ([MaMau], [Color]) VALUES (8, N'Hồng')
SET IDENTITY_INSERT [dbo].[MauSac] OFF
SET IDENTITY_INSERT [dbo].[NCC] ON 

INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [Sdt]) VALUES (1, N'Giày TMT', N'Đà Nẵng', N'giaytmt@gmail.com', N'0123456787')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [Sdt]) VALUES (2, N'Shoe Store', N'Hà Nội', N'shoestore@gmail.com', N'0123456799')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [Sdt]) VALUES (3, N'Shoe Blu Shop', N'Đà Nẵng', N'shoeblushop@gmail.com', N'0123456785')
SET IDENTITY_INSERT [dbo].[NCC] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [Email], [Sdt], [GioiTinh], [NgaySinh], [CMND], [MatKhau], [QuyenNV]) VALUES (1, N'Admin', N'Hà Nội', N'admin@gmail.com', N'0123456789', N'Nam', CAST(N'1998-01-01' AS Date), N'111111111199', N'1', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [Email], [Sdt], [GioiTinh], [NgaySinh], [CMND], [MatKhau], [QuyenNV]) VALUES (3, N'Đỗ Tứ Hải', N'Đà Nẵng', N'hai@gmail.com', N'0123456799', N'Nữ', CAST(N'1998-05-12' AS Date), N'111111111112', N'111', N'0')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [Email], [Sdt], [GioiTinh], [NgaySinh], [CMND], [MatKhau], [QuyenNV]) VALUES (12, N'Hoàng Quang Minh', N'Hà Nam', N'minh@gmail.com', N'0123456787', N'Nam', CAST(N'1998-02-24' AS Date), N'123335515141', N'123456', N'1')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[NSX] ON 

INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [DiaChi], [Email], [Sdt]) VALUES (1, N'Nike', N'Anh', N'nike@gmail.com', N'0985688214')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [DiaChi], [Email], [Sdt]) VALUES (2, N'Adidas', N'Pháp', N'adidas@gmail.com', N'0985108214')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [DiaChi], [Email], [Sdt]) VALUES (3, N'Puma', N'Mỹ', N'puma@gmail.com', N'0985647214')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [DiaChi], [Email], [Sdt]) VALUES (4, N'New Balance', N'Đức', N'newbalance@gmail.com', N'0985998214')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX], [DiaChi], [Email], [Sdt]) VALUES (5, N'Converse', N'Nga', N'conver@gmail.com', N'0985648214')
SET IDENTITY_INSERT [dbo].[NSX] OFF
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien], [TinhTrang]) VALUES (1, CAST(N'2018-06-16T00:00:00.000' AS DateTime), 1, 1, CAST(260000000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien], [TinhTrang]) VALUES (2, CAST(N'2018-06-16T00:00:00.000' AS DateTime), 1, 3, CAST(300000000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien], [TinhTrang]) VALUES (3, CAST(N'2018-06-16T00:00:00.000' AS DateTime), 1, 2, CAST(386000000 AS Decimal(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (1, N'Nike Air Presto Flyknit Ultra', N'NikeAirPrestoFlyknitUltra_black_1.jpg', 1, 663, CAST(1600000 AS Decimal(18, 0)), N'NikeAirPrestoFlyknitUltra_black_2.jpg', N'NikeAirPrestoFlyknitUltra_black_3.jpg', N'Bắt đầu từ ngày 3 tháng 5, Nike Air Presto Flyknit Ultra sẽ hoàn toàn tùy chỉnh được thông qua NIKEiD. Có nhiều hơn: Năm câu lạc bộ chạy (được chọn bởi vì mỗi người đại diện cho ý nghĩa của việc thúc đẩy ranh giới chạy và sáng tạo) từ khắp nơi trên thế giới cũng tạo ra những người xây dựng iD độc đáo cho React. Điều đó có nghĩa là các tính năng thiết kế bổ sung của mỗi nhóm, bao gồm lót lót, vòng gót, ly gót và bảng màu, đều có sẵn.Để hiển thị các khả năng, mỗi phi hành đoàn thiết kế một chiếc giày có tính năng chi tiết đại diện cho thành phố của họ và những gì được họ đi.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (2, N'Nike Roshe One 2018', N'NikeRosheOne2018_black_1.jpg', 1, 269, CAST(1500000 AS Decimal(18, 0)), N'NikeRosheOne2018_black_2.jpg', N'NikeRosheOne2018_black_3.jpg', N'Bắt đầu từ ngày 3 tháng 5, Nike Air Presto Flyknit Ultra sẽ hoàn toàn tùy chỉnh được thông qua NIKEiD. Có nhiều hơn: Năm câu lạc bộ chạy (được chọn bởi vì mỗi người đại diện cho ý nghĩa của việc thúc đẩy ranh giới chạy và sáng tạo) từ khắp nơi trên thế giới cũng tạo ra những người xây dựng iD độc đáo cho React. Điều đó có nghĩa là các tính năng thiết kế bổ sung của mỗi nhóm, bao gồm lót lót, vòng gót, ly gót và bảng màu, đều có sẵn.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (3, N'Adidas pharelwilliam', N'Adidaspharelwilliam_white_1.jpg', 2, 234, CAST(1550000 AS Decimal(18, 0)), N'Adidaspharelwilliam_white_2.jpg', N'Adidaspharelwilliam_white_3.jpg', N'Sau khi ra mắt trong một màu sắc rasta lấy cảm hứng từ hoang dã tại sự kiện adidas 747 Warehouse St., sự hợp tác Crazy BYW của Pharrell đã trở lại với một màu đen và hồng. ', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (4, N'Adidas Clima Cool', N'adidasClimaCool_W_1.jpg', 2, 537, CAST(2000000 AS Decimal(18, 0)), N'adidasClimaCool_W_2.jpg', N'adidasClimaCool_W_3.jpg', N'Trong khi Lễ hội Holi nổi tiếng của Ấn Độ đã diễn ra, Pharrell và Adidas đã lên kế hoạch mở rộng các lễ hội thêm một chút nữa. Tuần này, hai trong số ba dịch vụ NMD Hu “Bột thuốc nhuộm” sẽ có sẵn thông qua ứng dụng xác nhận của Adidas. Các đặt phòng cho các “NMC” “Black Core” và “Chalk Coral” sẽ mở vào ngày mai, ngày 13 tháng 3 với các mục thành công có thể chọn các cặp của họ vào thứ Sáu, ngày 16 tháng Ba. Hiện tại, tùy chọn “Màu hồng phát sáng” thứ ba là một phần của gói “Thuốc nhuộm bột” chưa xuất hiện trên ứng dụng của Three Stripe, nhưng nó sẽ phát hành trên adidas.com cùng với phần còn lại của bộ sưu tập vào ngày 16 tháng 3. Hãy tận hưởng một cái nhìn chính thức về hai dịch vụ adidas NMD Hu bên dưới và chúc may mắn với các đặt phòng vào ngày mai. Nếu bạn không thể chờ đợi, hoặc muốn đảm bảo cho mình một đôi, Stadium Hàng hóa có một vài kích cỡ của "Chalk Coral" nhiều trong kho ngay bây giờ.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (5, N'Puma Launches New evoKNIT', N'PumaLaunchesNewevoKNIT_red_1.jpg', 3, 2600010, CAST(2500000 AS Decimal(18, 0)), N'PumaLaunchesNewevoKNIT_red_2.jpg', N'PumaLaunchesNewevoKNIT_red_3.jpg', N'PUMA đã nâng tầm ảnh hưởng của họ lên trò chơi nhỏ bé bằng cách tấn công lên tòa án trong 365 evoKNIT Ignite mới. Một chiếc giày được chạm khắc từ những đổi mới mới nhất của thương hiệu, và một bộ giày để đưa bộ sưu tập futsal của họ lên một tầm cao mới.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (6, N'PUMA Ignite Limitless Knit Black', N'pumaIgniteLimitlessKnit_Black_1.jpg', 3, 270, CAST(3200000 AS Decimal(18, 0)), N'pumaIgniteLimitlessKnit_Black_2.jpg', N'pumaIgniteLimitlessKnit_Black_3.jpg', N'PUMA đã nâng tầm ảnh hưởng của họ lên trò chơi nhỏ bé bằng cách tấn công lên tòa án trong 365 evoKNIT Ignite mới. Một chiếc giày được chạm khắc từ những đổi mới mới nhất của thương hiệu, và một bộ giày để đưa bộ sưu tập futsal của họ lên một tầm cao mới.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (7, N'Gum Pack 574', N'GumPack574_gray_1.jpg', 4, 550, CAST(2400000 AS Decimal(18, 0)), N'GumPack574_gray_2.jpg', N'GumPack574_gray_3.jpg', N'Da lộn trên một cặp New Balance 574s, không có gì đặc biệt đúng không? Thời gian này xung quanh nó chắc chắn là, như là vật liệu sử dụng kết thúc lên khá một chút nappier hơn được tìm thấy trên một chạy của các cặp nhà máy của số dư mới. Bộ ba được trình bày ở đây là gì hơn nữa là cưỡi trên một miếng kẹo cao su, một lựa chọn không quá phổ biến trên các vận động viên retro của họ. Hãy ở lại với chúng tôi sau khi nhấp vào để xem tất cả ba cặp cấu thành bộ da lộn mới này và sau đó lấy cặp Cân bằng mới 574 được hiển thị từ nhóm tại Quần áo cuối nếu bạn chấp thuận.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (8, N'BAIT X New Balance 791', N'BAITXNewBalance791_black_1.jpg', 4, 199, CAST(2100000 AS Decimal(18, 0)), N'BAITXNewBalance791_black_2.jpg', N'BAITXNewBalance791_black_3.jpg', N'Giày quần vợt có thể là loại ông bà của bạn nhóm tất cả các sneaker phát hành vào, nhưng thực tế giày quần vợt đã được ở giữa một phục hưng bonified. Bản gốc Adidas Stan Smith của Adidas Originals chịu trách nhiệm một phần cùng với sự thích thú của sự hồi sinh của K-Swiss, và Nike mang lại cho họ một chiếc quần vợt cổ điển do cộng đồng sneaker tổ chức. Cân bằng mới đã là một sự thật và thông qua thương hiệu đang chạy từ quan niệm của chi nhánh nhà xuất bản Boston, nhưng bạn có biết rằng NB có một hình bóng quần vợt khá thành công của riêng họ? Những người ở BAIT đang khởi động chương trình “Chọn” cao cấp mới (chúng tôi đặc biệt thích tên) bằng cách giới thiệu Số dư mới 791 trong ba màu cao cấp. Ở đây, NB CT 791 mang một lưỡi dao trên da và da lộn wolverine tuyệt đẹp trong khi biểu tượng kim loại ''N'' được đánh bóng nổi bật bằng bạc hoặc vàng. Ba cặp Multi-Pack cung cấp 9 tùy chọn ghép nối bao gồm một cặp bột màu trắng với vàng và bạc kim loại, một cặp màu đen với thương hiệu tương tự, và một ngoại lệ "Excalibur" với thương hiệu gunmetal trong suốt. Đối với những người theo truyền thống, bốn dịch vụ đối xứng sẽ có sẵn.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (9, N'Chuck Taylor All Star Mono Leather', N'ChuckTaylorAllStarMonoLeather_black_1.jpg', 5, 298, CAST(3600000 AS Decimal(18, 0)), N'ChuckTaylorAllStarMonoLeather_black_2.jpg', N'ChuckTaylorAllStarMonoLeather_black_3.jpg', N'Phải mất gần một thế kỷ để Converse giới thiệu một sự thật và thông qua phần tiếp theo của mô hình All-Star mang tính biểu tượng của họ với Converse Chuck Taylor II, và họ đã không thất vọng. Cặp đôi này sử dụng một lưỡi da được hỗ trợ để hỗ trợ thêm, công nghệ Lunarlon, và nhiều hơn nữa trong khi vẫn duy trì cái nhìn cổ điển của bản gốc. Bộ ba bản phát hành mới nhất tìm thấy nguồn cảm hứng từ nội thất sedan sang trọng với gói “Xe da”. Ba chiếc mũ bông đơn sắc được nhấn mạnh bởi một lưỡi đục lỗ nhỏ và phù hợp với mí mắt cho một cái nhìn cao cấp. Có sẵn ngay hôm nay từ UBIQ với giá $ 95 mỗi cái.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (10, N'Converse Chuck Taylor All Star II Hi Lux Leather', N'ConverseChuckTaylorAllStarIIHiLuxLeather_red_1.jpg', 5, 200, CAST(3400000 AS Decimal(18, 0)), N'ConverseChuckTaylorAllStarIIHiLuxLeather_red_2.jpg', N'ConverseChuckTaylorAllStarIIHiLuxLeather_red_3.jpg', N'Những Hideout mới x Converse Chuck Taylor Tất cả các ngôi sao đều hoàn toàn được tinh chế bằng cách so sánh, thiết kế cao cấp bằng da mịn và da có dấu của chúng chiếm phần cuối của quang phổ tương đối so với ‘Hamster’. Nhấp qua để xem xét kỹ hơn các hightops màu đen cùng với các lát gạch màu đỏ và màu xám và tìm kiếm những thứ này bắt đầu từ ngày 4 tháng 7 tại The Hideout với các nhà bán lẻ Converse First String lưu trữ các lô hàng của họ vào thứ Bảy sau đó vào ngày 16.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (11, N'Adidas Ultra Boost 4.0', N'adidasultraboost4_1.jpg', 2, 150, CAST(2100000 AS Decimal(18, 0)), N'adidasultraboost4_2.jpg', N'adidasultraboost4_3.jpg', N'Trong khi Lễ hội Holi nổi tiếng của Ấn Độ đã diễn ra, Pharrell và Adidas đã lên kế hoạch mở rộng các lễ hội thêm một chút nữa. Tuần này, hai trong số ba dịch vụ NMD Hu “Bột thuốc nhuộm” sẽ có sẵn thông qua ứng dụng xác nhận của Adidas. Các đặt phòng cho các “NMC” “Black Core” và “Chalk Coral” sẽ mở vào ngày mai, ngày 13 tháng 3 với các mục thành công có thể chọn các cặp của họ vào thứ Sáu, ngày 16 tháng Ba. Hiện tại, tùy chọn “Màu hồng phát sáng” thứ ba là một phần của gói “Thuốc nhuộm bột” chưa xuất hiện trên ứng dụng của Three Stripe, nhưng nó sẽ phát hành trên adidas.com cùng với phần còn lại của bộ sưu tập vào ngày 16 tháng 3. Hãy tận hưởng một cái nhìn chính thức về hai dịch vụ adidas NMD Hu bên dưới và chúc may mắn với các đặt phòng vào ngày mai. Nếu bạn không thể chờ đợi, hoặc muốn đảm bảo cho mình một đôi, Stadium Hàng hóa có một vài kích cỡ của "Chalk Coral" nhiều trong kho ngay bây giờ.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (12, N'Adidas Tubular Doom Sock', N'adidasTubularDoomSock_Black_1.jpg', 2, 30, CAST(3000000 AS Decimal(18, 0)), N'adidasTubularDoomSock_Black_2.jpg', N'adidasTubularDoomSock_Black_3.jpg', N'Sau khi ra mắt trong một màu sắc rasta lấy cảm hứng từ hoang dã tại sự kiện adidas 747 Warehouse St., sự hợp tác Crazy BYW của Pharrell đã trở lại với một màu đen và hồng. Một vài tháng trước, một đường màu hồng náo nhiệt nổi lên bên cạnh cặp màu đen mà bạn thấy Pharrell thể thao trong hình dưới đây với chữ “AMBITION” được thêu trên ngón chân cái. Thêm một lần lặp lại vào loạt bài Boost You Wear của Three Stripes, phía trên của nó vay mượn các cú đánh giữa chân của nó từ sneaker Adidas Real Deal vốn là một phần của loạt game bóng rổ Feet You Wear năm 1990 của thương hiệu. Hiện tại, không có thông tin phát hành nào có sẵn xung quanh dự án Nhãn hiệu Trefoil mới nhất của Skateboard P, nhưng dự kiến giảm xuống trong mùa hè này.', CAST(N'2018-06-15' AS Date))
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Anh], [MaNSX], [SoLuongTong], [DonGia], [Anh2], [Anh3], [MoTa], [NgayCapNhat]) VALUES (13, N'Adidas Ultra Boost 402', N'images/adidasClimaCool_W_1.jpg', 2, 251, CAST(1500000 AS Decimal(18, 0)), N'images/adidasClimaCool_W_2.jpg', N'images/adidasClimaCool_W_3.jpg', N'Bắt đầu từ ngày 3 tháng 5, Nike Air Presto Flyknit Ultra sẽ hoàn toàn tùy chỉnh được thông qua NIKEiD. Có nhiều hơn: Năm câu lạc bộ chạy (được chọn bởi vì mỗi người đại diện cho ý nghĩa của việc thúc đẩy ranh giới chạy và sáng tạo) từ khắp nơi trên thế giới cũng tạo ra những người xây dựng iD độc đáo cho React. Điều đó có nghĩa là các tính năng thiết kế bổ sung của mỗi nhóm, bao gồm lót lót, vòng gót, ly gót và bảng màu, đều có sẵn.Để hiển thị các khả năng, mỗi phi hành đoàn thiết kế một chiếc giày có tính năng chi tiết đại diện cho thành phố của họ và những gì được họ đi.', CAST(N'2018-06-15' AS Date))
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (1, 36)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (2, 37)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (3, 38)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (4, 39)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (5, 40)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (6, 41)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (7, 42)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (8, 43)
INSERT [dbo].[Size] ([MaSize], [Size]) VALUES (9, 44)
SET IDENTITY_INSERT [dbo].[Size] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D1053426DFEF19]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__CA1E34AD0025F56E]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NCC__A9D10534CBFA302A]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NCC] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NCC__CA1E34AD1F736913]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NCC] ADD UNIQUE NONCLUSTERED 
(
	[Sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__A9D10534266702DF]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__CA1E34AD602DFC27]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[Sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__F67C8D0BCB9FD353]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__A9D10534A6A65B60]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__CA1E34ADB101FDA2]    Script Date: 11/23/2019 8:02:50 PM ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETPN] ADD  CONSTRAINT [DF_CHITIETPN_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[DONHANG] ADD  CONSTRAINT [DF__DONHANG__NgayGio__72C60C4A]  DEFAULT (N'Chưa thanh toán') FOR [ThanhToan]
GO
ALTER TABLE [dbo].[DONHANG] ADD  CONSTRAINT [DF_DONHANG_TinhTrang]  DEFAULT (N'Chưa duyệt') FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [DF_NHANVIEN_QuyenNV]  DEFAULT ((0)) FOR [QuyenNV]
GO
ALTER TABLE [dbo].[PHIEUNHAP] ADD  CONSTRAINT [DF_PHIEUNHAP_TongTien]  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[PHIEUNHAP] ADD  CONSTRAINT [DF_PHIEUNHAP_TinhTrang]  DEFAULT (N'Đã duyệt') FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [DF_SANPHAM_SoLuongTong]  DEFAULT ((0)) FOR [SoLuongTong]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [DF_SANPHAM_MoTa]  DEFAULT (N'Mô tả') FOR [MoTa]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [DF_SANPHAM_NgayCapNhat]  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHD__MaDH__75A278F5] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DONHANG] ([MaDH])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK__CHITIETHD__MaDH__75A278F5]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETHD__MaSP__76969D2E] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK__CHITIETHD__MaSP__76969D2E]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHD_MauSac] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CHITIETHD_MauSac]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHD_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CHITIETHD_Size]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETPN__MaPN__5BE2A6F2] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [FK__CHITIETPN__MaPN__5BE2A6F2]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETPN__MaSP__5CD6CB2B] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [FK__CHITIETPN__MaSP__5CD6CB2B]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPN_MauSac] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [FK_CHITIETPN_MauSac]
GO
ALTER TABLE [dbo].[CHITIETPN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPN_Size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[CHITIETPN] CHECK CONSTRAINT [FK_CHITIETPN_Size]
GO
ALTER TABLE [dbo].[CHITIETSP]  WITH CHECK ADD FOREIGN KEY([MaMau])
REFERENCES [dbo].[MauSac] ([MaMau])
GO
ALTER TABLE [dbo].[CHITIETSP]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
GO
ALTER TABLE [dbo].[CHITIETSP]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETSP__MaSP__534D60F1] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETSP] CHECK CONSTRAINT [FK__CHITIETSP__MaSP__534D60F1]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK__DONHANG__MaKH__6FE99F9F] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK__DONHANG__MaKH__6FE99F9F]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK__DONHANG__MaNV__70DDC3D8] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK__DONHANG__MaNV__70DDC3D8]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK__PHIEUNHAP__MaNCC__59063A47] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK__PHIEUNHAP__MaNCC__59063A47]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK__PHIEUNHAP__MaNV__5812160E] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK__PHIEUNHAP__MaNV__5812160E]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK__SANPHAM__MaNSX__5070F446] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NSX] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK__SANPHAM__MaNSX__5070F446]
GO
USE [master]
GO
ALTER DATABASE [WebsiteBanGiaySneaker] SET  READ_WRITE 
GO
