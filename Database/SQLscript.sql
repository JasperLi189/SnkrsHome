USE master;
ALTER DATABASE SnkrsHome SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE SnkrsHome ;

IF DB_ID('SnkrsHome') IS NOT NULL
	DROP DATABASE SnkrsHome
	
CREATE DATABASE SnkrsHome
GO

USE [SnkrsHome]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/12/2020 5:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](20) NULL,
	[Password] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/12/2020 5:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[E_Mail] [varchar](255) NULL,
	[Password] [varchar](155) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[Country] [varchar](20) NULL,
	[State] [varchar](20) NULL,
	[City] [varchar](20) NULL,
	[ZipCode] [varchar](20) NULL,
	[MemberShip] [varchar](20) NULL,
	[Address] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 1/12/2020 5:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL,
	[Price] [varchar](20) NULL,
	[Image] [varchar](30) NULL,
	[Size] [varchar](20) NULL,
	[Quantity] [int] NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/12/2020 5:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [date] NULL,
	[PaymentDate] [date] NULL,
	[FinishedDate] [date] NULL,
	[CustomerID] [int] NULL,
	[ShipID] [varchar](10) NULL,
	[ItemList] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingCom]    Script Date: 1/12/2020 5:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingCom](
	[ShippingID] [varchar](10) NOT NULL,
	[Name] [varchar](20) NULL,
	[Address] [varchar](125) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShippingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [Account], [Password]) VALUES (1, N'JasperAdministrator', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [Country], [State], [City], [ZipCode], [MemberShip], [Address]) VALUES (1, N'jasper1829189@qq.com', N'123456789', N'90372740', N'JianPei', N'Li', N'China', N'GuangDong', N'GuangZhou', N'511400', N'Bronze', N'IJAKBF')
INSERT [dbo].[Customer] ([Customer_ID], [E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [Country], [State], [City], [ZipCode], [MemberShip], [Address]) VALUES (2, N'Joe123@gmail.com', N'123Joe', N'90372741', N'Joe', N'Lee', N'China', N'GuangDong', N'GuangZhou', N'511400', N'Bronze', N'Null')
INSERT [dbo].[Customer] ([Customer_ID], [E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [Country], [State], [City], [ZipCode], [MemberShip], [Address]) VALUES (3, N'Hans123@gmail.com', N'123Hans', N'90566441', N'Hans', N'Smith', N'UK', N'Engaland', N'London', N'514500', N'Bronze', N'Null')
INSERT [dbo].[Customer] ([Customer_ID], [E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [Country], [State], [City], [ZipCode], [MemberShip], [Address]) VALUES (4, N'David123@gmail.com', N'123David', N'90223741', N'David', N'Brown', N'China', N'ShangHai', N'ShangHai', N'516700', N'Bronze', N'Null')
INSERT [dbo].[Customer] ([Customer_ID], [E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [Country], [State], [City], [ZipCode], [MemberShip], [Address]) VALUES (5, N'Daved123@gmail.com', N'123David', N'90223741', N'Daved', N'Brown', N'China', N'ShangHai', N'ShangHai', N'576700', N'Bronze', N'Null')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Item] ([ItemID], [Name], [Price], [Image], [Size], [Quantity], [Description]) VALUES (N'i001', N'Kobe11ftb', N'1000', N'ftb.jpg', N'42.5', 10, N'Nike Kobe 11 Elite Low Black Mamba Collection Fade to Black')
INSERT [dbo].[Item] ([ItemID], [Name], [Price], [Image], [Size], [Quantity], [Description]) VALUES (N'i002', N'LBJ17', N'200', N'monster.jpg', N'43', 20, N'The Monstars have crash-landed in the Windy City, prepared to strip us of some of our greatest hardwood heroes')
INSERT [dbo].[Item] ([ItemID], [Name], [Price], [Image], [Size], [Quantity], [Description]) VALUES (N'i003', N'JHVol4', N'250', N'Vol4.jpg', N'42', 25, N'These basketball shoes are designed specifically for James Harden game to help him stay strong in the fourth quarter.')
INSERT [dbo].[Item] ([ItemID], [Name], [Price], [Image], [Size], [Quantity], [Description]) VALUES (N'i004', N'PUMAClyde', N'180', N'Puma.jpg', N'40', 25, N'PUMA Hoops foundation is Clyde. 1970s Walt Clyde Frazier himself was the first player to truly embody the idea of on-court and off-court swagger. ')
INSERT [dbo].[Item] ([ItemID], [Name], [Price], [Image], [Size], [Quantity], [Description]) VALUES (N'i005', N'Kobe6Grinch', N'680', N'Kobe6.jpg', N'42.5', 38, N'The Nike Zoom Kobe 6 ‘Grinch’ launched Christmas Day in 2010, featuring a Green Apple colorway that calls to mind to the Dr. Seuss character with a penchant for ruining everyone’s famous December holiday')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_ID], [StartDate], [PaymentDate], [FinishedDate], [CustomerID], [ShipID], [ItemList]) VALUES (2, CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date), CAST(N'2020-04-10' AS Date), 1, N's002', N'LBJ 17-Size:43-Quantity:1')
INSERT [dbo].[Orders] ([Order_ID], [StartDate], [PaymentDate], [FinishedDate], [CustomerID], [ShipID], [ItemList]) VALUES (3, CAST(N'2020-06-17' AS Date), CAST(N'2020-06-18' AS Date), CAST(N'2020-06-23' AS Date), 1, N's001', N'JH Vol4-Size:42-Quantity:1')
INSERT [dbo].[Orders] ([Order_ID], [StartDate], [PaymentDate], [FinishedDate], [CustomerID], [ShipID], [ItemList]) VALUES (4, CAST(N'2020-04-25' AS Date), CAST(N'2020-04-26' AS Date), CAST(N'2020-04-29' AS Date), 3, N's002', N'PUMA Clyde-Size:40-Quantity:1')
INSERT [dbo].[Orders] ([Order_ID], [StartDate], [PaymentDate], [FinishedDate], [CustomerID], [ShipID], [ItemList]) VALUES (5, CAST(N'2020-07-12' AS Date), CAST(N'2020-07-12' AS Date), CAST(N'2020-08-18' AS Date), 2, N's003', N'Kobe 6 Grinch-Size:42.5-Quantity:1')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[ShippingCom] ([ShippingID], [Name], [Address]) VALUES (N's001', N'FedEx', N'31 Kaki Bukit Road 3 #04-18/19, Techlink, 417818')
INSERT [dbo].[ShippingCom] ([ShippingID], [Name], [Address]) VALUES (N's002', N'SF-express', N'7 Changi South Street 2, #01-01 Xilin Districentre Building C, Singapore 486415')
INSERT [dbo].[ShippingCom] ([ShippingID], [Name], [Address]) VALUES (N's003', N'DHL', N'DHL Express ServicePoint - Esso Toa Payoh Lorong 2')
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ShipID])
REFERENCES [dbo].[ShippingCom] ([ShippingID])
GO
