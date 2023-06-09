USE [skinet]
GO
SET IDENTITY_INSERT [dbo].[ProductBrands] ON 

INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (1, N'Angular')
INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (2, N'NetCore')
INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (3, N'VS Code')
INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (4, N'React')
INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (5, N'Typescript')
INSERT [dbo].[ProductBrands] ([Id], [Name]) VALUES (6, N'Redis')
SET IDENTITY_INSERT [dbo].[ProductBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (1, N'Boards')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (2, N'Hats')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (3, N'Boots')
INSERT [dbo].[ProductTypes] ([Id], [Name]) VALUES (4, N'Gloves')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (2, N'Angular Speedster Board 2000', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.', CAST(200.00 AS Decimal(18, 2)), N'images/products/sb-ang1.png', 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (3, N'Green Angular Board 3000', N'Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.', CAST(150.00 AS Decimal(18, 2)), N'images/products/sb-ang2.png', 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (4, N'Core Board Speed Rush 3', N'Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.', CAST(180.00 AS Decimal(18, 2)), N'images/products/sb-core1.png', 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (5, N'Net Core Super Board', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.', CAST(300.00 AS Decimal(18, 2)), N'images/products/sb-core2.png', 1, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (6, N'React Board Supper Whizzy Fast', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.', CAST(250.00 AS Decimal(18, 2)), N'images/products/sb-react1.png', 1, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (7, N'Typescript Entry Board', N'Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.', CAST(120.00 AS Decimal(18, 2)), N'images/products/sb-ts1.png', 1, 5)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (8, N'Core Maroon Hat', N'Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.', CAST(10.00 AS Decimal(18, 2)), N'images/products/hat-core1.png', 2, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (9, N'Greaan React Woolen Hat', N'Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.', CAST(8.00 AS Decimal(18, 2)), N'images/products/hat-react1.png', 2, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (10, N'Blue React Woolen Hat', N'Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.', CAST(15.00 AS Decimal(18, 2)), N'images/products/hat-react2.png', 2, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (11, N'Bliue Code Gloves', N'Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.', CAST(18.00 AS Decimal(18, 2)), N'images/products/glove-code1.png', 4, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (12, N'Green Code Gloves', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.', CAST(15.00 AS Decimal(18, 2)), N'images/products/glove-code2.png', 4, 3)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (13, N'Purple React Gloves', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. ', CAST(16.00 AS Decimal(18, 2)), N'images/products/glove-react1.png', 4, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (14, N'Green React Gloves', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.', CAST(14.00 AS Decimal(18, 2)), N'images/products/glove-react2.png', 4, 4)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (15, N'Redis Red Boots', N'Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.', CAST(250.00 AS Decimal(18, 2)), N'images/products/boot-redis1.png', 3, 6)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (16, N'Core Red Boots', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.', CAST(189.99 AS Decimal(18, 2)), N'images/products/boot-core2.png', 3, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (17, N'Core Purple Boots', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.', CAST(199.99 AS Decimal(18, 2)), N'images/products/boot-core1.png', 3, 2)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (18, N'Angular Purple Boots', N'Aenean nec lorem. In porttitor. Donec laoreet nonummy augue.', CAST(150.00 AS Decimal(18, 2)), N'images/products/boot-ang2.png', 3, 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [PictureUrl], [ProductTypeId], [ProductBrandId]) VALUES (19, N'Angular Blue Boots', N'Suspendisse dui purus, scelerisque at, vulputate vitae, pretium mattis, nunc. Mauris eget neque at sem venenatis eleifend. Ut nonummy.', CAST(180.00 AS Decimal(18, 2)), N'images/products/boot-ang1.png', 3, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
