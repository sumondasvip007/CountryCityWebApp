USE [master]
GO
/****** Object:  Database [Project]    Script Date: 11/25/2016 4:18:13 PM ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Project.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Project]
GO
/****** Object:  Table [dbo].[Citys]    Script Date: 11/25/2016 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Citys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](250) NULL,
	[AboutCity] [varchar](max) NULL,
	[NoOfDwellers] [int] NULL,
	[Location] [varchar](250) NULL,
	[Weather] [varchar](250) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Citys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countrys]    Script Date: 11/25/2016 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countrys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
	[AboutCountry] [varchar](max) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[viewCitiesview]    Script Date: 11/25/2016 4:18:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[viewCitiesview]
as
Select ci.Id,ci.CityName,ci.AboutCity
,ci.NoOfDwellers,ci.Location,ci.Weather,co.CountryName,co.AboutCountry from Citys ci inner join Countrys co on ci.CountryId=co.Id;
GO
SET IDENTITY_INSERT [dbo].[Citys] ON 

INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (1, N'Dhaka', N'<p>Dhaka is a huge poputated city<img class="fr-fin fr-dib" alt="myPic" src="http://i.froala.com/download/23ca481340a3231d82c4b47d77deab4ce409c2c5.jpg?1460229149" width="300" title="myPic"></p>', 30000000, N'Center of Bangladesh', N'hot', 1)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (2, N'Kolkata', N'<p>Kolkata is a city.<img class="fr-fin fr-dib" alt="foundation Day" src="http://i.froala.com/download/d54a15bf769324fb9162e083ab791585d5762a96.jpg?1460234203" width="300" title="foundation Day"></p>', 20000000, N'Beside bangladesh', N'Cold', 2)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (3, N'Khulna', N'<p>Khuina is a nice City.I am from Khulna.<img alt="Khulna city" class="fr-fin fr-dib" src="http://i.froala.com/download/e5af249e3cdaa199c584ca8c50a171dd5b2a0522.jpg?1460290726" width="300"></p>', 12000000, N'Beside Jessore', N'Nice', 1)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (4, N'London', N'<p>Its a beautiful city<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/798bad78e9a9f1dd9f7c7e72de58ff0b650903cf.jpg?1460290985" width="300"></p>', 20000000, N'England', N'Cold', 5)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (5, N'Kingstown', N'<!--StartFragment--><p><span style="color: #E25041;">Dec 22, 2014 -&nbsp;Value-oriented hedge fund&nbsp;<em>Kingstown Capital</em>&nbsp;Management may have a problem after the firm rushed headlong into the shares of mortgage servicing giant Ocwen Financial amid the firm’s regulatory troubles in 2014<img class="fr-fin fr-dib" alt="kingstown" src="http://i.froala.com/download/af146467cee167858315e0e9fb22296c3333801c.png?1460291620" width="300" title="kingstown"></span></p><!--EndFragment-->', 830000, N'Westindies', N'Cold', 8)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (6, N'Narail', N'<p>Narail is my home district<img class="fr-fin fr-dib" alt="Narail image" src="http://i.froala.com/download/75162087a8f6a43c7c37e4029b2c40ce5b07340f.jpg?1460291994" width="300" title="Narail image"></p>', 800000, N'Beside Gopalgongj', N'Nice', 1)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (7, N'FW', N'<p>Ff<img class="fr-fin fr-dib" alt="AAVG" src="http://i.froala.com/download/af3db7808d73e8ea1e336b1a226eff31d81fe333.jpg?1460313956" width="300" title="AAVG"></p>', 828388, N'RTFJ', N'hethe', 7)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (8, N' Berlin', N'<!--StartFragment--><p><strong><em>The Reichstag building in&nbsp;Berlin&nbsp;is the site of the German parliament. The capital of Germany is the city state of&nbsp;Berlin. It is the seat of the President of Germany, whose official residence is Schloss Bellevue.<img class="fr-fin fr-dib" alt="berlin" src="http://i.froala.com/download/50bef26ef69138c022e0835ec885d086ab9035aa.jpg?1460359282" width="300" title="berlin"></em></strong></p><!--EndFragment-->', 5423555, N'Middle of Germany', N'Cold', 10)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (9, N'Hamburg', N'<!--StartFragment--><p><em><strong><span style="color: #41A85F;">Hamburg&nbsp;officially Freie und Hansestadt&nbsp;Hamb<img class="fr-fin fr-dib" alt="hamburg Img" src="http://i.froala.com/download/7011940e5561d07dbe3dfd0bba9f5d1149b07fd6.png?1460360633" width="300" title="hamburg Img">urg&nbsp;is the second largest city in Germany and the eighth largest city in the European Union. It is the second</span></strong></em></p><!--EndFragment-->', 5464566, N'Germany ', N'hot', 10)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (10, N'Modhomgram', N'<p>It is a city of india<img class="fr-fin fr-dib" alt="ghg" src="http://i.froala.com/download/31cb5f30cdad8fad4f25357f4ec127c2f99585de.jpg?1460369812" width="300" title="ghg"></p>', 46464645, N'west bengal', N'weell', 2)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (11, N'theran', N'<p><strong><span style="color: #41A85F; font-size: 17px;">teheran is a city of Iran</span></strong></p>', 5443546, N'West ', N'hot', 12)
INSERT [dbo].[Citys] ([Id], [CityName], [AboutCity], [NoOfDwellers], [Location], [Weather], [CountryId]) VALUES (12, N'Magura', N'<p>Sakib al hasan born in Magura</p>', 200000, N'Beside Narail', N'Nice', 1)
SET IDENTITY_INSERT [dbo].[Citys] OFF
SET IDENTITY_INSERT [dbo].[Countrys] ON 

INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (1, N'Bangladesh', N'<p>Bangladesh is a Beautigul Country<img class="fr-fin fr-dib" alt="Daffodil" src="http://i.froala.com/download/1cffc32ffed9173241a7a685021dc88d490bf4f1.JPG?1460205936" width="300" title="Daffodil"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (2, N'India ', N'<p>India is a huge populated country<img class="fr-fin fr-dib" alt="Cup" src="http://i.froala.com/download/fcade5fb1e573d111e03f532063db9f6851523a0.jpg?1460207026" width="300" title="Cup"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (3, N'America', N'<p>ita a rice Country<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/22b13c2eb1d3bbd96711399acccf900e35203673.JPG?1460207333" width="300"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (4, N'agta', N'<p>gaga<img alt="Image title" class="fr-fin fr-dib" src="http://i.froala.com/download/159713341bb50807234e21d1ab81cfd1bb0f65df.jpg?1460208467" width="300"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (5, N'England', N'<p>They lost t20 World Cup 2016<img class="fr-fin fr-dib" alt="natural" src="http://i.froala.com/download/559115edbaa519fcda733db45913e189d7b13869.JPG?1460212315" width="300" title="natural"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (6, N'Australia', N'<p>Rich Country<img class="fr-fin fr-dib" alt="asd" src="http://i.froala.com/download/fc37692f54261c6348c7b0ffc64239e9a42baa2d.jpg?1460212493" width="300" title="asd"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (7, N'Holand', N'<p>aege<img class="fr-fin fr-dib" alt="sumon" src="http://i.froala.com/download/74ab989ab6ae4560b7aaad03459e1ecf266525dc.jpg?1460213176" width="300" title="sumon"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (8, N'WestIndies', N'<p>egesrh<img class="fr-fin fr-dib" alt="sgs" src="http://i.froala.com/download/a003f74b17a0b761843f35f983a8ae436d982d95.jpg?1460213536" width="300" title="sgs"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (9, N'Netherland', N'<p>Its a beautiful country<img class="fr-fin fr-dib" alt="gfjagf" src="http://i.froala.com/download/6a94cb786d89acc48aa1261e560f089312b3f114.JPG?1460313656" width="300" title="gfjagf"></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (10, N'Germany', N'<!--StartFragment--><p><strong><span style="color: #9365B8;">Explore the history and culture of the country of&nbsp;<em>Germany</em>&nbsp;with this official site from the<em>German</em>&nbsp;Tourist Board. Site includes event information, virtual tours&nbsp;<img class="fr-fin fr-dib" alt="germanyFlag" src="http://i.froala.com/download/935e0522e5d1e64ebeaf534b72cf3275aac16321.png?1460359113" width="300" title="germanyFlag"></span></strong></p><!--EndFragment-->')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (11, N'', N'')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (12, N'Iran', N'<p><strong><span style="color: #E25041;">jkefbkqjfe</span></strong></p>')
INSERT [dbo].[Countrys] ([Id], [CountryName], [AboutCountry]) VALUES (13, N'Canada', N'<p>Canada is a beautiful contry</p>')
SET IDENTITY_INSERT [dbo].[Countrys] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Citys]    Script Date: 11/25/2016 4:18:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Citys] ON [dbo].[Citys]
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Country]    Script Date: 11/25/2016 4:18:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_Country] ON [dbo].[Countrys]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citys]  WITH CHECK ADD  CONSTRAINT [FK_Citys_Countrys] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countrys] ([Id])
GO
ALTER TABLE [dbo].[Citys] CHECK CONSTRAINT [FK_Citys_Countrys]
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
