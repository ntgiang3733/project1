USE [moonstore]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 12/25/2019 9:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] NOT NULL,
	[user_id] [bigint] NULL,
	[total] [bigint] NULL,
	[payment] [varchar](50) NULL,
	[address] [nvarchar](255) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 12/25/2019 9:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[bill_detail_id] [bigint] NOT NULL,
	[bill_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[price] [bigint] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[bill_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/25/2019 9:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [bigint] NOT NULL,
	[category_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/25/2019 9:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] NOT NULL,
	[category_id] [bigint] NULL,
	[product_name] [nvarchar](255) NULL,
	[product_image] [nvarchar](255) NULL,
	[product_price] [bigint] NULL,
	[product_description] [ntext] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/25/2019 9:06:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
	[role] [bit] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1, 1, 1, N's', N's', CAST(N'2019-11-20T19:21:54.397' AS DateTime))
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1574964531102, 1574097813490, 19290000, N'online', N'', CAST(N'2019-11-29T01:08:51.137' AS DateTime))
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1574964740415, 1, 77970000, N'online', N'', CAST(N'2019-11-29T01:12:20.470' AS DateTime))
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1574964752570, 1, 95960000, N'd', N'', CAST(N'2019-11-29T01:12:32.603' AS DateTime))
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1575029856477, 1572463569125, 79970000, N'online', N'', CAST(N'2019-11-29T19:17:36.537' AS DateTime))
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date]) VALUES (1576133636009, 1576118817835, 19290000, N'thanh toán online', N'hm', CAST(N'2019-12-12T13:53:56.097' AS DateTime))
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1574964531138, 1, 2, 19290000, 1)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1574964740475, 1, 3, 25990000, 3)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1574964752604, 1, 3, 25990000, 3)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1574964752631, 1, 7, 17990000, 1)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1575029856538, 1575029856477, 3, 25990000, 1)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1575029856598, 1575029856477, 4, 26990000, 2)
INSERT [dbo].[bill_detail] ([bill_detail_id], [bill_id], [product_id], [price], [quantity]) VALUES (1576133636098, 1576133636009, 2, 19290000, 1)
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1001, N'LAPTOP GAMING')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1002, N'LAPTOP ĐỒ HỌA')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1003, N'LAPTOP VĂN PHÒNG')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (1, 1002, N'laptop dell', N'1.jpg', 10000000, N'laptop gaming')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (2, 1001, N'Laptop Acer Aspire A715 72G 54PC', N'2.jpg', 19290000, N'Laptop Gaming')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (3, 1001, N'Laptop Acer Nitro AN515 54 71HS', N'3.jpg', 25990000, N'Laptop Gaming')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (4, 1001, N'Laptop MSI Gaming 15 GF63 9SC', N'4.jpg', 26990000, N'Laptop Gaming')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (5, 1002, N'Laptop Apple MacBook Air 2017', N'5.jpg', 21490000, N'Bộ xử lý CPU: 1.8GHz Intel Core i5 (Broadwell)
Bộ nhớ RAM: 8GB of 1600 MHz LPDDR3
Ổ cứng: 128GB PCIe-Based Flash SSD
Màn hình: 13.3" 1440 x 900 LED-Backlit Glossy
Card màn hình: Intel HD Graphics 6000 (Tích hợp)')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (6, 1002, N'Laptop HP 15s du0040TX', N'6.jpg', 18290000, N'Laptop Đồ họa')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (7, 1002, N'Laptop HP Pavilion 14 ce2100TX', N'7.jpg', 17990000, N'Laptop Đồ họa')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (8, 1002, N'Laptop Asus VivoBook Pro F571GD', N'8.jpg', 19290000, N'Laptop Đồ họa')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (9, 1002, N'Laptop Dell Vostro 3580', N'9.jpg', 22390000, N'Laptop Đồ họa')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (10, 1002, N'Laptop Dell Inspiron 3579', N'10.jpg', 24890000, N'Laptop Đồ họa')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (11, 1003, N'Laptop Asus VivoBook X509U', N'11.jpg', 10690000, N'a')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (12, 1003, N'Laptop HP 15s du0054TU', N'12.jpg', 10890000, NULL)
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_image], [product_price], [product_description]) VALUES (13, 1003, N'mới', N'1.jpg', 3, N'newnew')
INSERT [dbo].[users] ([user_id], [name], [email], [pass], [role]) VALUES (1, N'a', N'a@gmail.com', N'a', 1)
INSERT [dbo].[users] ([user_id], [name], [email], [pass], [role]) VALUES (1572463569125, N'b', N'b@gmail.com', N'b', 0)
INSERT [dbo].[users] ([user_id], [name], [email], [pass], [role]) VALUES (1574097813490, N'c', N'c@gmail.com', N'c', 0)
INSERT [dbo].[users] ([user_id], [name], [email], [pass], [role]) VALUES (1574959229873, N'd', N'd@gmail.com', N'd', 0)
INSERT [dbo].[users] ([user_id], [name], [email], [pass], [role]) VALUES (1576118817835, N'e', N'e@gmail.com', N'e', 0)
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_users]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
