USE [PRJ_Assignment]
GO
/****** Object:  Table [dbo].[category]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [decimal](9, 1) NULL,
	[description] [nvarchar](255) NULL,
	[imageURL] [nvarchar](255) NULL,
	[Created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/8/2022 3:41:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[full_name] [nvarchar](255) NULL,
	[dob] [date] NULL,
	[gender] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[created_date] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name]) VALUES (1, N'Hoa Qua')
INSERT [dbo].[category] ([id], [name]) VALUES (2, N'Dong Vat')
INSERT [dbo].[category] ([id], [name]) VALUES (3, N'Khac')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (1, 6, N'Bar Mix - Lemon', N'http://dummyimage.com/204x100.png/ff4444/ffffff', 86, 94)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (2, 33, N'Cheese - Fontina', N'http://dummyimage.com/212x100.png/dddddd/000000', 6, 30)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (3, 18, N'Soup Campbells Mexicali Tortilla', N'http://dummyimage.com/225x100.png/dddddd/000000', 29, 26)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (4, 33, N'Corn - Cream, Canned', N'http://dummyimage.com/180x100.png/cc0000/ffffff', 91, 20)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (5, 13, N'Swiss Chard - Red', N'http://dummyimage.com/182x100.png/cc0000/ffffff', 15, 10)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 11, N'Garlic - Peeled', N'http://dummyimage.com/210x100.png/ff4444/ffffff', 34, 24)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 29, N'Parasol Pick Stir Stick', N'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 98, 48)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 29, N'Sea Bass - Fillets', N'http://dummyimage.com/118x100.png/dddddd/000000', 18, 57)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 5, N'Pepper - Black, Crushed', N'http://dummyimage.com/104x100.png/5fa2dd/ffffff', 37, 77)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 24, N'Kolrabi', N'http://dummyimage.com/190x100.png/dddddd/000000', 2, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 21, N'Basil - Dry, Rubbed', N'http://dummyimage.com/144x100.png/cc0000/ffffff', 13, 37)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (12, 8, N'Beer - Sleeman Fine Porter', N'http://dummyimage.com/167x100.png/ff4444/ffffff', 72, 14)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (13, 10, N'Bouillion - Fish', N'http://dummyimage.com/226x100.png/ff4444/ffffff', 95, 89)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (14, 43, N'Pepper - Orange', N'http://dummyimage.com/211x100.png/ff4444/ffffff', 60, 7)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (15, 4, N'Squash - Sunburst', N'http://dummyimage.com/104x100.png/cc0000/ffffff', 58, 43)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (16, 16, N'Onions - Vidalia', N'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 85, 11)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (17, 45, N'Paper - Brown Paper Mini Cups', N'http://dummyimage.com/214x100.png/cc0000/ffffff', 67, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (18, 24, N'Potatoes - Yukon Gold 5 Oz', N'http://dummyimage.com/148x100.png/ff4444/ffffff', 86, 53)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (19, 32, N'Bagelers - Cinn / Brown Sugar', N'http://dummyimage.com/244x100.png/5fa2dd/ffffff', 46, 6)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (20, 40, N'Peach - Fresh', N'http://dummyimage.com/187x100.png/ff4444/ffffff', 40, 24)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (21, 22, N'Spice - Onion Powder Granulated', N'http://dummyimage.com/170x100.png/cc0000/ffffff', 98, 6)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (22, 29, N'Water - Mineral, Carbonated', N'http://dummyimage.com/129x100.png/5fa2dd/ffffff', 23, 6)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (23, 41, N'Butcher Twine 4r', N'http://dummyimage.com/218x100.png/ff4444/ffffff', 1, 56)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (24, 38, N'Plaintain', N'http://dummyimage.com/158x100.png/dddddd/000000', 78, 98)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (25, 45, N'Island Oasis - Raspberry', N'http://dummyimage.com/249x100.png/cc0000/ffffff', 23, 96)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (26, 41, N'Bonito Flakes - Toku Katsuo', N'http://dummyimage.com/247x100.png/cc0000/ffffff', 68, 47)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (27, 18, N'Lamb - Rack', N'http://dummyimage.com/109x100.png/ff4444/ffffff', 56, 14)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (28, 10, N'Soup Campbells - Italian Wedding', N'http://dummyimage.com/146x100.png/dddddd/000000', 83, 80)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (29, 12, N'Beef - Striploin Aa', N'http://dummyimage.com/177x100.png/dddddd/000000', 75, 62)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (30, 27, N'Wine - White, Riesling, Henry Of', N'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 37, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (31, 8, N'Container - Foam Dixie 12 Oz', N'http://dummyimage.com/180x100.png/dddddd/000000', 42, 87)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (32, 31, N'English Muffin', N'http://dummyimage.com/109x100.png/dddddd/000000', 28, 17)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (33, 5, N'Beef - Kindney, Whole', N'http://dummyimage.com/125x100.png/cc0000/ffffff', 20, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (34, 48, N'Lemonade - Kiwi, 591 Ml', N'http://dummyimage.com/248x100.png/cc0000/ffffff', 19, 50)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (35, 43, N'Lamb - Shanks', N'http://dummyimage.com/226x100.png/cc0000/ffffff', 89, 32)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (36, 9, N'Sea Bass - Fillets', N'http://dummyimage.com/119x100.png/cc0000/ffffff', 87, 84)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (37, 4, N'Nutmeg - Ground', N'http://dummyimage.com/174x100.png/cc0000/ffffff', 79, 35)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (38, 7, N'Beef - Ox Tongue', N'http://dummyimage.com/199x100.png/cc0000/ffffff', 96, 68)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (39, 48, N'Salami - Genova', N'http://dummyimage.com/245x100.png/dddddd/000000', 69, 73)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (40, 13, N'Bread - Petit Baguette', N'http://dummyimage.com/233x100.png/cc0000/ffffff', 86, 19)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (41, 46, N'Pasta - Shells, Medium, Dry', N'http://dummyimage.com/225x100.png/dddddd/000000', 88, 27)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (42, 14, N'Juice - Cranberry 284ml', N'http://dummyimage.com/160x100.png/dddddd/000000', 1, 35)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (43, 50, N'Liners - Banana, Paper', N'http://dummyimage.com/241x100.png/5fa2dd/ffffff', 75, 42)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (44, 38, N'7up Diet, 355 Ml', N'http://dummyimage.com/187x100.png/ff4444/ffffff', 15, 69)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (45, 17, N'Food Colouring - Red', N'http://dummyimage.com/124x100.png/cc0000/ffffff', 12, 34)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 33, N'Chicken - Livers', N'http://dummyimage.com/237x100.png/dddddd/000000', 51, 14)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 13, N'Haggis', N'http://dummyimage.com/154x100.png/ff4444/ffffff', 78, 45)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (48, 7, N'Cookies - Englishbay Oatmeal', N'http://dummyimage.com/166x100.png/cc0000/ffffff', 65, 99)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (49, 19, N'Appetizer - Sausage Rolls', N'http://dummyimage.com/215x100.png/ff4444/ffffff', 7, 70)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (50, 33, N'Butter Ripple - Phillips', N'http://dummyimage.com/238x100.png/dddddd/000000', 77, 73)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (51, 51, N'Ga', N'http://dummyimage.com/131x199.png/5fa2dd/ffffff', 4477750.8, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (52, 51, N'Cam', N'http://dummyimage.com/238x218.png/dddddd/000000', 1688516.9, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (53, 51, N'Xoai', N'http://dummyimage.com/239x216.png/ff4444/ffffff', 3711152, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (1, 17, 6449739, N'Grouse, sage', CAST(N'2022-07-04' AS Date), 24)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (2, 71, 4230703, N'Marmot, hoary', CAST(N'2021-11-05' AS Date), 14)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (3, 88, 8385942, N'Field flicker', CAST(N'2022-08-05' AS Date), 5)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (4, 82, 1675913, N'Water monitor', CAST(N'2021-01-31' AS Date), 14)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (5, 41, 9017757, N'Pine squirrel', CAST(N'2021-03-30' AS Date), 4)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (6, 28, 7459850, N'Turkey vulture', CAST(N'2021-09-21' AS Date), 3)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (7, 32, 7934467, N'Capuchin, white-fronted', CAST(N'2022-10-19' AS Date), 30)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (8, 50, 4199803, N'Stork, european', CAST(N'2021-01-23' AS Date), 7)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (9, 15, 5435074, N'Creeper, black-tailed tree', CAST(N'2022-04-28' AS Date), 7)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (10, 69, 5019999, N'Pale-throated three-toed sloth', CAST(N'2021-08-06' AS Date), 4)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (11, 5, 1817476, N'Dragon, netted rock', CAST(N'2022-01-24' AS Date), 30)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (12, 30, 7849248, N'Amazon parrot (unidentified)', CAST(N'2022-10-15' AS Date), 2)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (13, 24, 9133468, N'Heron, black-crowned night', CAST(N'2022-05-21' AS Date), 5)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (14, 79, 3246941, N'White-necked raven', CAST(N'2021-04-24' AS Date), 1)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (15, 24, 5739524, N'Beaver, american', CAST(N'2022-03-20' AS Date), 6)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (16, 89, 6277425, N'Common wallaroo', CAST(N'2021-11-12' AS Date), 20)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (17, 33, 2784859, N'Short-nosed bandicoot', CAST(N'2021-09-29' AS Date), 21)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (18, 75, 2442303, N'Cormorant, javanese', CAST(N'2022-08-27' AS Date), 5)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (19, 12, 9795876, N'Cheetah', CAST(N'2022-01-27' AS Date), 5)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (20, 79, 4678892, N'Chilean flamingo', CAST(N'2021-09-28' AS Date), 19)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (21, 77, 6221136, N'Little grebe', CAST(N'2021-06-18' AS Date), 22)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (22, 81, 3548007, N'Owl, white-browed', CAST(N'2022-05-29' AS Date), 16)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (23, 40, 1201709, N'Common goldeneye', CAST(N'2022-02-08' AS Date), 17)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (24, 1, 296608, N'King vulture', CAST(N'2022-10-01' AS Date), 18)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (25, 81, 4352117, N'North American river otter', CAST(N'2021-12-21' AS Date), 19)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (26, 39, 4790720, N'Albatross, galapagos', CAST(N'2022-10-01' AS Date), 16)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (27, 2, 3849372, N'Common goldeneye', CAST(N'2022-10-22' AS Date), 5)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (28, 7, 7557999, N'Possum, western pygmy', CAST(N'2021-09-23' AS Date), 30)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (29, 72, 2509248, N'Three-banded plover', CAST(N'2021-05-10' AS Date), 12)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (30, 37, 782207, N'Egret, great', CAST(N'2021-03-12' AS Date), 7)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (31, 6, 3814842, N'Yellow-billed hornbill', CAST(N'2022-03-03' AS Date), 6)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (32, 37, 106994, N'Beaver, north american', CAST(N'2021-01-28' AS Date), 1)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (33, 85, 1284097, N'Tree porcupine', CAST(N'2021-02-22' AS Date), 28)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (34, 66, 592369, N'Marine iguana', CAST(N'2022-01-03' AS Date), 16)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (35, 14, 6406291, N'Civet (unidentified)', CAST(N'2021-05-25' AS Date), 23)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (36, 55, 7767222, N'Brown antechinus', CAST(N'2021-05-29' AS Date), 3)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (37, 50, 2945596, N'Deer, barasingha', CAST(N'2021-02-22' AS Date), 26)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (38, 67, 2383541, N'Lion, galapagos sea', CAST(N'2021-02-24' AS Date), 28)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (39, 70, 9274719, N'Parakeet, rose-ringed', CAST(N'2021-08-21' AS Date), 14)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (40, 14, 5607537, N'Deer, roe', CAST(N'2021-11-21' AS Date), 26)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (41, 76, 8280998, N'Leadbeateri''s ground hornbill', CAST(N'2021-12-09' AS Date), 9)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (42, 41, 5177629, N'Buffalo, asian water', CAST(N'2022-01-20' AS Date), 10)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (43, 10, 1964847, N'Bustard, stanley', CAST(N'2021-08-29' AS Date), 17)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (44, 43, 571733, N'Nile crocodile', CAST(N'2021-07-29' AS Date), 7)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (45, 64, 6972656, N'Flicker, field', CAST(N'2021-04-09' AS Date), 17)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (46, 32, 8757581, N'Common green iguana', CAST(N'2021-11-11' AS Date), 26)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (47, 86, 5818277, N'Palm squirrel', CAST(N'2022-04-08' AS Date), 24)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (48, 18, 2893088, N'Water moccasin', CAST(N'2022-11-11' AS Date), 25)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (49, 97, 3648350, N'Brazilian otter', CAST(N'2021-11-16' AS Date), 17)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (50, 1, 5138650, N'Monitor lizard (unidentified)', CAST(N'2021-10-26' AS Date), 21)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (51, 1, 9877419.7, N'ship nhanh giup minh voi a', CAST(N'2022-03-06' AS Date), 31)
INSERT [dbo].[Orders] ([id], [user_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (52, 1, 0, N'ship nhanh giup minh voi a', CAST(N'2022-03-06' AS Date), 32)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (1, N'Xoai', 77, CAST(3711152.0 AS Decimal(9, 1)), N'Unspecified color vision deficiencies', N'http://dummyimage.com/239x216.png/ff4444/ffffff', CAST(N'2021-12-19' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (2, N'Cam', 16, CAST(1688516.9 AS Decimal(9, 1)), N'Toxic effect of carb monx from oth source, slf-hrm, sequela', N'http://dummyimage.com/238x218.png/dddddd/000000', CAST(N'2020-08-20' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (3, N'Ga', 73, CAST(4477750.8 AS Decimal(9, 1)), N'Nondisp fx of proximal phalanx of r thm, init for opn fx', N'http://dummyimage.com/131x199.png/5fa2dd/ffffff', CAST(N'2021-04-04' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (4, N'De', 48, CAST(3877495.1 AS Decimal(9, 1)), N'Driver of military vehicle injured nontraf, sequela', N'http://dummyimage.com/187x126.png/cc0000/ffffff', CAST(N'2021-01-16' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (5, N'Bo', 37, CAST(9188041.0 AS Decimal(9, 1)), N'Pedl cyc driver inj in nonclsn trnsp acc in traf, sequela', N'http://dummyimage.com/209x217.png/dddddd/000000', CAST(N'2020-02-15' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (6, N'Ruou khu andehit', 42, CAST(2214114.8 AS Decimal(9, 1)), N'Nondisp fx of distal phalanx of left middle finger, sequela', N'http://dummyimage.com/231x248.png/dddddd/000000', CAST(N'2020-11-01' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (7, N'Can cau ca', 55, CAST(2470854.0 AS Decimal(9, 1)), N'Benign neoplasm of right bronchus and lung', N'http://dummyimage.com/197x174.png/ff4444/ffffff', CAST(N'2020-03-20' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (8, N'Leu cam trai', 7, CAST(9476120.0 AS Decimal(9, 1)), N'Displ bicondylar fx unsp tibia, 7thN', N'http://dummyimage.com/250x208.png/dddddd/000000', CAST(N'2021-01-02' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (9, N'Cui kho', 9, CAST(2177227.1 AS Decimal(9, 1)), N'Chronic angle-closure glaucoma, right eye, mild stage', N'http://dummyimage.com/182x134.png/ff4444/ffffff', CAST(N'2020-06-13' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [price], [description], [imageURL], [Created_date], [category_id]) VALUES (10, N'Den', 93, CAST(6183858.0 AS Decimal(9, 1)), N'Nondisp transverse fracture of shaft of unsp tibia, sequela', N'http://dummyimage.com/169x150.png/cc0000/ffffff', CAST(N'2020-05-12' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [role_name]) VALUES (1, N'user')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (2, N'mod')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (3, N'admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'Mortie Jefford', N'+86 549 549 9861', N'8 Bayside Way')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'Tildie Blaisdale', N'+7 892 672 3503', N'15 Ronald Regan Hill')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'Portie Alway', N'+352 919 523 9401', N'2137 Monterey Circle')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'Mella Fido', N'+351 478 101 0249', N'02 Morning Park')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'Uriah Josse', N'+46 999 366 4530', N'37124 Mifflin Way')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'Dionysus Quadling', N'+351 847 337 3116', N'3 Arapahoe Junction')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'Donnajean Oakeshott', N'+380 811 704 1050', N'5554 Sutherland Lane')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'Darius Gilford', N'+48 238 129 7738', N'964 Grim Park')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'Glynnis Leyre', N'+380 906 797 3588', N'379 Fairview Drive')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'Carlotta Stanbridge', N'+86 807 970 1557', N'68 Oak Valley Lane')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'Faun Kirkhouse', N'+385 142 511 8400', N'0 Swallow Street')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'Avigdor Garrud', N'+62 658 948 8721', N'51 Alpine Pass')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (13, N'Lombard Force', N'+62 267 224 7148', N'3894 Pierstorff Plaza')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (14, N'Dido Domenichelli', N'+55 119 487 6879', N'1252 Vermont Street')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (15, N'Jehu Guitel', N'+57 128 206 2693', N'321 Twin Pines Avenue')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (16, N'Wolfgang Brevitt', N'+86 934 219 7634', N'87 Schlimgen Alley')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (17, N'Linnet Hiscoke', N'+7 451 536 0348', N'23 Boyd Parkway')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (18, N'Dom Hasselby', N'+86 517 546 9229', N'48646 Fallview Trail')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'Hannis Taye', N'+598 715 539 8170', N'6674 Memorial Place')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (20, N'Dirk Beuscher', N'+86 702 142 3242', N'77 Vernon Plaza')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (21, N'Wayland Pluvier', N'+33 350 114 6802', N'42 Mesta Terrace')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (22, N'Rutherford Barensen', N'+351 152 531 3628', N'465 Pearson Center')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (23, N'Winfield Arnhold', N'+967 620 305 1363', N'0 Mandrake Avenue')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (24, N'Melinde Reen', N'+62 539 771 9724', N'2 Eagle Crest Junction')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (25, N'Beryl Concannon', N'+7 473 687 1638', N'03445 Vera Court')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (26, N'Netta Shaughnessy', N'+212 205 779 7606', N'8430 Golden Leaf Lane')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (27, N'Corbie Sedcole', N'+63 293 297 6088', N'11387 Buell Alley')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (28, N'Alvinia Fogden', N'+86 750 160 2202', N'312 Buhler Point')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (29, N'Madge Summons', N'+58 307 869 7969', N'32867 Rusk Drive')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (30, N'Dudley Cana', N'+34 948 458 1449', N'53257 Hoepker Point')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (31, N'Minh LÃª Há»¯u', N'+841643383101', N'ÄÃ´ng KhÃª(ÄÃ´ng Anh) ÄÃ´ng SÆ¡n')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (32, N'Minh LÃª Há»¯u', N'+841643383101', N'ÄÃ´ng KhÃª(ÄÃ´ng Anh) ÄÃ´ng SÆ¡n')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (1, 2, N'Alix', N'Qvfv37rc', N'alydford0@photobucket.com', N'+46 255 474 4244', N'Alix Lydford', CAST(N'1987-03-13' AS Date), N'Male', N'http://dummyimage.com/124x100.png/5fa2dd/ffffff', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (2, 2, N'Petey', N'On2laLvcNf0F', N'pblondin1@reddit.com', N'+33 111 191 8926', N'Petey Blondin', CAST(N'1997-08-18' AS Date), N'Male', N'http://dummyimage.com/198x100.png/dddddd/000000', CAST(N'2019-01-23' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (3, 2, N'Mavis', N'6p2VPd', N'mfathers2@telegraph.co.uk', N'+81 222 745 0649', N'Mavis Fathers', CAST(N'1979-08-05' AS Date), N'Male', N'http://dummyimage.com/120x100.png/5fa2dd/ffffff', CAST(N'2021-02-23' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (4, 3, N'Nikolaos', N'A80cSGa', N'nlambkin3@vk.com', N'+86 745 283 9852', N'Nikolaos Lambkin', CAST(N'1987-08-22' AS Date), N'Female', N'http://dummyimage.com/243x100.png/ff4444/ffffff', CAST(N'2020-07-31' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (5, 2, N'Vally', N'2DEjUrD', N'vmaddick4@squarespace.com', N'+48 831 574 9312', N'Vally Maddick', CAST(N'1991-04-26' AS Date), N'Male', N'http://dummyimage.com/155x100.png/ff4444/ffffff', CAST(N'2021-11-30' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (6, 1, N'Flem', N'2BP8Qmm8lOv', N'feyree5@guardian.co.uk', N'+81 228 773 2443', N'Flem Eyree', CAST(N'1994-01-06' AS Date), N'Female', N'http://dummyimage.com/117x100.png/ff4444/ffffff', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (7, 3, N'Rosy', N'4t5FVJafD', N'rkemshell6@google.com.au', N'+49 894 484 8654', N'Rosy Kemshell', CAST(N'1979-09-17' AS Date), N'Female', N'http://dummyimage.com/145x100.png/ff4444/ffffff', CAST(N'2019-03-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (8, 3, N'Valida', N'5QZqbwWtxC', N'vdrinkale7@engadget.com', N'+880 308 604 7021', N'Valida Drinkale', CAST(N'1990-02-20' AS Date), N'Female', N'http://dummyimage.com/126x100.png/5fa2dd/ffffff', CAST(N'2019-06-23' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (9, 1, N'Rubin', N'9myXsK', N'rscriviner8@de.vu', N'+1 280 887 2581', N'Rubin Scriviner', CAST(N'1990-12-01' AS Date), N'Female', N'http://dummyimage.com/140x100.png/dddddd/000000', CAST(N'2021-08-31' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (10, 1, N'Janith', N'rV8V7Eiv7', N'jdealtry9@uiuc.edu', N'+53 284 947 7670', N'Janith Dealtry', CAST(N'1991-07-18' AS Date), N'Female', N'http://dummyimage.com/128x100.png/5fa2dd/ffffff', CAST(N'2020-07-01' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (11, 2, N'Kelci', N'BvXAcI', N'kberendsena@unesco.org', N'+48 844 102 9498', N'Kelci Berendsen', CAST(N'1999-01-20' AS Date), N'Female', N'http://dummyimage.com/245x100.png/dddddd/000000', CAST(N'2021-05-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (12, 1, N'Vally', N'NqUT26N8CQy', N'vclayeb@diigo.com', N'+62 572 340 6951', N'Vally Claye', CAST(N'1992-10-31' AS Date), N'Male', N'http://dummyimage.com/161x100.png/cc0000/ffffff', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (13, 2, N'Levey', N'qq613Qi95T', N'lciraldoc@weather.com', N'+86 472 689 3466', N'Levey Ciraldo', CAST(N'1975-05-10' AS Date), N'Female', N'http://dummyimage.com/187x100.png/dddddd/000000', CAST(N'2020-10-21' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (14, 2, N'Janie', N'p3k0AiZ', N'jpinwilld@goodreads.com', N'+86 142 779 1916', N'Janie Pinwill', CAST(N'1975-12-01' AS Date), N'Female', N'http://dummyimage.com/213x100.png/cc0000/ffffff', CAST(N'2021-12-29' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (15, 3, N'Gretchen', N'rAxWMMNut', N'gsizee@un.org', N'+7 454 593 1561', N'Gretchen Size', CAST(N'1980-12-19' AS Date), N'Female', N'http://dummyimage.com/154x100.png/cc0000/ffffff', CAST(N'2022-01-03' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (16, 2, N'Woodrow', N't6oYSy8', N'wgarrettsf@dedecms.com', N'+86 201 315 7990', N'Woodrow Garretts', CAST(N'1985-07-12' AS Date), N'Male', N'http://dummyimage.com/238x100.png/ff4444/ffffff', CAST(N'2020-02-10' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (17, 2, N'Dare', N'SAPIQ4PVo1oq', N'dboughtwoodg@uiuc.edu', N'+30 137 807 7547', N'Dare Boughtwood', CAST(N'1999-04-18' AS Date), N'Female', N'http://dummyimage.com/170x100.png/5fa2dd/ffffff', CAST(N'2019-06-02' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (18, 2, N'Essie', N'1xbAPJf', N'eganingh@behance.net', N'+86 976 824 6079', N'Essie Ganing', CAST(N'1978-08-12' AS Date), N'Male', N'http://dummyimage.com/213x100.png/dddddd/000000', CAST(N'2021-11-17' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (19, 2, N'Robinett', N'5RLLm6v', N'rstaiti@aboutads.info', N'+55 800 482 0385', N'Robinett Stait', CAST(N'1991-08-26' AS Date), N'Male', N'http://dummyimage.com/182x100.png/cc0000/ffffff', CAST(N'2020-08-03' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (20, 2, N'Damara', N'vZNGzCTGL', N'dbenfordj@vinaora.com', N'+86 586 802 0691', N'Damara Benford', CAST(N'1993-04-08' AS Date), N'Male', N'http://dummyimage.com/213x100.png/cc0000/ffffff', CAST(N'2019-07-28' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (21, 1, N'Leo', N'6od2FwZ', N'lharrisonk@soundcloud.com', N'+55 977 612 8458', N'Leo Harrison', CAST(N'1978-08-08' AS Date), N'Male', N'http://dummyimage.com/128x100.png/5fa2dd/ffffff', CAST(N'2020-07-31' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (22, 3, N'Harriet', N'MKbuoTkaM', N'hpullingerl@mysql.com', N'+7 173 797 2994', N'Harriet Pullinger', CAST(N'1975-08-22' AS Date), N'Female', N'http://dummyimage.com/111x100.png/cc0000/ffffff', CAST(N'2020-03-19' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (23, 2, N'Alwin', N'UKpXPp151S5B', N'acowem@wisc.edu', N'+420 769 996 4405', N'Alwin Cowe', CAST(N'1983-06-13' AS Date), N'Female', N'http://dummyimage.com/132x100.png/ff4444/ffffff', CAST(N'2021-01-18' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (24, 3, N'Rachael', N'CEt66XiM', N'rhadgraftn@altervista.org', N'+7 689 792 3895', N'Rachael Hadgraft', CAST(N'1977-11-16' AS Date), N'Female', N'http://dummyimage.com/202x100.png/dddddd/000000', CAST(N'2022-03-01' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (25, 2, N'Courtnay', N'g1eH2cwh', N'cmitrikhino@rakuten.co.jp', N'+992 428 873 6109', N'Courtnay Mitrikhin', CAST(N'1996-06-27' AS Date), N'Female', N'http://dummyimage.com/159x100.png/ff4444/ffffff', CAST(N'2021-08-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (26, 2, N'Linell', N'1gsA7uH', N'lambroschp@gizmodo.com', N'+86 839 114 3659', N'Linell Ambrosch', CAST(N'1980-08-26' AS Date), N'Female', N'http://dummyimage.com/114x100.png/5fa2dd/ffffff', CAST(N'2020-08-13' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (27, 1, N'Colman', N'8IlTs50cmiMi', N'cochterlonyq@mysql.com', N'+62 206 246 0759', N'Colman Ochterlony', CAST(N'1993-01-25' AS Date), N'Male', N'http://dummyimage.com/177x100.png/dddddd/000000', CAST(N'2021-01-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (28, 2, N'Belvia', N'zQZhi4UDx', N'bsentancer@huffingtonpost.com', N'+385 108 238 6632', N'Belvia Sentance', CAST(N'1977-09-12' AS Date), N'Female', N'http://dummyimage.com/104x100.png/5fa2dd/ffffff', CAST(N'2019-10-29' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (29, 2, N'Gael', N'Ad06OTYY2BdG', N'gmactimpanys@phoca.cz', N'+7 658 112 2999', N'Gael MacTimpany', CAST(N'1994-08-11' AS Date), N'Male', N'http://dummyimage.com/177x100.png/ff4444/ffffff', CAST(N'2020-02-11' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (30, 1, N'Natty', N'urCceVP1', N'nammert@patch.com', N'+52 977 662 5568', N'Natty Ammer', CAST(N'1999-06-02' AS Date), N'Male', N'http://dummyimage.com/247x100.png/ff4444/ffffff', CAST(N'2021-12-19' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (31, 1, N'Lauralee', N'im4zYOP', N'lchatresu@over-blog.com', N'+86 289 381 3067', N'Lauralee Chatres', CAST(N'1976-09-22' AS Date), N'Female', N'http://dummyimage.com/151x100.png/dddddd/000000', CAST(N'2021-04-21' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (32, 1, N'Pepi', N'qQYBKRjbMFIC', N'pvonv@purevolume.com', N'+54 689 410 0696', N'Pepi Von Welldun', CAST(N'1980-05-07' AS Date), N'Male', N'http://dummyimage.com/181x100.png/5fa2dd/ffffff', CAST(N'2022-01-18' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (33, 3, N'Karlik', N'KCce1Uiz6ea', N'kdrooganw@ftc.gov', N'+220 690 791 3111', N'Karlik Droogan', CAST(N'1976-01-29' AS Date), N'Male', N'http://dummyimage.com/209x100.png/cc0000/ffffff', CAST(N'2020-02-17' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (34, 1, N'Devon', N'xAc7fSqYZvgE', N'dparkenx@amazon.co.jp', N'+49 575 986 4315', N'Devon Parken', CAST(N'1991-11-24' AS Date), N'Female', N'http://dummyimage.com/191x100.png/dddddd/000000', CAST(N'2021-01-06' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (35, 3, N'Bogey', N'dE3woGn', N'bbloisy@4shared.com', N'+86 326 179 7599', N'Bogey Blois', CAST(N'1985-12-01' AS Date), N'Male', N'http://dummyimage.com/114x100.png/cc0000/ffffff', CAST(N'2019-07-29' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (36, 1, N'Berton', N'SMykpf84o', N'bdrohunz@tiny.cc', N'+1 318 618 0409', N'Berton Drohun', CAST(N'1994-04-08' AS Date), N'Male', N'http://dummyimage.com/212x100.png/dddddd/000000', CAST(N'2021-02-02' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (37, 2, N'Bartolemo', N'h2sLyAyZ', N'bianson10@woothemes.com', N'+52 361 115 7529', N'Bartolemo I''anson', CAST(N'1970-06-07' AS Date), N'Female', N'http://dummyimage.com/203x100.png/5fa2dd/ffffff', CAST(N'2019-11-24' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (38, 3, N'Cassius', N'kgJJ0Kl', N'cgilardoni11@acquirethisname.com', N'+1 521 941 9125', N'Cassius Gilardoni', CAST(N'1976-06-06' AS Date), N'Female', N'http://dummyimage.com/103x100.png/dddddd/000000', CAST(N'2021-05-16' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (39, 2, N'Tomi', N'PQ3V4zEYz', N'twinger12@smugmug.com', N'+503 988 408 1847', N'Tomi Winger', CAST(N'1972-01-10' AS Date), N'Male', N'http://dummyimage.com/239x100.png/dddddd/000000', CAST(N'2019-03-26' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (40, 1, N'Clarey', N'NAzZoRiOZXQt', N'chadfield13@odnoklassniki.ru', N'+63 244 372 8456', N'Clarey Hadfield', CAST(N'1989-10-10' AS Date), N'Female', N'http://dummyimage.com/124x100.png/dddddd/000000', CAST(N'2022-01-03' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (41, 1, N'Jordan', N'BU8oGvN', N'jingledow14@boston.com', N'+687 836 887 7671', N'Jordan Ingledow', CAST(N'1996-12-23' AS Date), N'Male', N'http://dummyimage.com/178x100.png/5fa2dd/ffffff', CAST(N'2021-09-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (42, 2, N'Fannie', N'nWFYpgMeRRc0', N'fhanscome15@nyu.edu', N'+86 366 814 7023', N'Fannie Hanscome', CAST(N'1979-10-22' AS Date), N'Female', N'http://dummyimage.com/122x100.png/5fa2dd/ffffff', CAST(N'2020-06-29' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (43, 2, N'Angelia', N'pAHn6Ip2', N'ablunsen16@bbb.org', N'+98 507 963 1734', N'Angelia Blunsen', CAST(N'1988-05-04' AS Date), N'Male', N'http://dummyimage.com/180x100.png/ff4444/ffffff', CAST(N'2021-07-24' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (44, 1, N'Charline', N'pFC17tzBV', N'cboyett17@google.com.au', N'+62 507 354 3689', N'Charline Boyett', CAST(N'1971-05-15' AS Date), N'Female', N'http://dummyimage.com/191x100.png/cc0000/ffffff', CAST(N'2019-05-16' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (45, 2, N'Rahal', N'tlhKMkwhx', N'rrolfi18@twitter.com', N'+371 302 208 5376', N'Rahal Rolfi', CAST(N'1984-06-14' AS Date), N'Female', N'http://dummyimage.com/205x100.png/5fa2dd/ffffff', CAST(N'2021-03-23' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (46, 1, N'Hilde', N'rtqSUmcVESea', N'hsewley19@mozilla.org', N'+54 886 314 1780', N'Hilde Sewley', CAST(N'1994-11-02' AS Date), N'Female', N'http://dummyimage.com/126x100.png/dddddd/000000', CAST(N'2020-02-26' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (47, 2, N'Tish', N'ePDu2ZLp', N'tkitson1a@pinterest.com', N'+687 323 237 1051', N'Tish Kitson', CAST(N'1972-02-13' AS Date), N'Female', N'http://dummyimage.com/135x100.png/cc0000/ffffff', CAST(N'2019-07-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (48, 1, N'Bette-ann', N'YpgMGfoyw', N'bcruz1b@thetimes.co.uk', N'+242 159 842 7722', N'Bette-ann Cruz', CAST(N'1998-04-14' AS Date), N'Female', N'http://dummyimage.com/191x100.png/cc0000/ffffff', CAST(N'2019-11-04' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (49, 1, N'Bernetta', N'YKGbsjwIZuf', N'btry1c@drupal.org', N'+1 349 170 7162', N'Bernetta Try', CAST(N'1988-04-26' AS Date), N'Female', N'http://dummyimage.com/171x100.png/cc0000/ffffff', CAST(N'2021-03-02' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (50, 1, N'Licha', N'sE6Pwu0Pt', N'lpagden1d@seesaa.net', N'+86 906 621 2695', N'Licha Pagden', CAST(N'1996-01-01' AS Date), N'Female', N'http://dummyimage.com/137x100.png/dddddd/000000', CAST(N'2019-08-08' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (51, 3, N'Linzy', N'ptCPxEe8', N'locannavan1e@shinystat.com', N'+244 182 728 7878', N'Linzy O''Cannavan', CAST(N'1975-05-13' AS Date), N'Female', N'http://dummyimage.com/209x100.png/ff4444/ffffff', CAST(N'2020-08-05' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (52, 2, N'Delia', N'i6ql5sruV', N'dchaperling1f@psu.edu', N'+86 776 715 8501', N'Delia Chaperling', CAST(N'1986-11-03' AS Date), N'Female', N'http://dummyimage.com/153x100.png/5fa2dd/ffffff', CAST(N'2020-01-26' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (53, 2, N'Danila', N'hS7EgZw', N'dsanford1g@opera.com', N'+7 524 616 4734', N'Danila Sanford', CAST(N'1993-11-25' AS Date), N'Female', N'http://dummyimage.com/186x100.png/5fa2dd/ffffff', CAST(N'2019-02-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (54, 3, N'Aridatha', N'EZoMGUwxi7', N'aplimmer1h@webnode.com', N'+86 675 261 4089', N'Aridatha Plimmer', CAST(N'1996-06-23' AS Date), N'Female', N'http://dummyimage.com/233x100.png/cc0000/ffffff', CAST(N'2021-06-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (55, 1, N'Arne', N'rTuzzqu', N'ashrimpling1i@about.me', N'+86 570 870 6940', N'Arne Shrimpling', CAST(N'1994-11-07' AS Date), N'Female', N'http://dummyimage.com/205x100.png/cc0000/ffffff', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (56, 3, N'Bryn', N'i52fwsP', N'bdorie1j@furl.net', N'+86 888 348 2777', N'Bryn Dorie', CAST(N'1973-12-09' AS Date), N'Female', N'http://dummyimage.com/213x100.png/dddddd/000000', CAST(N'2021-07-23' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (57, 2, N'Otho', N'VbZOxcSX', N'ofreund1k@rambler.ru', N'+256 108 233 2615', N'Otho Freund', CAST(N'1988-04-04' AS Date), N'Male', N'http://dummyimage.com/194x100.png/dddddd/000000', CAST(N'2019-03-29' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (58, 2, N'Rosanna', N'eMsl4f', N'rclinning1l@chicagotribune.com', N'+84 742 335 4999', N'Rosanna Clinning', CAST(N'1985-10-28' AS Date), N'Male', N'http://dummyimage.com/228x100.png/ff4444/ffffff', CAST(N'2019-03-24' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (59, 1, N'Yehudit', N'keuhxYs2eq', N'yrigeby1m@storify.com', N'+56 965 240 8886', N'Yehudit Rigeby', CAST(N'1987-08-20' AS Date), N'Male', N'http://dummyimage.com/201x100.png/dddddd/000000', CAST(N'2019-02-22' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (60, 2, N'Nevsa', N'Mho6Ejlw', N'nlidgerton1n@digg.com', N'+86 788 973 2932', N'Nevsa Lidgerton', CAST(N'1978-02-04' AS Date), N'Male', N'http://dummyimage.com/161x100.png/5fa2dd/ffffff', CAST(N'2022-01-03' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (61, 1, N'Andrus', N'BQcB8mlXvq', N'askowcraft1o@domainmarket.com', N'+86 197 350 5124', N'Andrus Skowcraft', CAST(N'1982-02-24' AS Date), N'Male', N'http://dummyimage.com/225x100.png/dddddd/000000', CAST(N'2019-05-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (62, 3, N'Malissa', N'Wx4i84', N'mginglell1p@networksolutions.com', N'+86 332 731 0022', N'Malissa Ginglell', CAST(N'1995-06-07' AS Date), N'Male', N'http://dummyimage.com/177x100.png/dddddd/000000', CAST(N'2019-04-21' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (63, 1, N'Emlyn', N'QQzLfAUIB', N'espruce1q@businesswire.com', N'+62 561 405 9544', N'Emlyn Spruce', CAST(N'1985-09-26' AS Date), N'Male', N'http://dummyimage.com/249x100.png/5fa2dd/ffffff', CAST(N'2020-02-13' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (64, 2, N'Corinna', N'3luLnNwds', N'crolin1r@ocn.ne.jp', N'+51 722 252 3714', N'Corinna Rolin', CAST(N'1991-02-28' AS Date), N'Male', N'http://dummyimage.com/205x100.png/5fa2dd/ffffff', CAST(N'2021-12-03' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (65, 1, N'Alys', N'xvYARwm', N'abizley1s@google.it', N'+591 214 785 6660', N'Alys Bizley', CAST(N'1989-01-29' AS Date), N'Female', N'http://dummyimage.com/202x100.png/5fa2dd/ffffff', CAST(N'2020-01-28' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (66, 3, N'Evangelin', N'Xp50KzTT9', N'egaylord1t@slashdot.org', N'+351 869 575 4466', N'Evangelin Gaylord', CAST(N'1982-05-13' AS Date), N'Male', N'http://dummyimage.com/136x100.png/dddddd/000000', CAST(N'2021-01-10' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (67, 1, N'Moll', N'QxAKS5', N'mscrivener1u@comsenz.com', N'+351 552 934 3673', N'Moll Scrivener', CAST(N'1990-07-23' AS Date), N'Male', N'http://dummyimage.com/113x100.png/cc0000/ffffff', CAST(N'2021-08-17' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (68, 2, N'Nathaniel', N'WtChY7', N'nblance1v@feedburner.com', N'+86 266 751 8473', N'Nathaniel Blance', CAST(N'1997-05-01' AS Date), N'Male', N'http://dummyimage.com/248x100.png/dddddd/000000', CAST(N'2019-12-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (69, 2, N'Dominik', N'NUPhD7gz', N'dgarralts1w@dailymotion.com', N'+351 312 582 6210', N'Dominik Garralts', CAST(N'1996-08-31' AS Date), N'Female', N'http://dummyimage.com/183x100.png/5fa2dd/ffffff', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (70, 2, N'Gerry', N'4mDp3BZ0bg', N'gpringley1x@admin.ch', N'+86 541 419 3996', N'Gerry Pringley', CAST(N'1996-11-15' AS Date), N'Female', N'http://dummyimage.com/172x100.png/dddddd/000000', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (71, 2, N'Dal', N'eo7wys', N'dbruford1y@bandcamp.com', N'+62 436 681 3578', N'Dal Bruford', CAST(N'1981-03-24' AS Date), N'Male', N'http://dummyimage.com/245x100.png/dddddd/000000', CAST(N'2019-05-30' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (72, 1, N'Patric', N'Fr7PBwT', N'ppeppard1z@usda.gov', N'+51 740 130 2534', N'Patric Peppard', CAST(N'1986-03-25' AS Date), N'Female', N'http://dummyimage.com/124x100.png/ff4444/ffffff', CAST(N'2020-01-31' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (73, 1, N'Lavena', N'xjFi7w3pW', N'leberdt20@barnesandnoble.com', N'+48 959 317 8997', N'Lavena Eberdt', CAST(N'1974-01-20' AS Date), N'Male', N'http://dummyimage.com/187x100.png/cc0000/ffffff', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (74, 3, N'Gertruda', N'a32ZXZRSe', N'ggaddas21@usatoday.com', N'+1 904 304 4720', N'Gertruda Gaddas', CAST(N'1987-05-19' AS Date), N'Female', N'http://dummyimage.com/140x100.png/5fa2dd/ffffff', CAST(N'2019-10-18' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (75, 3, N'Pen', N'VhrCun', N'pdoget22@bravesites.com', N'+86 951 996 6959', N'Pen Doget', CAST(N'1982-05-31' AS Date), N'Male', N'http://dummyimage.com/157x100.png/5fa2dd/ffffff', CAST(N'2021-12-17' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (76, 1, N'Madison', N'UljgxkGRQhF', N'mdorin23@npr.org', N'+266 955 359 4576', N'Madison Dorin', CAST(N'1998-05-14' AS Date), N'Male', N'http://dummyimage.com/214x100.png/cc0000/ffffff', CAST(N'2019-01-07' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (77, 2, N'Janette', N'ETWdCHdBa', N'jsoffe24@shutterfly.com', N'+1 512 865 0047', N'Janette Soffe', CAST(N'1993-01-04' AS Date), N'Female', N'http://dummyimage.com/152x100.png/cc0000/ffffff', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (78, 1, N'Karlene', N'zZnBBj', N'ktaylor25@shutterfly.com', N'+7 800 835 1414', N'Karlene Taylor', CAST(N'1984-02-21' AS Date), N'Male', N'http://dummyimage.com/121x100.png/5fa2dd/ffffff', CAST(N'2021-06-27' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (79, 1, N'Rowland', N'HYqO6dSWyMRv', N'rbowering26@nydailynews.com', N'+81 680 454 3721', N'Rowland Bowering', CAST(N'1993-05-12' AS Date), N'Male', N'http://dummyimage.com/231x100.png/ff4444/ffffff', CAST(N'2021-09-24' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (80, 3, N'Baryram', N'JUJKV9iAU2BM', N'bwestoff27@istockphoto.com', N'+7 478 805 5828', N'Baryram Westoff', CAST(N'1996-10-03' AS Date), N'Male', N'http://dummyimage.com/250x100.png/dddddd/000000', CAST(N'2020-02-04' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (81, 2, N'Shurlock', N'v8nqFHZ', N'ssatterly28@smugmug.com', N'+375 942 331 2644', N'Shurlock Satterly', CAST(N'1988-06-27' AS Date), N'Female', N'http://dummyimage.com/205x100.png/dddddd/000000', CAST(N'2020-05-30' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (82, 1, N'Inigo', N'xNIryUdnZ', N'isweedland29@topsy.com', N'+86 573 710 9706', N'Inigo Sweedland', CAST(N'1994-01-31' AS Date), N'Female', N'http://dummyimage.com/213x100.png/ff4444/ffffff', CAST(N'2020-10-12' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (83, 2, N'Roley', N'IRr8VkdB3', N'rmacneill2a@issuu.com', N'+7 604 810 3247', N'Roley MacNeill', CAST(N'1979-02-06' AS Date), N'Male', N'http://dummyimage.com/120x100.png/5fa2dd/ffffff', CAST(N'2021-09-04' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (84, 3, N'Aurelia', N'ZvZerlTeGlpL', N'aklemensiewicz2b@ftc.gov', N'+57 176 482 4734', N'Aurelia Klemensiewicz', CAST(N'1991-12-06' AS Date), N'Male', N'http://dummyimage.com/112x100.png/5fa2dd/ffffff', CAST(N'2020-08-27' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (85, 2, N'Laurella', N'SXaUKe6WaW', N'lmonini2c@oakley.com', N'+48 344 944 6922', N'Laurella Monini', CAST(N'1999-12-31' AS Date), N'Male', N'http://dummyimage.com/124x100.png/cc0000/ffffff', CAST(N'2019-09-05' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (86, 3, N'Lancelot', N'xA83kNMsCl', N'lwinsom2d@cpanel.net', N'+62 631 456 4472', N'Lancelot Winsom', CAST(N'1972-02-11' AS Date), N'Female', N'http://dummyimage.com/186x100.png/ff4444/ffffff', CAST(N'2022-02-15' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (87, 1, N'Starr', N'TfhWNoZYSp', N'snorthing2e@usgs.gov', N'+20 616 478 8860', N'Starr Northing', CAST(N'1995-01-21' AS Date), N'Male', N'http://dummyimage.com/215x100.png/dddddd/000000', CAST(N'2021-07-18' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (88, 3, N'Quinn', N'j85tcY', N'qtabour2f@amazon.de', N'+7 579 485 4339', N'Quinn Tabour', CAST(N'1988-10-14' AS Date), N'Male', N'http://dummyimage.com/121x100.png/dddddd/000000', CAST(N'2021-09-14' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (89, 2, N'Valencia', N'Jl0cq3S', N'vbackwell2g@samsung.com', N'+962 569 524 7932', N'Valencia Backwell', CAST(N'1996-08-06' AS Date), N'Female', N'http://dummyimage.com/196x100.png/ff4444/ffffff', CAST(N'2021-10-10' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (90, 1, N'Julie', N'WSGXXS6VoKrb', N'jspollen2h@youtube.com', N'+420 298 477 1875', N'Julie Spollen', CAST(N'1990-10-01' AS Date), N'Female', N'http://dummyimage.com/215x100.png/ff4444/ffffff', CAST(N'2021-10-31' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (91, 2, N'Gertrude', N'EVD2vhe', N'glatta2i@oaic.gov.au', N'+62 174 261 6402', N'Gertrude Latta', CAST(N'1982-11-10' AS Date), N'Male', N'http://dummyimage.com/228x100.png/ff4444/ffffff', CAST(N'2021-01-13' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (92, 2, N'Dorian', N'LGWv5wXm', N'dotoole2j@smugmug.com', N'+62 837 196 6552', N'Dorian O''Toole', CAST(N'1981-05-26' AS Date), N'Female', N'http://dummyimage.com/156x100.png/5fa2dd/ffffff', CAST(N'2019-07-26' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (93, 3, N'Dierdre', N'kTex1TTF', N'ducchino2k@noaa.gov', N'+66 638 930 6342', N'Dierdre Ucchino', CAST(N'1977-02-21' AS Date), N'Male', N'http://dummyimage.com/174x100.png/dddddd/000000', CAST(N'2020-05-15' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (94, 2, N'Shandeigh', N'6GgFf73ZmU9', N'sdhillon2l@ask.com', N'+64 584 127 0218', N'Shandeigh Dhillon', CAST(N'1994-07-08' AS Date), N'Male', N'http://dummyimage.com/118x100.png/dddddd/000000', CAST(N'2019-03-09' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (95, 2, N'Gretchen', N'Nao8OtCndW', N'gseaborn2m@blinklist.com', N'+54 139 730 3019', N'Gretchen Seaborn', CAST(N'1980-03-30' AS Date), N'Female', N'http://dummyimage.com/244x100.png/dddddd/000000', CAST(N'2019-05-22' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (96, 3, N'Mitchel', N'2wcqSmCT', N'modooghaine2n@auda.org.au', N'+27 721 318 3622', N'Mitchel O''Dooghaine', CAST(N'1976-07-28' AS Date), N'Female', N'http://dummyimage.com/204x100.png/dddddd/000000', CAST(N'2021-10-21' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (97, 1, N'Basile', N'Cks0gcLGPP', N'brodwell2o@harvard.edu', N'+380 988 122 4979', N'Basile Rodwell', CAST(N'1983-03-26' AS Date), N'Female', N'http://dummyimage.com/157x100.png/cc0000/ffffff', CAST(N'2021-10-04' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (98, 3, N'Ainsley', N'mNnTL7c189', N'acrabtree2p@wikia.com', N'+33 165 714 9911', N'Ainsley Crabtree', CAST(N'1999-11-10' AS Date), N'Female', N'http://dummyimage.com/178x100.png/ff4444/ffffff', CAST(N'2019-10-27' AS Date))
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (99, 3, N'Maible', N'peaPSnmZZ', N'mniblock2q@tamu.edu', N'+54 518 131 2820', N'Maible Niblock', CAST(N'1970-05-30' AS Date), N'Male', N'http://dummyimage.com/110x100.png/5fa2dd/ffffff', CAST(N'2019-10-18' AS Date))
GO
INSERT [dbo].[User] ([id], [role_id], [username], [password], [email], [phone], [full_name], [dob], [gender], [avatar], [created_date]) VALUES (100, 3, N'Rourke', N'5XW0YtWRgw', N'rheadan2r@va.gov', N'+86 520 519 7287', N'Rourke Headan', CAST(N'1990-09-13' AS Date), N'Male', N'http://dummyimage.com/105x100.png/cc0000/ffffff', CAST(N'2019-02-15' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__user_id__70DDC3D8] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__user_id__70DDC3D8]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__6C190EBB] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__6C190EBB]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__role_id__6EF57B66] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__role_id__6EF57B66]
GO
