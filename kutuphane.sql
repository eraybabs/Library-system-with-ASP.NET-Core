USE [master]
GO
/****** Object:  Database [VTKitapSatis]    Script Date: 23.08.2023 17:25:34 ******/
CREATE DATABASE [VTKitapSatis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VTKitapSatis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\VTKitapSatis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VTKitapSatis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\VTKitapSatis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [VTKitapSatis] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VTKitapSatis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VTKitapSatis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VTKitapSatis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VTKitapSatis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VTKitapSatis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VTKitapSatis] SET ARITHABORT OFF 
GO
ALTER DATABASE [VTKitapSatis] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VTKitapSatis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VTKitapSatis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VTKitapSatis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VTKitapSatis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VTKitapSatis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VTKitapSatis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VTKitapSatis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VTKitapSatis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VTKitapSatis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VTKitapSatis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VTKitapSatis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VTKitapSatis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VTKitapSatis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VTKitapSatis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VTKitapSatis] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VTKitapSatis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VTKitapSatis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VTKitapSatis] SET  MULTI_USER 
GO
ALTER DATABASE [VTKitapSatis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VTKitapSatis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VTKitapSatis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VTKitapSatis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VTKitapSatis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VTKitapSatis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VTKitapSatis] SET QUERY_STORE = ON
GO
ALTER DATABASE [VTKitapSatis] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [VTKitapSatis]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Adres] [nvarchar](max) NULL,
	[Bolum] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Fakulte] [nvarchar](max) NULL,
	[Ogrencino] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiralamalar]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiralamalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[KitapId] [int] NOT NULL,
 CONSTRAINT [PK_Kiralamalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KitapAdi] [nvarchar](max) NOT NULL,
	[Tanim] [nvarchar](max) NOT NULL,
	[Yazar] [nvarchar](max) NOT NULL,
	[Fiyat] [float] NOT NULL,
	[KitapTuruId] [int] NOT NULL,
	[ResimUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapTurleri]    Script Date: 23.08.2023 17:25:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapTurleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_KitapTurleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230813021910_migrationreinstall', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230814085224_KiralamalarTablosEkle', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230817181451_identitytablolariekleme', N'7.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230817184229_applicationuserseklenmesi', N'7.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'12345678901234567890123456789123zxc', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2222222222as22222222222222222123qwe', N'Ogrenci', N'OGRENCI', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'46fd012a-baa3-4da1-ab4e-58b9e017b485', N'12345678901234567890123456789123zxc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'36801d18-d3a7-461f-ba8a-8b787817656d', N'2222222222as22222222222222222123qwe')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Adres], [Bolum], [Discriminator], [Fakulte], [Ogrencino]) VALUES (N'36801d18-d3a7-461f-ba8a-8b787817656d', N'test5@gmail.com', N'TEST5@GMAIL.COM', N'test5@gmail.com', N'TEST5@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEKjD0ngCnCvKq/VqRSXFJnQ1xjjxqVb5UIGc0A2Z011y4NAlj2ds2OhFtIYrwv3Fqw==', N'RO2X34C744W65KJIXG3PSPTM27FRTMYQ', N'b75d440c-e23f-4332-b01e-38945cfe051b', NULL, 0, 0, NULL, 1, 0, N'Çankaya Ankara', N'Bilgisayar Mühendisliği', N'ApplicationUser', N'Mühendislik', 2233)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Adres], [Bolum], [Discriminator], [Fakulte], [Ogrencino]) VALUES (N'46fd012a-baa3-4da1-ab4e-58b9e017b485', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEDByfC83nqRqMmyBV3fOx6NATwFMFzfDqBFraIbU9/iDBFGe1kJIK3ne9/1+lX6Z7Q==', N'QY4V7QHDBOR67G67ZOEIUJX5HQGOSQMB', N'd1fd0572-0570-473a-a6ea-ce1599d8fcbc', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Kiralamalar] ON 

INSERT [dbo].[Kiralamalar] ([Id], [OgrenciId], [KitapId]) VALUES (1, 2233, 2)
INSERT [dbo].[Kiralamalar] ([Id], [OgrenciId], [KitapId]) VALUES (2, 1235, 1)
INSERT [dbo].[Kiralamalar] ([Id], [OgrenciId], [KitapId]) VALUES (4, 2929, 4)
SET IDENTITY_INSERT [dbo].[Kiralamalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitaplar] ON 

INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (1, N'Üç Silahşörler', N'Fransa''da geçen macera romanı', N'Alexandre Dumas', 145, 3, N'\img\threemusketeers.jpg')
INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (2, N'Savaş ve Barış', N'Aşk romanı', N'Tolstoy', 245, 1, N'\img\savasbaris.jpg')
INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (3, N'Dede Korkut Hikayeleri', N'Eski Türk Masalları', N'Anonim', 100, 4, N'\img\dedkorkut.png')
INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (4, N'Sefiller', N'Eski Fransa''da geçen bir dram romanı', N'Victor Hugo', 120, 1, N'\img\miserables.jpg')
INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (5, N'Balkan Tarihi', N'Balkan tarihi ve kültürü ile ilgili tarihsel bir araştırma', N'Pınarhisar Belediyesi', 200, 2, N'\img\balkan.jpg')
INSERT [dbo].[Kitaplar] ([Id], [KitapAdi], [Tanim], [Yazar], [Fiyat], [KitapTuruId], [ResimUrl]) VALUES (6, N'Dracula', N'Bram Stoker''ın ünlü kitabı', N'Bram Stoker', 210, 1, N'\img\dracula.jpg')
SET IDENTITY_INSERT [dbo].[Kitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[KitapTurleri] ON 

INSERT [dbo].[KitapTurleri] ([Id], [Ad]) VALUES (1, N'Roman')
INSERT [dbo].[KitapTurleri] ([Id], [Ad]) VALUES (2, N'Tarih')
INSERT [dbo].[KitapTurleri] ([Id], [Ad]) VALUES (3, N'Hikaye')
INSERT [dbo].[KitapTurleri] ([Id], [Ad]) VALUES (4, N'Çocuk Kitaplar')
INSERT [dbo].[KitapTurleri] ([Id], [Ad]) VALUES (5, N'Anı')
SET IDENTITY_INSERT [dbo].[KitapTurleri] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23.08.2023 17:25:35 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 23.08.2023 17:25:35 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kiralamalar_KitapId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_Kiralamalar_KitapId] ON [dbo].[Kiralamalar]
(
	[KitapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kitaplar_KitapTuruId]    Script Date: 23.08.2023 17:25:35 ******/
CREATE NONCLUSTERED INDEX [IX_Kitaplar_KitapTuruId] ON [dbo].[Kitaplar]
(
	[KitapTuruId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Kiralamalar]  WITH CHECK ADD  CONSTRAINT [FK_Kiralamalar_Kitaplar_KitapId] FOREIGN KEY([KitapId])
REFERENCES [dbo].[Kitaplar] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kiralamalar] CHECK CONSTRAINT [FK_Kiralamalar_Kitaplar_KitapId]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar_KitapTurleri_KitapTuruId] FOREIGN KEY([KitapTuruId])
REFERENCES [dbo].[KitapTurleri] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitaplar] CHECK CONSTRAINT [FK_Kitaplar_KitapTurleri_KitapTuruId]
GO
USE [master]
GO
ALTER DATABASE [VTKitapSatis] SET  READ_WRITE 
GO
