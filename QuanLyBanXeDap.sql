create database QuanLyBanXeDap

GO
ALTER DATABASE [QuanLyBanXeDap] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanXeDap] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanXeDap] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanXeDap] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanXeDap] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanXeDap] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanXeDap] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanXeDap] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanXeDap] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanXeDap] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanXeDap] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanXeDap] SET QUERY_STORE = OFF
GO

Use [QuanLyBanXeDap] 

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nchar](10) NULL,
	[pass] [nchar](10) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[amount] [int] NULL,
	[maCart] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[maCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

go
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
go

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[sell_ID] [int] NOT NULL,
	[model] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[delivery] [nvarchar](50) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
	[image4] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[contentReview] [nvarchar](500) NULL,
	[dateReview] [date] NULL,
	[maReview] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[maReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongDaBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[idSupplier] [int] IDENTITY(1,1) NOT NULL,
	[nameSupplier] [nvarchar](100) NULL,
	[phoneSupplier] [nvarchar](50) NULL,
	[emailSupplier] [nvarchar](200) NULL,
	[addressSupplier] [nvarchar](200) NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongChiTieuBanHang](
	[userID] [int] NULL,
	[TongChiTieu] [float] NULL,
	[TongBanHang] [float] NULL
) ON [PRIMARY]
GO

GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([sell_ID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Account]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Product]
GO
ALTER TABLE [dbo].[SoLuongDaBan]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongDaBan_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[SoLuongDaBan] CHECK CONSTRAINT [FK_SoLuongDaBan_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Category]
GO
ALTER TABLE [dbo].[TongChiTieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_TongChiTieuBanHang_Account] FOREIGN KEY([userID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[TongChiTieuBanHang] CHECK CONSTRAINT [FK_TongChiTieuBanHang_Account]
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatSoLuongDaBan]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatSoLuongDaBan] @productID int, @soLuongBanThem int
as
begin
	update SoLuongDaBan set [soLuongDaBan]=[soLuongDaBan] + @soLuongBanThem where productID=@productID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatTongBanHang]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongBanHang] @sell_ID int, @banHangThem float
as
begin
	update TongChiTieuBanHang set TongBanHang= TongBanHang + @banHangThem where [userID]=@sell_ID
end
GO
/****** Object:  StoredProcedure [dbo].[proc_CapNhatTongChiTieu]    Script Date: 12/14/2021 8:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongChiTieu] @userID int, @chiTieuThem float
as
begin
	update TongChiTieuBanHang set TongChiTieu= TongChiTieu + @chiTieuThem where [userID]=@userID
end
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanXeDap] SET  READ_WRITE 
GO


SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1, N'haith    ', N'123    ', 1, 1, N'haiprotpp@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (2, N'abc       ', N'123    ', 0, 0, N'haiprotpp@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (3, N'songoky   ', N'123    ', 1, 0, N'haiprotpp@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (6, N'mrd       ', N'123       ', 1, 1, N'haiprotpp@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1014, N'naruto    ', N'123456    ', 1, 1, N'naruto@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1015, N'sasuke    ', N'123456    ', 1, 1, N'sasuke@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1016, N'sakura    ', N'123456    ', 1, 1, N'sasuke@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1017, N'itachi    ', N'123456    ', 1, 1, N'sasuke@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1018, N'kakashi   ', N'123456    ', 1, 1, N'kakashi@gmail.com')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1019, N'jiraiya   ', N'123456    ', 1, 1, N'kakashi@gmail.com')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO

GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Xe đạp đường trường Giant - Road Bike')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Xe đạp leo núi Giant - MTB Bike')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Xe touring - City Giant')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Fixed Gear')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'Accerssories')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (6, N'Shoes')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (7, N'Others')

GO

SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (1, 1, 999, CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (2, 1, 999, CAST(N'2023-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (3, 1, 400, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (4, 1, 511.2, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (5, 1, 241.20000000000002, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (6, 1, 392.40000000000003, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (7, 1, 482.40000000000003, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (8, 2, 300, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (9, 2, 400, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (10, 1, 180, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (11, 1, 1079.1000000000001, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (12, 1, 122.4, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (13, 1, 1394.1000000000001, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (14, 2, 256, CAST(N'2023-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (15, 3, 450, CAST(N'2023-10-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (16, 2, 200, CAST(N'2023-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (17, 2, 100, CAST(N'2023-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (18, 3, 156, CAST(N'2023-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (19, 3, 256, CAST(N'2023-06-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (20, 3, 158, CAST(N'2023-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (21, 2, 800, CAST(N'2023-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (22, 3, 750, CAST(N'2023-03-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (23, 2, 657, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (24, 1, 800, CAST(N'2023-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (25, 1, 1491.6, CAST(N'2023-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (26, 1, 396, CAST(N'2023-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (27, 1, 761.2, CAST(N'2023-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (28, 1, 1687.4, CAST(N'2023-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (29, 1, 1760, CAST(N'2023-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (30, 1, 2175.8, CAST(N'2023-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (31, 1, 396, CAST(N'2023-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (32, 1, 739.2, CAST(N'2023-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (33, 1, 567.6, CAST(N'2023-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Invoice] ([maHD], [accountID], [tongGia], [ngayXuat]) VALUES (34, 1, 803, CAST(N'2023-12-14T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Invoice] OFF

SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (1, N'Cty TNHH HanoiBike', N'091121786', N'cty@gmail.com', N'so 53 Duc Giang', 1)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (2, N'Cty TNHH BacGiangBike', N'091121786', N'cty@gmail.com', N'so 2 Ngo Gia Tu', 2)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (3, N'Cty TNHH DaNangBike', N'091121786', N'cty@gmail.com', N'so 3 Vo Van Ngan', 3)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (4, N'Cty TNHH SaiGonBike', N'091121786', N'cty@gmail.com', N'so 4 Huynh Thuc Khang', 4)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO

GO
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1, 10340.200000000003, 14082)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1014, 600, 4000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1015, 450, 3500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1017, 900, 3000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1018, 800, 2500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1019, 660, 2700)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (2, 100, 150)
GO

SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (11, N'Xe đạp Road Giant Propel ADV 2 2023', N'img/a1.jpg', 74300000, N'Xe đạp Road Giant Propel ADV 2 2023', N'Xe Road Giant Propel ADV 2 2023 - Propel 
seri mới sản xuất mục đích thắng mọi đấu trường, mẫu xe này như sản xuất riêng cho Micheal Matthews   và Dylan Groenewegen và những người yêu xe muốn sử hữu dòng xe
chuyên nghiệp.', 1, 1, N'G87', N'Blue', N'Hải Phòng', N'img/d1.jpg', N'img/d2.jpg', N'img/d3.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (15, N'Xe Road Giant Propel Advanced SL 0', N'img/a2.jpg', 112000000, N'Xe Road Giant Propel Advanced SL 0', N'Xe đạp đua thể thao Giant Propel Advanced SL 0 –  2018  
là một trong những dòng xe đua cao cấp bậc nhất của Giant được nhiều người chơi xe đua mong ước sở hữu.   Với thiết kế thể thao với khung khí động học tiêu chuẩn siêu nhẹ mang 
tới tốc độ tối đa và mạnh mẽ hơn bao giờ hết.   Tay lái cong thể thao cũng đem tới sự thoải mái cho người dùng khi đi quãng đường dài.
', 1, 1, N'G87', N'Blue', N'Hà Nội', N'img/d6.jpg', N'img/d7.jpg', N'img/d8.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (19, N'Xe Road Giant SCR 2 2022', N'img/a3.jpg', 16900000, N'Xe Road Giant SCR 2 2022', N' ', 1, 1, N'G68', N'Black', N'Hà Nội', N'img/a4.jpg', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (20, N'Xe Đạp Road Giant PROPEL ADV PRO 1 D', N'img/a5.jpg', 121900000, N'Xe Đạp Road Giant PROPEL ADV PRO 1 D', N'', 1, 1, N'G68', N'Blue', N'Hà Nội', 
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (21, N'Xe road Giant Propel ADV SL 1 D 2022', N'img/a6.jpg', 159120000, N'Xe road Giant Propel ADV SL 1 D 2022', N' 2022 PROPEL ADV SL 1 D là Mẫu Xe Đạp Đua,   
Xe Đạp Đường Trường Cao Cấp GIANT đang rất được ưa chuộng tại Việt Nam. Công nghệ Giant’s AeroSystem Shaping   đem lại cho khung xe hình dạng elip cắt ngắn; 
điều này tạo cho chiếc xe đạt hiệu quả cao nhất về lực gió;  lực quán tính ma sát; được tối ưu hóa để giảm lực cản.',
1, 1, N'G68', N'Black', N'Hải Phòng', N'img/d10.jpg', N'img/d11.jpg', N'img/d12.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (22, N'Xe Road Giant 2022 SPEEDER ', N'img/a7.jpg', 12700000, N'Xe Road Giant 2022 SPEEDER', N'', 1, 1, N'G68', N'White', N'Hà Nội',
N'img/a8.jpg', N'img/a9.jpg', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (24, N'Xe Road Giant 2022 DEFY ADV 1', N'img/a10.jpg', 67000000, N'Xe Road Giant 2022 DEFY ADV 1', N'', 1, 1, N'G68', N'Black', N'Hà Nội',
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (25, N'Xe Road Giant Propel ADV SL 1D', N'img/a11.jpg', 176800000, N'Xe Road Giant Propel ADV SL 1D', N'Giant PROPEL ADV SL 1 D 2022 là Mẫu Xe Đạp Đua,  
Xe Đạp Đường Trường Cao Cấp GIANT đang rất được ưa chuộng tại Việt Nam. Công nghệ Giant’s AeroSystem Shaping   đem lại cho khung xe hình dạng elip cắt ngắn; 
điều này tạo cho chiếc xe đạt hiệu quả cao nhất về lực gió;  lực quán tính ma sát; được tối ưu hóa để giảm lực cản.', 1, 1, N'G68', N'Black', N'Quảng Ninh',
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (26, N'Xe Road Giant Propel ADV 2D 2022', N'img/a12.jpg', 69850000, N'Xe Road Giant Propel ADV 2D 2022', N'', 1, 1, N'G68', N'Red', N'Bắc Giang',
N'img/d14.jpg', N'img/d15.jpg', N'img/d16.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (27, N'Xe Road Giant Propel ADV 1D 2022', N'img/a13.jpg', 99950000, N'Xe Road Giant Propel ADV 1D 2022', N'', 1, 1, N'G68', N'Gray', N'Hà Nội',
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (28, N'Xe Road Giant LIV 2022 AVAIL AR 2', N'img/a14.jpg', 59650000, N'Xe Road Giant LIV 2022 AVAIL AR 2', N'', 1, 1, N'G68', N'Green', N'Hà Nội',
N'img/a15.jpg', N'img/d18.jpg', N'img/d19.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (29, N'Xe MTB Giant MTX bánh 24 inchs', N'img/a16.jpg', 5000000, N'Xe MTB Giant MTX bánh 24 inchs', N'Thương hiệu Đài Loan nổi tiếng toàn cầu với những sản 
phẩm chất lượng.  Với kết cấu khung sườn nhôm Aluxx nhẹ với cứng cáp. Kết hợp bộ số Shimano Nhật Bản cho trải nghiệm tốt nhất cho bạn.   
Bộ vành 24inch phù hợp cho chiều cao 1m4-1m6 với tùy chỉnh yên. ', 2, 1, N'G68', N'Red', N'Hà Nội',
N'img/a17.jpg', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (30, N'Xe MTB Giant XTC ADV 3 2023', N'img/a18.jpg', 38450000, N'Xe MTB Giant XTC ADV 3 2023', N'', 2, 1, N'G68', N'Gray', N'Hà Nội', 
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4])
VALUES (31, N'Xe MTB Giant XTC 800', N'img/a19.jpg', 17250000, N'Xe MTB Giant XTC 800', N'', 2, 1, N'G68', N'Red', N'Hà Nội',
N'img/a20.jpg', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (32, N'Xe MTB GIANT TALON 29 4 M 2022', N'img/a21.jpg', 11000000, N'Xe MTB GIANT TALON 29 4 M 2022', N'', 2, 1, N'G68', N'Black', N'Hà Nội', 
N'img/a22.jpg', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (33, N'Xe MTB GIANT XTC 820 2021', N'img/a23.jpg', 25000000, N'Xe MTB GIANT XTC 820 2021', N'', 2, 1, N'G68', N'Black', N'Hà Nội', 
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (34, N'Xe đạp MTB Giant ATX 720 2022', N'img/a24.jpg', 390, N'Xe đạp MTB Giant ATX 720 2022', N'', 2, 1, N'G68', N'Gray', N'Hà Nội',
N'img/a25.jpg', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (35, N'Xe MTB Giant ATX 830 2020', N'img/a26.jpg', 14000000, N'Xe MTB Giant ATX 830 2020', N'', 2, 1, N'G68', N'Red', N'Hà Nội',
N'img/a27.jpg', N'img/d25.jpg', N'img/d28.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (36, N'Xe City Giant Escape 1 phanh dầu 2022', N'img/a32.jpg', 13150000, N'Xe City Giant Escape 1 phanh dầu 2022', N'', 3, 1, N'G68', N'Gray', N'Hà Nội',
N'img/d29.jpg', N'img/a33.jpg', N'img/d30.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (37, N'Xe Touring GIANT Escape 2 2023 City Disc bản quốc tế', N'img/a35.jpg', 13790000, N'Xe Touring GIANT Escape 2 2023 City Disc bản quốc tế',
N'', 3, 1, N'G68', N'Blue', N'Hà Nội', N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (38, N'Xe đạp city Giant momentum Ineed Latte 2023', N'img/a34.jpg', 10950000, N'Xe đạp city Giant momentum Ineed Latte 2023', N'',3, 1, N'G89', N'Gray', N'Hà Nội',N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (39, N'Xe Touring GIANT Escape 2 2023 City Disc bản quốc tế', N'', 15790000, N'Xe Touring GIANT Escape 2 2023 City Disc bản quốc tế', N'', 3, 1, N'G89', N'Yellow', N'Hà Nội',
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (40, N'Xe đạp Fixed Gear MAGICBROS CX-8', N'img/a41.jpg', 8000000,N'Xe đạp Fixed Gear MAGICBROS CX-8', N'', 4, 1, N'G76', N'White', N'Hà Nội',N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (41, N'Xe đạp Fixed Gear Magicbros CX-5', N'img/a43.jpg', 4800000, N'Xe đạp Fixed Gear Magicbros CX-5', N'', 4, 1, N'G89', N'White', N'Hà Nội',
N'img/a44.jpg', N'img/a45.jpg', N'img/a46.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (42, N'Xích shimano CS HG40 6/7/8 speed 114 mắt', N'img/a52.jpg', 120000, N'Xích shimano CS HG40 6/7/8 speed 114 mắt', N'', 5, 1, N'G76', N'White', N'Hà Nội',
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (43, N'Ghi đông carbon Enve aero', N'img/a60.jpg', 1250000.00, N'Ghi đông carbon Enve aero', N'', 5, 1, N'G89', N'Black', N'Hà Nội', 
N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (44, N'Giày cá Road Santic 2 dán 1 vặn đế carbon mẫu 2021', N'img/a82.jpg', 3100000, N'Giày cá Road Santic 2 dán 1 vặn đế carbon mẫu 2021',
N'', 6, 1, N'G87', N'Red', N'Hà Nội', N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (45, N'Giày Santic không cá khóa vặn mẫu 2023', N'img/a81.jpg', 2000000, N'Giày Santic không cá khóa vặn mẫu 2023', N'Sản phẩm rất tốt đi
thoải mái', 6, 1, N'G68', N'Blue', N'Hà Nội', N'', N'', N'')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (46, N'Mũ bảo hiểm đi xe đạp MTB Fox thể thao', N'img/a88.jpg', 550000, N'Mũ bảo hiểm đi xe đạp MTB Fox thể thao', N'',
7, 1, N'G68', N'Blue', N'Hà Nội', N'img/d42.jpg', N'img/d43.jpg', N'img/d44.jpg')

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model], [color], [delivery], [image2], [image3], [image4]) 
VALUES (47, N'Kính đạp xe Magicbros một mắt', N'img/a93.jpg', 400000, N'Kính đạp xe Magicbros một mắt', N'',
7, 1, N'G45', N'White', N'Hà Nội', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 15, N'xin chao san pham nay rat tot', CAST(N'2021-11-19' AS Date), 2)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chào', CAST(N'2021-11-24' AS Date), 14)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'sản phẩm này rất tốt', CAST(N'2021-11-25' AS Date), 15)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 2', CAST(N'2021-11-26' AS Date), 16)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'fsdf', CAST(N'2021-12-01' AS Date), 17)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 3', CAST(N'2021-12-02' AS Date), 18)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 4', CAST(N'2021-12-03' AS Date), 19)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'bao cao', CAST(N'2021-12-14' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO

go
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (11, 23)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (15, 13)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (19, 21)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (20, 9)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (21, 7)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (24, 10)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (46, 2)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (45, 4)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (41, 2)
go



