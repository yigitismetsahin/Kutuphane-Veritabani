USE [master]
GO
/****** Object:  Database [kutuphane_db]    Script Date: 22.12.2024 17:11:01 ******/
CREATE DATABASE [kutuphane_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kutuphane_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\kutuphane_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kutuphane_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\kutuphane_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [kutuphane_db] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kutuphane_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kutuphane_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kutuphane_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kutuphane_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kutuphane_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kutuphane_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [kutuphane_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kutuphane_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kutuphane_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kutuphane_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kutuphane_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kutuphane_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kutuphane_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kutuphane_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kutuphane_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kutuphane_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [kutuphane_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kutuphane_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kutuphane_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kutuphane_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kutuphane_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kutuphane_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kutuphane_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kutuphane_db] SET RECOVERY FULL 
GO
ALTER DATABASE [kutuphane_db] SET  MULTI_USER 
GO
ALTER DATABASE [kutuphane_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kutuphane_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kutuphane_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kutuphane_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kutuphane_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kutuphane_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'kutuphane_db', N'ON'
GO
ALTER DATABASE [kutuphane_db] SET QUERY_STORE = ON
GO
ALTER DATABASE [kutuphane_db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [kutuphane_db]
GO
/****** Object:  Table [dbo].[tbl_adresler]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_adresler](
	[adres_no] [int] IDENTITY(1,1) NOT NULL,
	[cadde] [varchar](20) NULL,
	[mahalle] [varchar](20) NOT NULL,
	[bina_no] [int] NOT NULL,
	[sehir] [varchar](20) NOT NULL,
	[posta_kodu] [int] NOT NULL,
	[ulke] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[adres_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_emanet]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_emanet](
	[emanet_kitapno] [int] IDENTITY(1,1) NOT NULL,
	[kitap_no] [int] NOT NULL,
	[isbn] [int] NOT NULL,
	[uye_no] [int] NOT NULL,
	[kutuphane_no] [int] NOT NULL,
	[emanet_tarih] [datetime] NOT NULL,
	[teslim_tarih] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[emanet_kitapno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kategoriler]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kategoriler](
	[kategori_no] [int] IDENTITY(1,1) NOT NULL,
	[kategori_adi] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kategori_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kitap_kategori]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kitap_kategori](
	[kitap_no] [int] NOT NULL,
	[kategori_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kitap_no] ASC,
	[kategori_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kitap_kutuphane]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kitap_kutuphane](
	[kutuphane_no] [int] NOT NULL,
	[kitap_no] [int] NOT NULL,
	[kitap_adet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kutuphane_no] ASC,
	[kitap_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kitaplar]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kitaplar](
	[kitap_no] [int] IDENTITY(1,1) NOT NULL,
	[isbn] [int] NOT NULL,
	[kitap_adi] [varchar](50) NOT NULL,
	[yayin_tarihi] [date] NULL,
	[sayfa_sayisi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kitap_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kitaplar_yazarlar]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kitaplar_yazarlar](
	[kitap_no] [int] NOT NULL,
	[yazar_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kitap_no] ASC,
	[yazar_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kutuphane]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kutuphane](
	[kutuphane_no] [int] IDENTITY(1,1) NOT NULL,
	[kutuphane_ismi] [varchar](50) NOT NULL,
	[aciklamasi] [varchar](50) NULL,
	[adres_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kutuphane_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_uyeler]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_uyeler](
	[uye_no] [int] IDENTITY(1,1) NOT NULL,
	[uye_adi] [varchar](50) NOT NULL,
	[uye_soyadi] [varchar](50) NOT NULL,
	[cinsiyet] [char](1) NULL,
	[uye_telefon] [int] NOT NULL,
	[uye_eposta] [varchar](50) NOT NULL,
	[adres_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uye_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_yayinevi_kutuphane]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_yayinevi_kutuphane](
	[yayinevi_no] [int] NOT NULL,
	[kutuphane_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[yayinevi_no] ASC,
	[kutuphane_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_yayinevi_yazarlar]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_yayinevi_yazarlar](
	[yayinevi_no] [int] NOT NULL,
	[yazar_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[yayinevi_no] ASC,
	[yazar_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_yayinevleri]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_yayinevleri](
	[yayinevi_no] [int] IDENTITY(1,1) NOT NULL,
	[yayinevi_ad] [varchar](50) NOT NULL,
	[yayinevi_telefon] [int] NOT NULL,
	[adres_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[yayinevi_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_yazarlar]    Script Date: 22.12.2024 17:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_yazarlar](
	[yazar_no] [int] IDENTITY(1,1) NOT NULL,
	[yazar_adi] [varchar](50) NOT NULL,
	[yazar_soyad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[yazar_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_adresler] ON 

INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (1, N'Dursunbey', N'Yeni Çamlıca', 13, N'İstanbul', 34779, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (2, N'Kahraman', N'Ahmet Yesevi', 25, N'İstanbul', 34890, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (3, NULL, N'Çeşme', 8, N'Samsun', 55800, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (4, NULL, N'Alanlı', 22, N'Samsun', 55200, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (5, N'İhsaniye', N'Nilüfer', 6, N'Bursa', 16200, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (6, N'Çayırova', N'Atatürk', 21, N'Kocaeli', 41420, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (7, N'Yıldız', N'Özköy', 16, N'Edirne', 22000, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (8, NULL, N'Çankaya', 18, N'Bolu', 14000, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (9, N'Adapazarı', N'Acıelmalık', 27, N'Sakarya', 54100, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (10, N'İstiklal Caddesi', N'Beyoğlu', 55, N'İstanbul', 34400, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (11, N'Halaskargazi Caddesi', N'Şişli', 10, N'İstanbul', 34300, N'Türkiye')
INSERT [dbo].[tbl_adresler] ([adres_no], [cadde], [mahalle], [bina_no], [sehir], [posta_kodu], [ulke]) VALUES (12, NULL, N'Aliağa', 26, N'Fatih', 34700, N'Türkiye')
SET IDENTITY_INSERT [dbo].[tbl_adresler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_emanet] ON 

INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (1, 7, 958975362, 3, 3, CAST(N'2024-12-05T00:00:00.000' AS DateTime), CAST(N'2024-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (2, 2, 978975067, 1, 2, CAST(N'2024-12-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (3, 5, 978605185, 3, 1, CAST(N'2024-11-20T00:00:00.000' AS DateTime), CAST(N'2024-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (4, 7, 958975362, 2, 2, CAST(N'2023-10-15T00:00:00.000' AS DateTime), CAST(N'2023-10-30T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (5, 3, 978625102, 4, 4, CAST(N'2022-06-02T00:00:00.000' AS DateTime), CAST(N'2022-06-14T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (6, 4, 978625976, 7, 1, CAST(N'2024-12-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (7, 11, 978975363, 5, 4, CAST(N'2024-11-30T00:00:00.000' AS DateTime), CAST(N'2024-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (8, 9, 978605111, 6, 3, CAST(N'2024-12-11T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (9, 12, 978625775, 8, 2, CAST(N'2024-12-06T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime))
INSERT [dbo].[tbl_emanet] ([emanet_kitapno], [kitap_no], [isbn], [uye_no], [kutuphane_no], [emanet_tarih], [teslim_tarih]) VALUES (10, 11, 978975363, 9, 1, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_emanet] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_kategoriler] ON 

INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (1, N'Teknoloji')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (2, N'Ekonomi')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (3, N'Eğitim')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (4, N'Felsefe')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (5, N'Sayısal')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (6, N'Psikoloji')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (7, N'Roman')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (8, N'Çizgi Roman')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (9, N'Bilim Kurgu')
INSERT [dbo].[tbl_kategoriler] ([kategori_no], [kategori_adi]) VALUES (10, N'Diğer')
SET IDENTITY_INSERT [dbo].[tbl_kategoriler] OFF
GO
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (1, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (2, 10)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (3, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (4, 3)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (5, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (6, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (7, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (8, 10)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (9, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (10, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (11, 7)
INSERT [dbo].[tbl_kitap_kategori] ([kitap_no], [kategori_no]) VALUES (12, 10)
GO
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (1, 1, 12)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (1, 5, 14)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (1, 9, 10)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (2, 2, 6)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (2, 6, 1)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (2, 10, 41)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (3, 3, 56)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (3, 7, 36)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (3, 11, 14)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (4, 4, 2)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (4, 8, 19)
INSERT [dbo].[tbl_kitap_kutuphane] ([kutuphane_no], [kitap_no], [kitap_adet]) VALUES (4, 12, 25)
GO
SET IDENTITY_INSERT [dbo].[tbl_kitaplar] ON 

INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (1, 978975041, N'Kırmızı Saçlı Kadın', CAST(N'2019-09-02' AS Date), 204)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (2, 978975067, N'Büyük Saat', CAST(N'2023-08-07' AS Date), 724)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (3, 978625102, N'Dokuzuncu Hariciye Koğuşu', CAST(N'2023-02-04' AS Date), 112)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (4, 978625976, N'Ben Buyum İşte!', CAST(N'2024-12-13' AS Date), 216)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (5, 978605185, N'Sona Ermek', CAST(N'2017-05-17' AS Date), 264)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (6, 978945642, N'Bereketli Topraklar Üzerinde', CAST(N'2024-03-05' AS Date), 380)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (7, 958975362, N'Tutunamayanlar', CAST(N'2023-08-08' AS Date), 724)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (8, 978625206, N'Ayrılık Sevdaya Dahil', CAST(N'2021-05-18' AS Date), 120)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (9, 978605111, N'Aşk', CAST(N'2024-05-24' AS Date), 420)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (10, 978655201, N'Tuhaf Bir Kadın', CAST(N'2021-06-25' AS Date), 176)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (11, 978975363, N'Kürk Mantolu Madonna', CAST(N'2023-08-15' AS Date), 160)
INSERT [dbo].[tbl_kitaplar] ([kitap_no], [isbn], [kitap_adi], [yayin_tarihi], [sayfa_sayisi]) VALUES (12, 978625775, N'Dönüşüm', CAST(N'2020-12-21' AS Date), 64)
SET IDENTITY_INSERT [dbo].[tbl_kitaplar] OFF
GO
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (1, 1)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (2, 2)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (3, 3)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (4, 4)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (5, 5)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (6, 6)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (7, 7)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (8, 8)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (9, 9)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (10, 10)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (11, 11)
INSERT [dbo].[tbl_kitaplar_yazarlar] ([kitap_no], [yazar_no]) VALUES (12, 12)
GO
SET IDENTITY_INSERT [dbo].[tbl_kutuphane] ON 

INSERT [dbo].[tbl_kutuphane] ([kutuphane_no], [kutuphane_ismi], [aciklamasi], [adres_no]) VALUES (1, N'Atatürk Kitaplığı', N'Atatürk Kütüphanesi', 1)
INSERT [dbo].[tbl_kutuphane] ([kutuphane_no], [kutuphane_ismi], [aciklamasi], [adres_no]) VALUES (2, N'Ataşehir Kütüphane', N'Ataşehir Kütüphanesi', 2)
INSERT [dbo].[tbl_kutuphane] ([kutuphane_no], [kutuphane_ismi], [aciklamasi], [adres_no]) VALUES (3, N'Avcılar Bilgievi', N'Avcılar Kütüphanesi', 3)
INSERT [dbo].[tbl_kutuphane] ([kutuphane_no], [kutuphane_ismi], [aciklamasi], [adres_no]) VALUES (4, N'Amasya Kütüphane', N'Amasya Kütüphanesi', 4)
SET IDENTITY_INSERT [dbo].[tbl_kutuphane] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_uyeler] ON 

INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (1, N'Yiğit', N'Şahin', N'E', 535369585, N'yigitsahin@mail.com', 1)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (2, N'Zeynel', N'Öt', N'E', 535130003, N'zeynelot@mail.com', 2)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (3, N'Mustafa', N'Delibaş', N'E', 532659515, N'mustafadelibas02@mail.com', 3)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (4, N'Zeynep', N'Şahin', N'K', 535449565, N'zeynossahin58@mail.com', 4)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (5, N'Veysel', N'Aslan', N'E', 532566371, N'veyselaslann2@mail.com', 5)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (6, N'Selin', N'Demirtaş', N'K', 531219653, N'selindts@mail.com', 6)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (7, N'Kaan', N'Küçükosman', N'E', 533145675, N'kaankckosmn@mail.com', 7)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (8, N'Leyla', N'Güler', N'K', 532861385, N'leylagulerrr@mail.com', 8)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (9, N'Bilal', N'Şahin', N'E', 535163544, N'bilalshn@mail.com', 9)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (10, N'Azra', N'Parlak', N'K', 537339535, N'aparlak@mail.com', 10)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (11, N'Selim', N'Çakmak', N'E', 537339535, N'selocakmak@mail.com', 11)
INSERT [dbo].[tbl_uyeler] ([uye_no], [uye_adi], [uye_soyadi], [cinsiyet], [uye_telefon], [uye_eposta], [adres_no]) VALUES (12, N'Destina', N'Keskin', N'K', 537339535, N'destinakeskin@mail.com', 12)
SET IDENTITY_INSERT [dbo].[tbl_uyeler] OFF
GO
INSERT [dbo].[tbl_yayinevi_kutuphane] ([yayinevi_no], [kutuphane_no]) VALUES (1, 1)
INSERT [dbo].[tbl_yayinevi_kutuphane] ([yayinevi_no], [kutuphane_no]) VALUES (2, 2)
INSERT [dbo].[tbl_yayinevi_kutuphane] ([yayinevi_no], [kutuphane_no]) VALUES (3, 3)
INSERT [dbo].[tbl_yayinevi_kutuphane] ([yayinevi_no], [kutuphane_no]) VALUES (4, 4)
GO
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (1, 1)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (1, 2)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (1, 5)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (1, 8)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (1, 9)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (2, 3)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (2, 7)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (2, 12)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (3, 4)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (3, 11)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (4, 6)
INSERT [dbo].[tbl_yayinevi_yazarlar] ([yayinevi_no], [yazar_no]) VALUES (4, 10)
GO
SET IDENTITY_INSERT [dbo].[tbl_yayinevleri] ON 

INSERT [dbo].[tbl_yayinevleri] ([yayinevi_no], [yayinevi_ad], [yayinevi_telefon], [adres_no]) VALUES (1, N'İş Bankası Yayınları', 216349665, 1)
INSERT [dbo].[tbl_yayinevleri] ([yayinevi_no], [yayinevi_ad], [yayinevi_telefon], [adres_no]) VALUES (2, N'Everest Yayınları', 216249265, 2)
INSERT [dbo].[tbl_yayinevleri] ([yayinevi_no], [yayinevi_ad], [yayinevi_telefon], [adres_no]) VALUES (3, N'Yapı Kredi Yayınları', 212149265, 3)
INSERT [dbo].[tbl_yayinevleri] ([yayinevi_no], [yayinevi_ad], [yayinevi_telefon], [adres_no]) VALUES (4, N'Can Yayınları', 212549162, 4)
SET IDENTITY_INSERT [dbo].[tbl_yayinevleri] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_yazarlar] ON 

INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (1, N'Orhan', N'Pamuk')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (2, N'Turgut', N'Uyar')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (3, N'Peyami', N'safa')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (4, N'Haldun', N'Dormen')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (5, N'Selim', N'İleri')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (6, N'Orhan', N'Kemal')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (7, N'Oğuz', N'Atay')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (8, N'Atilla', N'İlhan')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (9, N'Elif', N'Şafak')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (10, N'Leyla', N'Erbil')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (11, N'Sabahattin', N'Ali')
INSERT [dbo].[tbl_yazarlar] ([yazar_no], [yazar_adi], [yazar_soyad]) VALUES (12, N'Franz', N'Kafka')
SET IDENTITY_INSERT [dbo].[tbl_yazarlar] OFF
GO
ALTER TABLE [dbo].[tbl_emanet]  WITH CHECK ADD FOREIGN KEY([kitap_no])
REFERENCES [dbo].[tbl_kitaplar] ([kitap_no])
GO
ALTER TABLE [dbo].[tbl_emanet]  WITH CHECK ADD FOREIGN KEY([kutuphane_no])
REFERENCES [dbo].[tbl_kutuphane] ([kutuphane_no])
GO
ALTER TABLE [dbo].[tbl_emanet]  WITH CHECK ADD FOREIGN KEY([uye_no])
REFERENCES [dbo].[tbl_uyeler] ([uye_no])
GO
ALTER TABLE [dbo].[tbl_kitap_kategori]  WITH CHECK ADD FOREIGN KEY([kategori_no])
REFERENCES [dbo].[tbl_kategoriler] ([kategori_no])
GO
ALTER TABLE [dbo].[tbl_kitap_kategori]  WITH CHECK ADD FOREIGN KEY([kitap_no])
REFERENCES [dbo].[tbl_kitaplar] ([kitap_no])
GO
ALTER TABLE [dbo].[tbl_kitap_kutuphane]  WITH CHECK ADD FOREIGN KEY([kitap_no])
REFERENCES [dbo].[tbl_kitaplar] ([kitap_no])
GO
ALTER TABLE [dbo].[tbl_kitap_kutuphane]  WITH CHECK ADD FOREIGN KEY([kutuphane_no])
REFERENCES [dbo].[tbl_kutuphane] ([kutuphane_no])
GO
ALTER TABLE [dbo].[tbl_kitaplar_yazarlar]  WITH CHECK ADD FOREIGN KEY([kitap_no])
REFERENCES [dbo].[tbl_kitaplar] ([kitap_no])
GO
ALTER TABLE [dbo].[tbl_kitaplar_yazarlar]  WITH CHECK ADD FOREIGN KEY([yazar_no])
REFERENCES [dbo].[tbl_yazarlar] ([yazar_no])
GO
ALTER TABLE [dbo].[tbl_kutuphane]  WITH CHECK ADD FOREIGN KEY([adres_no])
REFERENCES [dbo].[tbl_adresler] ([adres_no])
GO
ALTER TABLE [dbo].[tbl_yayinevi_kutuphane]  WITH CHECK ADD FOREIGN KEY([yayinevi_no])
REFERENCES [dbo].[tbl_kutuphane] ([kutuphane_no])
GO
ALTER TABLE [dbo].[tbl_yayinevi_yazarlar]  WITH CHECK ADD FOREIGN KEY([yayinevi_no])
REFERENCES [dbo].[tbl_yazarlar] ([yazar_no])
GO
ALTER TABLE [dbo].[tbl_yayinevleri]  WITH CHECK ADD FOREIGN KEY([yayinevi_no])
REFERENCES [dbo].[tbl_kitaplar] ([kitap_no])
GO
USE [master]
GO
ALTER DATABASE [kutuphane_db] SET  READ_WRITE 
GO
