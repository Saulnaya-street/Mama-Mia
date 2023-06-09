USE [master]
GO
/****** Object:  Database [Taxsopark]    Script Date: 06.04.2023 21:52:04 ******/
CREATE DATABASE [Taxsopark]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Taxsopark', FILENAME = N'D:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\Taxsopark.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Taxsopark_log', FILENAME = N'D:\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\Taxsopark_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Taxsopark] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Taxsopark].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Taxsopark] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Taxsopark] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Taxsopark] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Taxsopark] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Taxsopark] SET ARITHABORT OFF 
GO
ALTER DATABASE [Taxsopark] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Taxsopark] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Taxsopark] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Taxsopark] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Taxsopark] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Taxsopark] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Taxsopark] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Taxsopark] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Taxsopark] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Taxsopark] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Taxsopark] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Taxsopark] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Taxsopark] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Taxsopark] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Taxsopark] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Taxsopark] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Taxsopark] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Taxsopark] SET RECOVERY FULL 
GO
ALTER DATABASE [Taxsopark] SET  MULTI_USER 
GO
ALTER DATABASE [Taxsopark] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Taxsopark] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Taxsopark] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Taxsopark] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Taxsopark] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Taxsopark] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Taxsopark', N'ON'
GO
ALTER DATABASE [Taxsopark] SET QUERY_STORE = OFF
GO
USE [Taxsopark]
GO
/****** Object:  Table [dbo].[Avto]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avto](
	[IdAvtomobil] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [nvarchar](40) NULL,
	[Model] [nvarchar](40) NULL,
	[IdTipAvto] [int] NULL,
	[KolvoMest] [int] NULL,
	[IdSostoyaniye] [int] NULL,
 CONSTRAINT [PK_Avto] PRIMARY KEY CLUSTERED 
(
	[IdAvtomobil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dolznost]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dolznost](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](30) NULL,
 CONSTRAINT [PK_Dolznost] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IstoriaZakazov]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IstoriaZakazov](
	[IdIstoriaZakazov] [int] IDENTITY(1,1) NOT NULL,
	[IdZakazi] [int] NULL,
	[IdOtcheta] [int] NULL,
 CONSTRAINT [PK_IstoriaZakazov] PRIMARY KEY CLUSTERED 
(
	[IdIstoriaZakazov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[IdKlienta] [int] IDENTITY(1,1) NOT NULL,
	[Imia] [nvarchar](20) NULL,
	[Familia] [nvarchar](20) NULL,
	[IdOtsenka] [int] NOT NULL,
	[KontaktnyyNomer] [nvarchar](27) NULL,
	[Pochta] [nvarchar](60) NULL,
	[IdPlatezhnyyeKarty] [int] NULL,
 CONSTRAINT [PK_klient] PRIMARY KEY CLUSTERED 
(
	[IdKlienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oplata]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oplata](
	[IdOplata] [int] IDENTITY(1,1) NOT NULL,
	[Summa] [money] NULL,
	[Data] [date] NULL,
	[Vremia] [time](7) NULL,
	[IdSposobOplati] [int] NULL,
	[IdStatusOplati] [int] NULL,
 CONSTRAINT [PK_Oplata] PRIMARY KEY CLUSTERED 
(
	[IdOplata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otchet]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otchet](
	[IdOtcheta] [int] IDENTITY(1,1) NOT NULL,
	[IdTipOtcheta] [int] NULL,
	[ObshchayaVyruchka] [money] NULL,
	[ObshchayaRashodi] [money] NULL,
	[IdVremia] [int] NULL,
 CONSTRAINT [PK_Otchet] PRIMARY KEY CLUSTERED 
(
	[IdOtcheta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otsenka]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otsenka](
	[IdOtsenka] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](10) NULL,
 CONSTRAINT [PK_otsenka] PRIMARY KEY CLUSTERED 
(
	[IdOtsenka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Period]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period](
	[IdPeriod] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
 CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED 
(
	[IdPeriod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlatezhnyyeKarty]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlatezhnyyeKarty](
	[IdPlatezhnyyeKarty] [int] IDENTITY(1,1) NOT NULL,
	[NomerKarty] [nvarchar](20) NULL,
	[Mesyats] [nvarchar](2) NULL,
	[God] [nvarchar](2) NULL,
	[Kod(cvc)] [int] NULL,
 CONSTRAINT [PK_PlatezhnyyeKarty] PRIMARY KEY CLUSTERED 
(
	[IdPlatezhnyyeKarty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poezdka]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poezdka](
	[IdPoezdka] [int] IDENTITY(1,1) NOT NULL,
	[AdressNachala] [nvarchar](70) NULL,
	[IdTariv] [int] NULL,
	[AdressKontsa] [nvarchar](70) NULL,
 CONSTRAINT [PK_Poezdka] PRIMARY KEY CLUSTERED 
(
	[IdPoezdka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Smena]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Smena](
	[IdSmena] [int] IDENTITY(1,1) NOT NULL,
	[IdSotrudniki] [int] NULL,
	[StazhVozhdeniya] [nvarchar](3) NULL,
	[IdAvtomobil] [int] NULL,
	[IdOtsenka] [int] NULL,
 CONSTRAINT [PK_Voditel] PRIMARY KEY CLUSTERED 
(
	[IdSmena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SostoyaniyeAvto]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SostoyaniyeAvto](
	[IdSostoyaniye] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
 CONSTRAINT [PK_SostoyaniyeAvto] PRIMARY KEY CLUSTERED 
(
	[IdSostoyaniye] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[IdSotrudniki] [int] IDENTITY(1,1) NOT NULL,
	[Imia] [nvarchar](20) NULL,
	[Familia] [nvarchar](20) NULL,
	[Othestvo] [nvarchar](20) NOT NULL,
	[Telefon] [nvarchar](20) NULL,
	[IdRol] [int] NULL,
	[Pochta] [nvarchar](60) NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[IdSotrudniki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SposobOplati]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SposobOplati](
	[IdSposobOplati] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
 CONSTRAINT [PK_sposobOplati] PRIMARY KEY CLUSTERED 
(
	[IdSposobOplati] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOplati]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOplati](
	[IdStatusOplati] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
 CONSTRAINT [PK_StatusOplati] PRIMARY KEY CLUSTERED 
(
	[IdStatusOplati] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tariv]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tariv](
	[IdTariv] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
	[Tsena] [money] NULL,
 CONSTRAINT [PK_Tariv] PRIMARY KEY CLUSTERED 
(
	[IdTariv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tip]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tip](
	[IdTipOtcheta] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
 CONSTRAINT [PK_Tip] PRIMARY KEY CLUSTERED 
(
	[IdTipOtcheta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tip-Avto]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tip-Avto](
	[IdTipAvto] [int] IDENTITY(1,1) NOT NULL,
	[Nazvania] [nvarchar](20) NULL,
	[GodVipuska] [nvarchar](4) NULL,
 CONSTRAINT [PK_Tip-Avto] PRIMARY KEY CLUSTERED 
(
	[IdTipAvto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vremia]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vremia](
	[IdVremia] [int] IDENTITY(1,1) NOT NULL,
	[DataNachalo] [date] NULL,
	[DataKonetsa] [date] NULL,
	[IdPeriod] [int] NULL,
 CONSTRAINT [PK_vremia] PRIMARY KEY CLUSTERED 
(
	[IdVremia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazi]    Script Date: 06.04.2023 21:52:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazi](
	[IdZakazi] [int] IDENTITY(1,1) NOT NULL,
	[VremiaZakaza] [date] NULL,
	[DataZakaza] [time](7) NULL,
	[IdKlienta] [int] NULL,
	[IdSmena] [int] NULL,
	[IdPoezdka] [int] NULL,
	[IdOplata] [int] NULL,
 CONSTRAINT [PK_Zakazi] PRIMARY KEY CLUSTERED 
(
	[IdZakazi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Avto] ON 

INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (1, N'bmw', N'M3', 1, 5, 1)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (2, N'Mercedes-benz', N'V-Class', 2, 7, 2)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (3, N'Volkswagen', N'Polo', 1, 5, 2)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (4, N'Honda', N'fiat', 4, 5, 2)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (5, N'Volkswagen', N'Polo', 3, 5, 1)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (6, N'Volkswagen', N'Polo', 3, 5, 3)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (7, N'Hyundai', N'solaris', 4, 5, 2)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (8, N'Hyundai', N'solaris', 4, 5, 1)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (9, N'Hyundai', N'solaris', 4, 5, 3)
INSERT [dbo].[Avto] ([IdAvtomobil], [Marka], [Model], [IdTipAvto], [KolvoMest], [IdSostoyaniye]) VALUES (10, N'Honda', N'fiat', 4, 5, 3)
SET IDENTITY_INSERT [dbo].[Avto] OFF
GO
SET IDENTITY_INSERT [dbo].[Dolznost] ON 

INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (1, N'Водитель')
INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (2, N'Диспетчер')
INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (3, N'Бухгалтер')
INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (4, N'ТехническийСпециалист')
INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (5, N'Менеджер')
INSERT [dbo].[Dolznost] ([IdRol], [Nazvania]) VALUES (6, N'Администратор')
SET IDENTITY_INSERT [dbo].[Dolznost] OFF
GO
SET IDENTITY_INSERT [dbo].[IstoriaZakazov] ON 

INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (1, 1, 1)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (2, 2, 2)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (3, 3, 3)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (4, 4, 4)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (5, 5, 5)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (6, 6, 6)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (7, 7, 7)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (8, 8, 8)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (9, 9, 9)
INSERT [dbo].[IstoriaZakazov] ([IdIstoriaZakazov], [IdZakazi], [IdOtcheta]) VALUES (10, 10, 10)
SET IDENTITY_INSERT [dbo].[IstoriaZakazov] OFF
GO
SET IDENTITY_INSERT [dbo].[Klient] ON 

INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (1, N'Лилия
', N'Пахомова
', 1, N'+254 (676) 351-74-51
', N'dicki.lilian@orn.biz
', 1)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (3, N'Кира
', N'Васильева
', 2, N'+963 (009) 037-30-07
', N'bergstrom.marie@yahoo.com
', 2)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (4, N'Анастасия
', N'Петрова
', 3, N'+509 (482) 954-75-98
', N'jailyn29@labadie.org
', 3)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (5, N'Анастасия
', N'Гусева
', 1, N'+63 (897) 243-74-95
', N'dicki.wilma@lehner.com', 4)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (6, N'Василиса
', N'Степанова
', 2, N'+374 (960) 918-07-07
', N'bergstrom.wendy@yahoo.com', 5)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (7, N'Анастасия
', N'Гуляева
', 3, N'+420 (167) 644-65-55
', N'schaden.meagan@becker.org', 6)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (8, N'Варвара
', N'Шарова
', 1, N'+591 (520) 227-40-12
', N'samanta91@schmitt.com', 11)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (9, N'Алиса
', N'Токарева
', 2, N'+265 (778) 561-62-98
', N'stanton.adams@marvin.com', 8)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (10, N'Иван
', N'Прокофьев
', 3, N'+976 (242) 766-44-76
', N'violet.ohara@gmail.com', 9)
INSERT [dbo].[Klient] ([IdKlienta], [Imia], [Familia], [IdOtsenka], [KontaktnyyNomer], [Pochta], [IdPlatezhnyyeKarty]) VALUES (11, N'Артём
', N'Соколов
', 1, N'+265 (856) 676-43-67
', N'bulah.oreilly@hotmail.com', 10)
SET IDENTITY_INSERT [dbo].[Klient] OFF
GO
SET IDENTITY_INSERT [dbo].[Oplata] ON 

INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (1, 346.0000, CAST(N'2023-07-23' AS Date), CAST(N'15:11:54' AS Time), 1, 1)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (2, 1000.0000, CAST(N'2023-06-29' AS Date), CAST(N'20:30:20' AS Time), 2, 2)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (3, 1500.0000, CAST(N'2023-03-30' AS Date), CAST(N'21:30:20' AS Time), 1, 2)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (4, 900.0000, CAST(N'2023-06-20' AS Date), CAST(N'18:30:50' AS Time), 1, 3)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (5, 300.0000, CAST(N'2023-05-21' AS Date), CAST(N'11:50:20' AS Time), 2, 2)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (6, 1500.0000, CAST(N'2023-04-26' AS Date), CAST(N'10:30:20' AS Time), 2, 1)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (7, 800.0000, CAST(N'2023-09-20' AS Date), CAST(N'14:20:31' AS Time), 1, 2)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (8, 500.0000, CAST(N'2023-10-14' AS Date), CAST(N'20:21:50' AS Time), 2, 1)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (9, 1200.0000, CAST(N'2023-04-18' AS Date), CAST(N'14:31:50' AS Time), 1, 3)
INSERT [dbo].[Oplata] ([IdOplata], [Summa], [Data], [Vremia], [IdSposobOplati], [IdStatusOplati]) VALUES (10, 600.0000, CAST(N'2024-01-03' AS Date), CAST(N'13:31:50' AS Time), 1, 3)
SET IDENTITY_INSERT [dbo].[Oplata] OFF
GO
SET IDENTITY_INSERT [dbo].[Otchet] ON 

INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (1, 1, 400000.0000, 270000.0000, 1)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (2, 2, 500000.0000, 300000.0000, 2)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (3, 3, 300000.0000, 100000.0000, 3)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (4, 4, 250000.0000, 120000.0000, 2)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (5, 2, 300000.0000, 100000.0000, 3)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (6, 1, 400000.0000, 140000.0000, 1)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (7, 2, 190000.0000, 100000.0000, 2)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (8, 4, 340000.0000, 120000.0000, 1)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (9, 3, 400000.0000, 180000.0000, 3)
INSERT [dbo].[Otchet] ([IdOtcheta], [IdTipOtcheta], [ObshchayaVyruchka], [ObshchayaRashodi], [IdVremia]) VALUES (10, 2, 300000.0000, 120000.0000, 3)
SET IDENTITY_INSERT [dbo].[Otchet] OFF
GO
SET IDENTITY_INSERT [dbo].[Otsenka] ON 

INSERT [dbo].[Otsenka] ([IdOtsenka], [Nazvania]) VALUES (1, N'Отличный')
INSERT [dbo].[Otsenka] ([IdOtsenka], [Nazvania]) VALUES (2, N'Хороший')
INSERT [dbo].[Otsenka] ([IdOtsenka], [Nazvania]) VALUES (3, N'Плохой')
SET IDENTITY_INSERT [dbo].[Otsenka] OFF
GO
SET IDENTITY_INSERT [dbo].[Period] ON 

INSERT [dbo].[Period] ([IdPeriod], [Nazvania]) VALUES (1, N'Квартал')
INSERT [dbo].[Period] ([IdPeriod], [Nazvania]) VALUES (2, N'Полугодие')
INSERT [dbo].[Period] ([IdPeriod], [Nazvania]) VALUES (3, N'Месяц')
SET IDENTITY_INSERT [dbo].[Period] OFF
GO
SET IDENTITY_INSERT [dbo].[PlatezhnyyeKarty] ON 

INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (1, N'6217 4208 4615 5931', N'11', N'25', 292)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (2, N'5893 1816 6237 2280', N'12', N'24', 327)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (3, N'3113 9929 0362 9037', N'01', N'23', 646)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (4, N'5061 5185 5156 7254', N'05', N'25', 510)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (5, N'6209 4177 7816 9252', N'07', N'27', 639)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (6, N'5019 0967 8252 1252', N'10', N'28', 325)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (8, N'3169 6040 2494 5987', N'06', N'24', 267)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (9, N'3896 3813 5197 1325', N'04', N'27', 345)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (10, N'4619 4031 9725 8537', N'08', N'23', 231)
INSERT [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty], [NomerKarty], [Mesyats], [God], [Kod(cvc)]) VALUES (11, N'4619 4031 9725 4536', N'11', N'25', 345)
SET IDENTITY_INSERT [dbo].[PlatezhnyyeKarty] OFF
GO
SET IDENTITY_INSERT [dbo].[Poezdka] ON 

INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (1, N'бульвар Домодедовская, 48', 3, N'бульвар Сталина, 10')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (2, N'наб. Гоголя, 10', 3, N'пр. Гоголя, 31')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (3, N'ул. Балканская, 40', 4, N'бульвар Косиора, 71')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (4, N'бульвар Славы, 02', 2, N'ул. Гоголя, 32')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (5, N'пр. Чехова, 61', 5, N'л. Бухарестская, 81')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (6, N'пр. Бухарестская, 49', 5, N'ул. Космонавтов, 06')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (7, N'проезд Космонавтов, 36', 2, N'шоссе Будапештсткая, 62')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (8, N'ул. Косиора, 80', 6, N'шоссе Славы, 78')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (9, N'ул. Бухарестская, 49', 3, N'пер. Бухарестская, 02')
INSERT [dbo].[Poezdka] ([IdPoezdka], [AdressNachala], [IdTariv], [AdressKontsa]) VALUES (10, N'пл. Сталина, 10', 2, N'шоссе Гоголя, 12')
SET IDENTITY_INSERT [dbo].[Poezdka] OFF
GO
SET IDENTITY_INSERT [dbo].[Smena] ON 

INSERT [dbo].[Smena] ([IdSmena], [IdSotrudniki], [StazhVozhdeniya], [IdAvtomobil], [IdOtsenka]) VALUES (1, 2, N'5', 1, 2)
INSERT [dbo].[Smena] ([IdSmena], [IdSotrudniki], [StazhVozhdeniya], [IdAvtomobil], [IdOtsenka]) VALUES (2, 4, N'7', 2, 1)
INSERT [dbo].[Smena] ([IdSmena], [IdSotrudniki], [StazhVozhdeniya], [IdAvtomobil], [IdOtsenka]) VALUES (3, 8, N'6', 3, 1)
INSERT [dbo].[Smena] ([IdSmena], [IdSotrudniki], [StazhVozhdeniya], [IdAvtomobil], [IdOtsenka]) VALUES (4, 9, N'5', 4, 3)
INSERT [dbo].[Smena] ([IdSmena], [IdSotrudniki], [StazhVozhdeniya], [IdAvtomobil], [IdOtsenka]) VALUES (5, 12, N'7', 5, 1)
SET IDENTITY_INSERT [dbo].[Smena] OFF
GO
SET IDENTITY_INSERT [dbo].[SostoyaniyeAvto] ON 

INSERT [dbo].[SostoyaniyeAvto] ([IdSostoyaniye], [Nazvania]) VALUES (1, N'Отличное')
INSERT [dbo].[SostoyaniyeAvto] ([IdSostoyaniye], [Nazvania]) VALUES (2, N'Среднее')
INSERT [dbo].[SostoyaniyeAvto] ([IdSostoyaniye], [Nazvania]) VALUES (3, N'Плохое')
SET IDENTITY_INSERT [dbo].[SostoyaniyeAvto] OFF
GO
SET IDENTITY_INSERT [dbo].[Sotrudniki] ON 

INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (2, N'Артур
', N'Дьяконов
', N'Владимирович
', N'+7(326)801-00-96', 1, N'ceyekeuzoiri-9081@yopmail.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (3, N'Аиша
', N'Миронова
', N'Александровна
', N'+7(602)214-16-78', 2, N'junior70@gmail.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (4, N'Ксения', N'Тимофеева', N'Даниэльевна', N'+7(4225)319-46-28', 1, N'camylle08@kulas.org')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (5, N'Елизавета', N'Миронова', N'Егоровна', N'+7(5097)431-76-38', 3, N'jimmy74@gmail.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (6, N'Василиса', N'Попова', N'Михайловна', N'+7(45)232-55-83', 6, N'russel.nelson@moore.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (7, N'Даниил', N'Новиков', N'Филиппович', N'+7(9346)350-34-84', 5, N'larkin.deja@hotmail.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (8, N'София', N'Яковлева', N'Мирославовна', N'+7(1568)593-07-64
', 1, N'dickinson.vickie@bernhard.info')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (9, N'Ксения
', N'Богданова
', N'Васильевна
', N'+7(19)598-93-45
', 1, N'jwill@yahoo.com')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (10, N'Глеб
', N'Ильин
', N'Фёдорович
', N'+7(9604)436-00-48
', 4, N'makenzie47@kuphal.biz')
INSERT [dbo].[Sotrudniki] ([IdSotrudniki], [Imia], [Familia], [Othestvo], [Telefon], [IdRol], [Pochta]) VALUES (12, N'Сафия
', N'Панова
', N'Матвеевна
', N'+7(326)801-00-96
', 1, N'reggie92@schuster.biz')
SET IDENTITY_INSERT [dbo].[Sotrudniki] OFF
GO
SET IDENTITY_INSERT [dbo].[SposobOplati] ON 

INSERT [dbo].[SposobOplati] ([IdSposobOplati], [Nazvania]) VALUES (1, N'Наличные')
INSERT [dbo].[SposobOplati] ([IdSposobOplati], [Nazvania]) VALUES (2, N'Безналичные')
SET IDENTITY_INSERT [dbo].[SposobOplati] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusOplati] ON 

INSERT [dbo].[StatusOplati] ([IdStatusOplati], [Nazvania]) VALUES (1, N'Ожидает')
INSERT [dbo].[StatusOplati] ([IdStatusOplati], [Nazvania]) VALUES (2, N'Оплачено')
INSERT [dbo].[StatusOplati] ([IdStatusOplati], [Nazvania]) VALUES (3, N'Отклонено')
SET IDENTITY_INSERT [dbo].[StatusOplati] OFF
GO
SET IDENTITY_INSERT [dbo].[Tariv] ON 

INSERT [dbo].[Tariv] ([IdTariv], [Nazvania], [Tsena]) VALUES (2, N'МинимальнаяСтоимость', 100.0000)
INSERT [dbo].[Tariv] ([IdTariv], [Nazvania], [Tsena]) VALUES (3, N'ПлатноеОжидание ', 6.0000)
INSERT [dbo].[Tariv] ([IdTariv], [Nazvania], [Tsena]) VALUES (4, N'ПоГороду ', 4000.0000)
INSERT [dbo].[Tariv] ([IdTariv], [Nazvania], [Tsena]) VALUES (5, N'НадбавкаЗаЗаказ', 200.0000)
INSERT [dbo].[Tariv] ([IdTariv], [Nazvania], [Tsena]) VALUES (6, N'БесплатноеОжидание ', 0.0000)
SET IDENTITY_INSERT [dbo].[Tariv] OFF
GO
SET IDENTITY_INSERT [dbo].[Tip] ON 

INSERT [dbo].[Tip] ([IdTipOtcheta], [Nazvania]) VALUES (1, N'Бухгалтерский')
INSERT [dbo].[Tip] ([IdTipOtcheta], [Nazvania]) VALUES (2, N'Внутригодовая')
INSERT [dbo].[Tip] ([IdTipOtcheta], [Nazvania]) VALUES (3, N'Сезонный')
INSERT [dbo].[Tip] ([IdTipOtcheta], [Nazvania]) VALUES (4, N'Сводный')
INSERT [dbo].[Tip] ([IdTipOtcheta], [Nazvania]) VALUES (5, N'')
SET IDENTITY_INSERT [dbo].[Tip] OFF
GO
SET IDENTITY_INSERT [dbo].[Tip-Avto] ON 

INSERT [dbo].[Tip-Avto] ([IdTipAvto], [Nazvania], [GodVipuska]) VALUES (1, N'Бизнес', N'2019')
INSERT [dbo].[Tip-Avto] ([IdTipAvto], [Nazvania], [GodVipuska]) VALUES (2, N'Минивэн', N'2017')
INSERT [dbo].[Tip-Avto] ([IdTipAvto], [Nazvania], [GodVipuska]) VALUES (3, N'Комфорт', N'2016')
INSERT [dbo].[Tip-Avto] ([IdTipAvto], [Nazvania], [GodVipuska]) VALUES (4, N'Эконом', N'2010')
SET IDENTITY_INSERT [dbo].[Tip-Avto] OFF
GO
SET IDENTITY_INSERT [dbo].[Vremia] ON 

INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (1, CAST(N'2023-07-23' AS Date), CAST(N'2023-10-24' AS Date), 1)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (2, CAST(N'2023-07-23' AS Date), CAST(N'2024-01-28' AS Date), 2)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (3, CAST(N'2023-07-23' AS Date), CAST(N'2023-08-23' AS Date), 3)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (4, CAST(N'2023-07-23' AS Date), CAST(N'2023-10-13' AS Date), 1)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (5, CAST(N'2023-07-23' AS Date), CAST(N'2024-01-24' AS Date), 2)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (6, CAST(N'2023-07-23' AS Date), CAST(N'2023-08-23' AS Date), 3)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (7, CAST(N'2023-10-23' AS Date), CAST(N'2024-01-11' AS Date), 1)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (8, CAST(N'2022-07-23' AS Date), CAST(N'2023-08-10' AS Date), 3)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (9, CAST(N'2022-07-23' AS Date), CAST(N'2023-01-15' AS Date), 2)
INSERT [dbo].[Vremia] ([IdVremia], [DataNachalo], [DataKonetsa], [IdPeriod]) VALUES (10, CAST(N'2023-07-23' AS Date), CAST(N'2023-08-26' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Vremia] OFF
GO
SET IDENTITY_INSERT [dbo].[Zakazi] ON 

INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (1, CAST(N'2023-07-23' AS Date), CAST(N'15:11:54' AS Time), 1, 1, 1, 1)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (2, CAST(N'2024-09-24' AS Date), CAST(N'20:30:20' AS Time), 3, 2, 2, 2)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (3, CAST(N'2023-03-30' AS Date), CAST(N'21:30:20' AS Time), 4, 3, 3, 3)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (4, CAST(N'2023-06-20' AS Date), CAST(N'18:30:50' AS Time), 5, 4, 4, 4)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (5, CAST(N'2023-05-21' AS Date), CAST(N'11:50:20' AS Time), 6, 5, 5, 5)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (6, CAST(N'2023-04-26' AS Date), CAST(N'10:30:20' AS Time), 7, 3, 6, 6)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (7, CAST(N'2023-09-20' AS Date), CAST(N'14:20:31' AS Time), 8, 4, 7, 7)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (8, CAST(N'2023-10-14' AS Date), CAST(N'20:21:50' AS Time), 9, 2, 8, 8)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (9, CAST(N'2023-04-18' AS Date), CAST(N'14:31:50' AS Time), 10, 3, 9, 9)
INSERT [dbo].[Zakazi] ([IdZakazi], [VremiaZakaza], [DataZakaza], [IdKlienta], [IdSmena], [IdPoezdka], [IdOplata]) VALUES (10, CAST(N'2024-01-03' AS Date), CAST(N'13:31:50' AS Time), 11, 1, 10, 10)
SET IDENTITY_INSERT [dbo].[Zakazi] OFF
GO
ALTER TABLE [dbo].[Avto]  WITH CHECK ADD  CONSTRAINT [FK_Avto_SostoyaniyeAvto] FOREIGN KEY([IdSostoyaniye])
REFERENCES [dbo].[SostoyaniyeAvto] ([IdSostoyaniye])
GO
ALTER TABLE [dbo].[Avto] CHECK CONSTRAINT [FK_Avto_SostoyaniyeAvto]
GO
ALTER TABLE [dbo].[Avto]  WITH CHECK ADD  CONSTRAINT [FK_Avto_Tip-Avto] FOREIGN KEY([IdTipAvto])
REFERENCES [dbo].[Tip-Avto] ([IdTipAvto])
GO
ALTER TABLE [dbo].[Avto] CHECK CONSTRAINT [FK_Avto_Tip-Avto]
GO
ALTER TABLE [dbo].[IstoriaZakazov]  WITH CHECK ADD  CONSTRAINT [FK_IstoriaZakazov_Otchet] FOREIGN KEY([IdOtcheta])
REFERENCES [dbo].[Otchet] ([IdOtcheta])
GO
ALTER TABLE [dbo].[IstoriaZakazov] CHECK CONSTRAINT [FK_IstoriaZakazov_Otchet]
GO
ALTER TABLE [dbo].[IstoriaZakazov]  WITH CHECK ADD  CONSTRAINT [FK_IstoriaZakazov_Zakazi] FOREIGN KEY([IdZakazi])
REFERENCES [dbo].[Zakazi] ([IdZakazi])
GO
ALTER TABLE [dbo].[IstoriaZakazov] CHECK CONSTRAINT [FK_IstoriaZakazov_Zakazi]
GO
ALTER TABLE [dbo].[Klient]  WITH CHECK ADD  CONSTRAINT [FK_Klient_otsenka] FOREIGN KEY([IdOtsenka])
REFERENCES [dbo].[Otsenka] ([IdOtsenka])
GO
ALTER TABLE [dbo].[Klient] CHECK CONSTRAINT [FK_Klient_otsenka]
GO
ALTER TABLE [dbo].[Klient]  WITH CHECK ADD  CONSTRAINT [FK_Klient_PlatezhnyyeKarty] FOREIGN KEY([IdPlatezhnyyeKarty])
REFERENCES [dbo].[PlatezhnyyeKarty] ([IdPlatezhnyyeKarty])
GO
ALTER TABLE [dbo].[Klient] CHECK CONSTRAINT [FK_Klient_PlatezhnyyeKarty]
GO
ALTER TABLE [dbo].[Oplata]  WITH CHECK ADD  CONSTRAINT [FK_Oplata_SposobOplati] FOREIGN KEY([IdSposobOplati])
REFERENCES [dbo].[SposobOplati] ([IdSposobOplati])
GO
ALTER TABLE [dbo].[Oplata] CHECK CONSTRAINT [FK_Oplata_SposobOplati]
GO
ALTER TABLE [dbo].[Oplata]  WITH CHECK ADD  CONSTRAINT [FK_Oplata_StatusOplati] FOREIGN KEY([IdStatusOplati])
REFERENCES [dbo].[StatusOplati] ([IdStatusOplati])
GO
ALTER TABLE [dbo].[Oplata] CHECK CONSTRAINT [FK_Oplata_StatusOplati]
GO
ALTER TABLE [dbo].[Otchet]  WITH CHECK ADD  CONSTRAINT [FK_Otchet_Tip] FOREIGN KEY([IdTipOtcheta])
REFERENCES [dbo].[Tip] ([IdTipOtcheta])
GO
ALTER TABLE [dbo].[Otchet] CHECK CONSTRAINT [FK_Otchet_Tip]
GO
ALTER TABLE [dbo].[Otchet]  WITH CHECK ADD  CONSTRAINT [FK_Otchet_Vremia] FOREIGN KEY([IdVremia])
REFERENCES [dbo].[Vremia] ([IdVremia])
GO
ALTER TABLE [dbo].[Otchet] CHECK CONSTRAINT [FK_Otchet_Vremia]
GO
ALTER TABLE [dbo].[Poezdka]  WITH CHECK ADD  CONSTRAINT [FK_Poezdka_Tariv] FOREIGN KEY([IdTariv])
REFERENCES [dbo].[Tariv] ([IdTariv])
GO
ALTER TABLE [dbo].[Poezdka] CHECK CONSTRAINT [FK_Poezdka_Tariv]
GO
ALTER TABLE [dbo].[Smena]  WITH CHECK ADD  CONSTRAINT [FK_Smena_Avto] FOREIGN KEY([IdAvtomobil])
REFERENCES [dbo].[Avto] ([IdAvtomobil])
GO
ALTER TABLE [dbo].[Smena] CHECK CONSTRAINT [FK_Smena_Avto]
GO
ALTER TABLE [dbo].[Smena]  WITH CHECK ADD  CONSTRAINT [FK_Smena_Otsenka] FOREIGN KEY([IdOtsenka])
REFERENCES [dbo].[Otsenka] ([IdOtsenka])
GO
ALTER TABLE [dbo].[Smena] CHECK CONSTRAINT [FK_Smena_Otsenka]
GO
ALTER TABLE [dbo].[Smena]  WITH CHECK ADD  CONSTRAINT [FK_Smena_Sotrudniki] FOREIGN KEY([IdSotrudniki])
REFERENCES [dbo].[Sotrudniki] ([IdSotrudniki])
GO
ALTER TABLE [dbo].[Smena] CHECK CONSTRAINT [FK_Smena_Sotrudniki]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Dolznost] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Dolznost] ([IdRol])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Dolznost]
GO
ALTER TABLE [dbo].[Vremia]  WITH CHECK ADD  CONSTRAINT [FK_Vremia_Period] FOREIGN KEY([IdPeriod])
REFERENCES [dbo].[Period] ([IdPeriod])
GO
ALTER TABLE [dbo].[Vremia] CHECK CONSTRAINT [FK_Vremia_Period]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Klient] FOREIGN KEY([IdKlienta])
REFERENCES [dbo].[Klient] ([IdKlienta])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Klient]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Oplata] FOREIGN KEY([IdOplata])
REFERENCES [dbo].[Oplata] ([IdOplata])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Oplata]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Poezdka] FOREIGN KEY([IdPoezdka])
REFERENCES [dbo].[Poezdka] ([IdPoezdka])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Poezdka]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Smena] FOREIGN KEY([IdSmena])
REFERENCES [dbo].[Smena] ([IdSmena])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Smena]
GO
USE [master]
GO
ALTER DATABASE [Taxsopark] SET  READ_WRITE 
GO
