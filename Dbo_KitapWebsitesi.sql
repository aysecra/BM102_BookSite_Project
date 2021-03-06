USE [Dbo_KitapWebsitesi]
GO
/****** Object:  Table [dbo].[Tbl_Iletisim]    Script Date: 07.06.2020 17:29:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Iletisim](
	[IletisimId] [smallint] IDENTITY(1,1) NOT NULL,
	[IletisimGonderen] [varchar](60) NULL,
	[IletisimKonu] [varchar](100) NULL,
	[IletisimMail] [varchar](50) NULL,
	[IletisimIcerik] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_Iletisim] PRIMARY KEY CLUSTERED 
(
	[IletisimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_ilceler]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_ilceler](
	[ilceid] [smallint] IDENTITY(1,1) NOT NULL,
	[ilceAd] [varchar](25) NULL,
	[ilid] [tinyint] NULL,
 CONSTRAINT [PK_Tbl_ilceler] PRIMARY KEY CLUSTERED 
(
	[ilceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_iller]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_iller](
	[ilid] [tinyint] IDENTITY(1,1) NOT NULL,
	[ilAd] [varchar](25) NULL,
 CONSTRAINT [PK_Tbl_iller] PRIMARY KEY CLUSTERED 
(
	[ilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriId] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kitaplar]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kitaplar](
	[KitapId] [smallint] IDENTITY(1,1) NOT NULL,
	[KitapAd] [varchar](150) NULL,
	[KitapYazar] [varchar](100) NULL,
	[KitapCevirmen] [varchar](100) NULL,
	[KitapFiyat] [float] NULL,
	[KitapYayinevi] [varchar](100) NULL,
	[KitapResim] [varchar](100) NULL,
	[KitapOrijinalAd] [varchar](150) NULL,
	[KitapPuan] [float] NULL,
	[KitapSayfa] [smallint] NULL,
	[KitapIcerik] [varchar](max) NULL,
	[KitapTarih] [date] NULL,
	[KitapBaskiTarih] [date] NULL,
	[KitapBaski] [tinyint] NULL,
	[KitapISBN] [varchar](10) NULL,
	[KitapDil] [varchar](25) NULL,
	[KitapCilt] [varchar](25) NULL,
	[KitapKagit] [varchar](30) NULL,
	[KitapBoyut1] [float] NULL,
	[KitapBoyut2] [float] NULL,
	[KitapMiktar] [smallint] NULL,
	[KitapSatisMiktar] [smallint] NULL,
	[KategoriId] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[KitapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kullanici]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kullanici](
	[KullaniciId] [smallint] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [varchar](30) NULL,
	[KullaniciSoyad] [varchar](30) NULL,
	[KullaniciMail] [varchar](50) NULL,
	[KullaniciSİfre] [varchar](50) NULL,
	[KullaniciFoto] [varchar](100) NULL,
	[KullaniciTC] [varchar](11) NULL,
	[KullaniciDogumT] [date] NULL,
	[KullaniciTel] [varchar](11) NULL,
	[ilid] [tinyint] NULL,
	[ilceid] [smallint] NULL,
	[KullaniciAdres] [varchar](200) NULL,
 CONSTRAINT [PK_Tbl_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Satis]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Satis](
	[SatisId] [int] IDENTITY(1,1) NOT NULL,
	[SatisTarih] [date] NULL,
	[SatisMiktar] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Satis] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sepet]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sepet](
	[SepetId] [int] IDENTITY(1,1) NOT NULL,
	[KitapId] [smallint] NULL,
	[SepetMiktar] [int] NULL,
	[SepetFiyat] [float] NULL,
	[KullaniciId] [smallint] NULL,
	[SiparisNo] [varchar](12) NULL,
	[KitapFiyat] [float] NULL,
	[KitapAd] [varchar](150) NULL,
 CONSTRAINT [PK_Tbl_Sepet] PRIMARY KEY CLUSTERED 
(
	[SepetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Siparis]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Siparis](
	[SiparisId] [int] IDENTITY(1,1) NOT NULL,
	[SiparisNo] [varchar](12) NULL,
	[SiparisKargo] [varchar](20) NULL,
	[SiparisDurum] [varchar](70) NULL,
	[KullaniciId] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Siparis] PRIMARY KEY CLUSTERED 
(
	[SiparisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yoneticiler]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yoneticiler](
	[YoneticiId] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yoneticiler] PRIMARY KEY CLUSTERED 
(
	[YoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 07.06.2020 17:29:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumId] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumGonderen] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumIcerik] [varchar](max) NULL,
	[KitapId] [smallint] NULL,
	[YorumOnay] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Iletisim] ON 

INSERT [dbo].[Tbl_Iletisim] ([IletisimId], [IletisimGonderen], [IletisimKonu], [IletisimMail], [IletisimIcerik]) VALUES (1, N'Ayşe Karataş', N'Deneme Konu', N'deneme@gmail.com', N'Deneme Mesajı')
INSERT [dbo].[Tbl_Iletisim] ([IletisimId], [IletisimGonderen], [IletisimKonu], [IletisimMail], [IletisimIcerik]) VALUES (2, N'Ayşe Karataş', N'İletisim denemesi', N'aysecratas@gmail.com', N'Hello World')
SET IDENTITY_INSERT [dbo].[Tbl_Iletisim] OFF
SET IDENTITY_INSERT [dbo].[Tbl_ilceler] ON 

INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (1, N'Seyhan', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (2, N'Ceyhan', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (3, N'Feke', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (4, N'Karaisalı', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (5, N'Karataş', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (6, N'Kozan', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (7, N'Pozantı', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (8, N'Saimbeyli', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (9, N'Tufanbeyli', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (10, N'Yumurtalık', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (11, N'Yüreğir', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (12, N'Aladağ', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (13, N'İmamoğlu', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (14, N'Sarıçam', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (15, N'Çukurova', 1)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (16, N'Merkez', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (17, N'Besni', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (18, N'Çelikhan', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (19, N'Gerger', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (20, N'Gölbaşı', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (21, N'Kahta', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (22, N'Samsat', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (23, N'Sincik', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (24, N'Tut', 2)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (25, N'Merkez', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (26, N'Bolvadin', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (27, N'Çay', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (28, N'Dazkırı', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (29, N'Dinar', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (30, N'Emirdağ', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (31, N'İhsaniye', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (32, N'Sandıklı', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (33, N'Sinanpaşa', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (34, N'Sultandağı', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (35, N'Şuhut', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (36, N'Başmakçı', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (37, N'Bayat', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (38, N'İscehisar', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (39, N'Çobanlar', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (40, N'Evciler', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (41, N'Hocalar', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (42, N'Kızılören', 3)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (43, N'Merkez', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (44, N'Diyadin', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (45, N'Doğubayazıt', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (46, N'Eleşkirt', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (47, N'Hamur', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (48, N'Patnos', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (49, N'Taşlıçay', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (50, N'Tutak', 4)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (51, N'Merkez', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (52, N'Göynücek', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (53, N'Gümüşhacıköy', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (54, N'Merzifon', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (55, N'Suluova
', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (56, N'Taşova
', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (57, N'Hamamözü
', 5)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (58, N'Altındağ
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (59, N'Ayaş
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (60, N'Bala
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (61, N'Beypazarı
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (62, N'Çamlıdere
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (63, N'Çankaya
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (64, N'Çubuk
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (65, N'Elmadağ
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (66, N'Güdül
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (67, N'Haymana
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (68, N'Kalecik
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (69, N'Kızılcahamam
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (70, N'Nallıhan
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (71, N'Polatlı
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (72, N'Şereflikoçhisar
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (73, N'Yenimahalle
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (74, N'Gölbaşı', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (75, N'Keçiören
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (76, N'Mamak
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (77, N'Sincan
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (78, N'Kazan
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (79, N'Akyurt
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (80, N'Etimesgut
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (81, N'Evren
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (82, N'Pursaklar
', 6)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (83, N'Akseki
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (84, N'Alanya
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (85, N'Elmalı
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (86, N'Finike
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (87, N'Gazipaşa
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (88, N'Gündoğmuş
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (89, N'Kaş
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (90, N'Korkuteli
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (91, N'Kumluca
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (92, N'Manavgat
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (93, N'Serik
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (94, N'Demre
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (95, N'İbradı
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (96, N'Kemer', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (97, N'Aksu', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (98, N'Döşemealtı
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (99, N'Kepez
', 7)
GO
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (100, N'Konyaaltı
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (101, N'Muratpaşa
', 7)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (102, N'Ardanuç
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (103, N'Arhavi
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (104, N'Merkez
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (105, N'Borçka
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (106, N'Hopa
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (107, N'Şavşat
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (108, N'Yusufeli
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (109, N'Murgul
', 8)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (110, N'Bozdoğan
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (111, N'Çine
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (112, N'Germencik
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (113, N'Karacasu
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (114, N'Koçarlı
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (115, N'Kuşadası
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (116, N'Kuyucak
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (117, N'Nazilli
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (118, N'Söke
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (119, N'Sultanhisar
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (120, N'Yenipazar', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (121, N'Buharkent
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (122, N'İncirliova
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (123, N'Karpuzlu
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (124, N'Köşk
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (125, N'Didim
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (126, N'Efeler
', 9)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (127, N'Ayvalık
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (128, N'Balya
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (129, N'Bandırma
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (130, N'Bigadiç
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (131, N'Burhaniye
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (132, N'Dursunbey
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (133, N'Edremit', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (134, N'Erdek
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (135, N'Gönen', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (136, N'Havran
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (137, N'İvrindi
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (138, N'Kepsut
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (139, N'Manyas
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (140, N'Savaştepe
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (141, N'Sındırgı
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (142, N'Susurluk
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (143, N'Marmara
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (144, N'Gömeç
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (145, N'Altıeylül
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (146, N'Karesi
', 10)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (147, N'Merkez
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (148, N'Bozüyük
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (149, N'Gölpazarı
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (150, N'Osmaneli
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (151, N'Pazaryeri
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (152, N'Söğüt
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (153, N'Yenipazar', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (154, N'İnhisar
', 11)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (155, N'Merkez
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (156, N'Genç
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (157, N'Karlıova
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (158, N'Kiğı
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (159, N'Solhan
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (160, N'Adaklı
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (161, N'Yayladere
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (162, N'Yedisu
', 12)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (163, N'Adilcevaz
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (164, N'Ahlat
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (165, N'Merkez
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (166, N'Hizan
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (167, N'Mutki
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (168, N'Tatvan
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (169, N'Güroymak
', 13)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (170, N'Merkez
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (171, N'Gerede
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (172, N'Göynük
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (173, N'Kıbrıscık
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (174, N'Mengen
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (175, N'Mudurnu
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (176, N'Seben
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (177, N'Dörtdivan
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (178, N'Yeniçağa
', 14)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (179, N'Ağlasun
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (180, N'Bucak
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (181, N'Merkez
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (182, N'Gölhisar
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (183, N'Tefenni
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (184, N'Yeşilova
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (185, N'Karamanlı
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (186, N'Kemer', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (187, N'Altınyayla', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (188, N'Çavdır
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (189, N'Çeltikçi
', 15)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (190, N'Gemlik
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (191, N'İnegöl
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (192, N'İznik
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (193, N'Karacabey
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (194, N'Keles
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (195, N'Mudanya
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (196, N'Mustafakemalpaşa
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (197, N'Orhaneli
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (198, N'Orhangazi
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (199, N'Yenişehir', 16)
GO
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (200, N'Büyükorhan
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (201, N'Harmancık
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (202, N'Nilüfer
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (203, N'Osmangazi
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (204, N'Yıldırım
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (205, N'Gürsu
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (206, N'Kestel
', 16)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (207, N'Ayvacık', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (208, N'Bayramiç
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (209, N'Biga
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (210, N'Bozcaada
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (211, N'Çan
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (212, N'Merkez
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (213, N'Eceabat
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (214, N'Ezine
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (215, N'Gelibolu
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (216, N'Gökçeada
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (217, N'Lapseki
', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (218, N'Yenice', 17)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (219, N'Merkez
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (220, N'Çerkeş
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (221, N'Eldivan
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (222, N'Ilgaz
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (223, N'Kurşunlu
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (224, N'Orta
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (225, N'Şabanözü
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (226, N'Yapraklı
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (227, N'Atkaracalar
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (228, N'Kızılırmak
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (229, N'Bayramören
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (230, N'Korgun
', 18)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (231, N'Alaca
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (232, N'Bayat', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (233, N'Merkez
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (234, N'İskilip
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (235, N'Kargı
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (236, N'Mecitözü
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (237, N'Ortaköy', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (238, N'Osmancık
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (239, N'Sungurlu
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (240, N'Boğazkale
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (241, N'Uğurludağ
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (242, N'Dodurga
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (243, N'Laçin
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (244, N'Oğuzlar
', 19)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (245, N'Acıpayam
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (246, N'Buldan
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (247, N'Çal
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (248, N'Çameli
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (249, N'Çardak
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (250, N'Çivril
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (251, N'Güney
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (252, N'Kale', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (253, N'Sarayköy
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (254, N'Tavas
', 20)
INSERT [dbo].[Tbl_ilceler] ([ilceid], [ilceAd], [ilid]) VALUES (255, N'Babadağ
', 20)
SET IDENTITY_INSERT [dbo].[Tbl_ilceler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_iller] ON 

INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (1, N'Adana')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (2, N'Adıyaman')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (3, N'Afyonkarahisar')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (4, N'Ağrı')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (5, N'Amasya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (6, N'Ankara')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (7, N'Antalya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (8, N'Artvin')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (9, N'Aydın')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (10, N'Balıkesir')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (11, N'Bilecik')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (12, N'Bingöl')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (13, N'Bitlis')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (14, N'Bolu')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (15, N'Burdur')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (16, N'Bursa')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (17, N'Çanakkale')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (18, N'Çankırı')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (19, N'Çorum')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (20, N'Denizli')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (21, N'Diyarbakır')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (22, N'Edirne')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (23, N'Elazığ')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (24, N'Erzincan')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (25, N'Erzurum')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (26, N'Eskişehir')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (27, N'Gaziantep')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (28, N'Giresun')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (30, N'Hakkâri')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (31, N'Hatay')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (32, N'Isparta')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (33, N'Mersin')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (34, N'İstanbul')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (35, N'İzmir')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (36, N'Kars')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (37, N'Kastamonu')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (38, N'Kayseri')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (39, N'Kırklareli')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (40, N'Kırşehir')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (41, N'Kocaeli')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (42, N'Konya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (43, N'Kütahya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (44, N'Malatya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (45, N'Manisa')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (47, N'Mardin')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (48, N'Muğla')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (49, N'Muş')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (50, N'Nevşehir')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (51, N'Niğde')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (52, N'Ordu')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (53, N'Rize')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (54, N'Sakarya')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (55, N'Samsun')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (56, N'Siirt')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (57, N'Sinop')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (58, N'Sivas')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (60, N'Tokat')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (61, N'Trabzon')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (62, N'Tunceli')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (63, N'Şanlıurfa	')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (64, N'Uşak')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (65, N'Van')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (66, N'Yozgat')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (67, N'Zonguldak')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (68, N'Aksaray')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (69, N'Bayburt')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (70, N'Karaman')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (72, N'Batman')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (73, N'Şırnak')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (74, N'Bartın')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (75, N'Ardahan')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (76, N'Iğdır')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (77, N'Yalova')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (78, N'Karabük')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (79, N'Kilis')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (80, N'Osmaniye')
INSERT [dbo].[Tbl_iller] ([ilid], [ilAd]) VALUES (81, N'Düzce')
SET IDENTITY_INSERT [dbo].[Tbl_iller] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (1, N'Çocuk Kitapları')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (2, N'Bilgisayar')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (3, N'Bilim & Mühendislik')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (4, N'Dergi')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (5, N'Ders/Sınav Kitapları')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (6, N'Edebiyat')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (7, N'Kişisel Gelişim')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (8, N'Kültür')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (9, N'Tarih')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (10, N'Felsefe')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (11, N'Psikoloji')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (12, N'Çizgi Roman')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (13, N'Din ')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (14, N'Sanat – Tasarım')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (15, N'Foreign Language')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (16, N'Eğitim')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (17, N'Eğlence – Mizah')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (18, N'Ekonomi')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (19, N'Hobi')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (20, N'Hukuk')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (21, N'Resim')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (22, N'Müzik')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (23, N'Sağlık – Tıp')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (24, N'Sinema – Tiyatro')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (25, N'Siyaset')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (26, N'Sosyoloji')
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd]) VALUES (27, N'Spor')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Kitaplar] ON 

INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (1, N'Adım Adım Bigdata ve Uygulamaları', N'Mehmet Işık , Yrd.Doç.Dr. Deniz HERAND', N'-', 21.35, N'PUSULA YAYINCILIK VE İLETİŞİM', N'~/BookImg/AdimAdimBigdataVeUygulamalari.jpg', N'-', 0, 182, N'• HADOOP, HBASE ve HIVE ile ÇÖZÜMLEMELER
• VERİ İŞLEME, KAYDETME ve GÖRSELLEŞTİRME
 
BigData''nın miktarı, oluşma hızı ve çeşitliliği her geçen gün katlanarak artıyor. Tüm kurumların ilgisi, BigData''yı doğru işleyebilmek, işine yarar verileri süzebilmek ve anlamlandırmak üzerine. Peki ama bunca büyük verinin arasında aradığımızı nasıl bulacağız?
Büyük Veri kullanımı için farklı yollar mevcut olsa da, hangi uygulamanın bizim çözümümüz için daha uygun olduğunu belirlemek zorundayız. Bu konu için farklı yaklaşımlar gerekmekte olup, bunlar ancak birlikte kullanıldığı zaman gerçek potansiyelleri ortaya çıkmaktadır. Burada kastettiğimiz; Hadoop yanı sıra, NoSQL veritabanı, büyük miktarda veriler için; veri ambarları bileşenleri, MapReduce, YARN ve Spark programlama modelleri ve bu tarz yaklaşımları barındıran mevcut çözümler, veri madenciliği veya Extract-Transform-Load (ETL - ayıklama, dönüştürme, yükleme) süreci gibi BigData mantığıyla uyuşabilecek araçların birlikte kullanılmasıdır.
Kitapta, örneklerle birlikte veri üretme ve bu verilerin nasıl işleneceği adım adım anlatılıyor. Bu alandaki en güncel ve stabil program versiyonlarını ve kullanılan son teknolojiler paylaşılıyor. Kitabı bitirdiğinizde BigData’nın nasıl kullanıldığına, arka planda nasıl çalıştığına ve hangi kodlamaların ve teknolojilerin gerektiğine hakim olacaksınız. Kitap, konuları süresince aynı doğrultuda projelerle ilerlediği için, okurken ve uygularken sıkılmayacaksınız. Ayrıca uygulama yaparken bazı yerlerde karşılaşabileceğiniz hatalar da notlar halinde verilerek yazılımda ilerlemeniniz kolaylaştırılıyor.
• BIGDATA TERİMİ
• ENDÜSTRİLERİN BIGDATA’YA BAKIŞI
• HADOOP’A GİRİŞ
• HDFS - HADOOP DAĞITILMIŞ DOSYA SİSTEMİ
• MAPREDUCE
• KÜMELERİ (CLUSTERS) İŞLEMEK
• YARN UYGULAMALARI
• HADOOP EKOSİSTEMİ
• NOSQL
• VERİ TAŞIMA YÖNTEMLERİ
• SQL ve DOSYA SİSTEMLERİNDEN NOSQL veya HDFS’YE AKTARIM
• HBASE
• SQOOP ile VERİTABANINDAN VERİ ÇIKARIMI
• HIVE ile DATA WAREHOUSING
• SORGULAMA OLARAK HIVESQL KULLANIMI
• BIGDATA GÖRSELLEŞTİRME
• BASİT GÖRSELLEŞTİRME BİLEŞENİNİN GELİŞTİRİLMESİ', CAST(N'2020-03-31' AS Date), CAST(N'2019-04-26' AS Date), 1, N'6052359655', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 16.5, 24, 996, 4, 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (2, N'Algoritmalar', N'Robert Sedgewick', N'Şadi Evren Şeker / Kevin Wayne', 56.25, N'NOBEL AKADEMİK YAYINCILIK', N'~/BookImg/Algoritmalar.jpg', N'-', 0, 968, N'“Bilgisayar biliminin bilgisayarlarla bağlantısı, astronominin teleskoplarla bağlantısından fazla değildir.” E. W. Dijkstra
Bilgisayar bilimlerinin özünü oluşturan algoritma analizi, insanlığın tarih boyunca geliştirdiği, bilgisayar donanımından, programlama dillerinden veya yazılım projelerinden bağımsız, bir işin farklı şekillerde nasıl yapılacağını anlatan, bilgi birikimini oluşturmaktadır. Herhangi bir dilde veya ortamda, herhangi bir amaçla program yazmak isteyen birinin, yazdığı programı daha iyi nasıl yazabileceğini veya yazılabilecek en iyi algoritmayı geliştirdiğini anlaması ancak algoritmayı doğru şekilde analiz etmesi ile mümkün olur. Bu kitap, algoritma analizi kavramlarına giriş yapmanın yanında, programlama ile uğraşan herhangi birinin ihtiyaç duyabileceği çok klasik problemler için de çözüm yollarını sunmakta ve hatta bu çözümlerin Java gibi güncel bir dil üzerinden kodlaması ile ilgili örnekler de vermektedir.

Bilgisayar bilimlerinin ve programlamanın en gizemli ve ilgi çekici konusu olan algoritmalara bu kitapla giriş yapan biri için programlama artık çok farklı bir olguya dönüşecektir.
', CAST(N'2020-03-31' AS Date), CAST(N'2018-12-01' AS Date), 1, N'6053209720', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 24, 17, 998, 2, 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (3, N'Arduino Analog-Dijital-Sensörler-Haberleşme-Projeler', N'Coşkun Taşdemir', N'-', 25.93, N'DİKEYEKSEN YAYINCILIK', N'~/BookImg/ArduinoAnalogDijitalSensörlerHaberleşmeProjeler.png', N'-', 0, 280, N'İleri seviyede elektronik ve yazılım bilgisine sahip olmayan kişilerin de kolaylıkla interaktif projeler oluşturmasını sağlamak amacıyla tasarlanmış olan Arduino bugün dünyanın en popüler açık kaynak donanım projelerinden birisi haline gelmiş durumdadır. Bu kitapla Arduino ile tanışarak interaktif elektronik projeleri nasıl gerçekleştirebileceğinizi öğreneceksiniz. Yapabileceklerinizin hayal gücünüzle sınırlı olduğu Arduino dünyasına hoşgeldiniz!

İnsansız hava araçları alanında ar-ge mühendisliği yapmış, milli insansız araç projelerinde yer almış ve halen Siemens’de ar-ge mühendisi olarak çalışan Elektronik Mühendisi Coşkun Taşdemir’in sade ve anlaşılır anlatımıyla Arduino’da sağlam adımlarla ilerleyeceksiniz. Kitapta anlatılan konuların başlıcaları şöyle:

• Fiziki Programlama
• Açık Kaynaklı Donanım
• Gömülü Sistemler
• Arduino Çeşitleri
• Arduino Donanım Eklentileri
• Arduino Kurulumu ve Testi
• Arduino Programlama Dili
• Değişkenler, Diziler
• Matematiksel İşlemler
• Bit/Bayt İşlemleri
• Kontrol Yapıları ve Fonksiyonlar
• Karakter Dizileri ve String’ler
• Dijital Giriş – Çıkış İşlemleri
• Analog Giriş–Çıkış İşlemleri
• Seri Haberleşme
• LCD Ekran Kullanımı
• Kalıcı Hafıza Kullanımı
• I2C Haberleşme
• Örnek Projeler
• Temel Elektronik Komponentler
• Breadboard (Devre Tahtası) Kullanımı
• Örnek Kodlar', CAST(N'2020-03-31' AS Date), CAST(N'2017-05-18' AS Date), 10, N'6058758858', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 21, 15, 1000, 0, 2)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (4, N'Gemi Elektriği ve Elektroteknik Güverte ve Makine Bölümleri İçin IMO Müfredatına Uygun', N'İbrahim Abbasoğlu', N'-', 35.1, N'YALIN YAYINCILIK', N'~/BookImg/GemiElektrigiveElektroteknik.jpg', N'-', 0, 192, N'Güverte Bölümü ve Makine Bölümü için; konular açıklanmış ve her konunun sonunda sorular verilmiştir. Konular, fazla teoriye girmeden, örneklerle açıklanmıştır.
Öğrencilere faydalı olması temennisiyle', CAST(N'2020-03-31' AS Date), CAST(N'2019-04-26' AS Date), 1, N'9944313735', N'TÜRKÇE', N'Karton Kapak', N'1. Hm. Kağıt', 16, 24, 999, 1, 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (5, N'Gemiler ve Açık Deniz Yapıları İTÜ Gemi İnşaatı ve Deniz Bilimleri Fakültesi', N'Prof. Dr. Reşat Baykal', N'-', 51.3, N'BİRSEN YAYINEVİ', N'~/BookImg/GemilerveAçikDenizYapilari.jpg', N'-', 0, 178, N'-Gemilerin Sınıflandırılması
- Açık Deniz Yapıları
- Gemi Geometrisi
- Gemilerde Fribord Ve Tonaj
- Uluslararası Boğazlar Ve Kanallar
- Sınıflandırma Kuruluşları', CAST(N'2020-03-31' AS Date), CAST(N'2011-02-15' AS Date), 1, N'9755115535', N'TÜRKÇE', N'Karton Kapak', N'Kuşe Kağıt', 17, 24, 1000, 0, 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (6, N'Gıda Biyoteknolojisi', N'Prof. Dr. Necla Aran', N'-', 38.25, N'NOBEL AKADEMİK YAYINCILIK', N'~/BookImg/GidaBiyoteknolojisi.jpg', N'-', 0, 512, N'Gıda Biyoteknolojisi kitabı, benzer Türkçe kaynaklar arasında içeriği ve kapsamı bakımından ilk ve öncü bir eser olma özelliği taşımaktadır. Kitapta gıda biyoteknolojisi kapsamında yer alan temel bilimler ve bunların biyoteknolojik uygulamalarının bir araya getirilmesi amaçlanmıştır. Kitap, lisans / yüksek lisans düzeyinde bir ders kitabı niteliğinde olup temel bilgilerin yanı sıra ilgili uygulama alanlarındaki son gelişmeleri de kapsamaktadır. Bu açıdan öğrencilerin yorum ve sorgulama kabiliyetlerinin gelişmesine de katkıda bulunması hedeflenmektedir. Ay rıca gıda biyoteknolojisi alanında bilimsel çalışma yapmak isteyen genç araştırmacılara temel kaynak olabilecek niteliktedir. Ülkemizin farklı üniversitelerinden, farklı disiplinlerden ve endüstriden her biri alanlarında uzman bilim insanları tarafından hazırlanmış olması, ülkemize özgü uygulamaları da içermesi, kitabı güçlü ve farklı kılan önemli özelliklerdir.
', CAST(N'2020-03-31' AS Date), CAST(N'2020-02-17' AS Date), 7, N'6051331348', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 16, 23.5, 999, 1, 3)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (7, N'Alice Harikalar Diyarında', N'Lewis Carroll', N'Sinan Ezber', 5.2, N'TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI', N'~/BookImg/AliceHarikalarDiyarinda.jpg', N'Alice’s Adventures in Wonderland', 0, 112, N'Alice Harikalar Diyarında, yazıldığı tarihten bu yana geçen yüz elli yılı aşkın süre boyunca, edebiyatın eşsiz eserlerinden biri olma özelliğini hep korudu. Hem çocuk hem de yetişkin edebiyatında önemli bir yere sahip olan bu kitap, hayal gücü zenginliğiyle küçük okurlara büyülü bir dünya sunarken, yetişkinler için bu büyüsünü içerdiği sembollerin anlam derinliğiyle gösterdi. Adının edebiyat tarihine altın harflerle yazılmasına yol açan eserleri kadar, matematikçi ve mantıkçı kimliğiyle de tanınan Lewis Carroll’un Alice Harikalar Diyarında kurgusu, metne serpiştirilmiş bilmecelerle okuru da kitabın bir kahramanı kılar.
Alice Harikalar Diyarında hem çocuklar hem de macera dolu naif çocukluğunu özleyen ve yıllara meydan okuyan bir mantık labirentinde kendine sorular sormaktan çekinmeyecek okurlar için Modern Klasikler Dizisi’nde yerini alıyor.', CAST(N'2020-03-31' AS Date), CAST(N'2019-07-25' AS Date), 11, N'6052950524', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 12.5, 205, 998, 2, 1)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (8, N'Ay''a Yolculuk', N'Jules Verne', N'Bertan Onaran', 7.8, N'TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI', N'~/BookImg/AyaYolculuk.jpg', N'-', 0, 224, N'Durmak bilmeyen bir tempoyla ve akıl almaz bir hayal gücüyle yazılmış Ay’a Yolculuk bilim kurgunun temel eserlerinden biridir. Macera, 1865’te Amerikan İç Savaşı’ndan yeni çıkmış bir grup topçunun, kulüplerinde yapacak iş bulamayıp başkanları Bay Barbicane’in önderliğinde Ay’a kadar gidebilecek bir mermi yapmaya karar vermesiyle başlar. Haber kısa sürede dünyanın dört bir yanına yayılır. Merminin içinde Ay’a gitmek isteyen bir gönüllü de işe karışınca, proje bir anda çok büyük bir olaya dönüşür.

Astronotların Ay’a ulaşmasından yaklaşık yüz elli yıl önce kaleme alınmış bu çarpıcı roman, Jules Verne’in bilimsel ve edebi dehasının en güzel örneklerinden biridir. Tabii ki günümüzde romanda anlatılan bilimsel gerçeklerin bazıları farklı, ama maceranın tadı aynı!
', CAST(N'2020-03-31' AS Date), CAST(N'2019-11-02' AS Date), 12, N'6053327127', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 12.5, 20.5, 997, 3, 1)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (9, N'Charlie''nin Çikolata Fabrikası (Ciltsiz)', N'Roald Dahl', N'Celal Üster', 13.65, N'CAN ÇOCUK YAYINLARI', N'~/BookImg/CharlieninCikolataFabrikasi(Ciltsiz).jpg', N'-', 0, 208, N'Roald Dahl (1916-1990), Norveç asıllı büyük bir yazar. Kitaplarını İngilizce yazıyor. Büyükler için olduğu kadar çocuklar için de birbirinden güzel pek çok kitap yazmıştır. Charlie’nin Çikolata Fabrikası, onun en Sevilen çocuk kitaplarından biri. Bu kitapta küçük Charlie ile tanışacaksınız. Onu çok seveceğinizi, onula arkadaş olacağınızı umuyoruz. Charlie, annesi, babası, iki ninesi, iki de dedesiyle birlikte büyük bir kentin bitiminde küçük bir tahta barkada yaşamaktadır. Yoksuldurlar. Charlie, çikolataya bayılır, ama alacak parası yoktur. Biriktirilen parayla, doğum günlerinde, yılda bir kez bir küçük çikolata girer evlerine. Bu büyük kentte, Charlie’lerin evinden bile görülen kocaman bir çikolata fabrikası vardır; dünyanın en ünlü çikolatalarını üretir. Günlerden bir gün... Yok, kitabın konusunu anlatmamızı beklemeyin. Okuyun göreceksiniz neler olacak. Bu kitabın devamı sayılabilecek güzel bir kitabımız daha var: Charlie’nin Büyük Cam Asansörü. O kitapta da Charlie’nin başka bir serüvenini izleyeceksiniz.
', CAST(N'2020-03-31' AS Date), CAST(N'2019-08-06' AS Date), 69, N'9755100982', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 12.5, 19.5, 996, 4, 1)
INSERT [dbo].[Tbl_Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapCevirmen], [KitapFiyat], [KitapYayinevi], [KitapResim], [KitapOrijinalAd], [KitapPuan], [KitapSayfa], [KitapIcerik], [KitapTarih], [KitapBaskiTarih], [KitapBaski], [KitapISBN], [KitapDil], [KitapCilt], [KitapKagit], [KitapBoyut1], [KitapBoyut2], [KitapMiktar], [KitapSatisMiktar], [KategoriId]) VALUES (12, N'Çaylak İle Filozof / Ben Bir Neyim?', N'Özkan Öze', N'-', 9.75, N'UĞURBÖCEĞİ YAYINLARI', N'~/BookImg/CaylakIleFilozof.jpg', N'-', 0, 128, N'İlkgençlik yıllarının başında, hayatı hiç beklemediği bir trajedi ile değişen Çaylak için Filozof, sakin bir limana sığınmak gibiydi. Ama bunu fark etmesi kolay olmadı… Onun en büyük sorunu, bu yıldızların altında kendisine ait yeri henüz bulamamış olmasıydı. Dahası böyle bir yer olup olmadığından bile emin değildi henüz… Oysa hepimiz gibi hayatın anlamını keşfedip, içini yaşamaya değer bir şeylerle doldurabilmesi buna bağlıydı. Çaylak ile Filozof, zaman zaman eğlenceli, –itiraf etmek gerekirse– zaman zaman da sinir bozucu bir fikir yolculuğudur. Oldukça cesur konuların ortalıkta fink attığı, aklınızın ve kalbinizin derinliklerinde gizlenmiş duyguların, adına harfler dediğimiz şu eğri büğrü işaretlerle sayfalara cömertçe döküldüğü maceralı bir yolculuk bu… Bu kitap sizi işte böyle yolculuğa davet ediyor. Gelin ve Çaylak ile Filozof’a katılın. Birlikte uzun bir seyahate çıkın! Tarihin, felsefenin, hikmetin, bilginin, aklın ve kalbin vadilerinden, vahyin aydınlattığı yollardan geçen bir seyahate…
', CAST(N'2020-04-05' AS Date), CAST(N'2018-07-11' AS Date), 1, N'6052236222', N'TÜRKÇE', N'Karton Kapak', N'Kitap Kağıdı', 13.5, 21, 999, 1, 1)
SET IDENTITY_INSERT [dbo].[Tbl_Kitaplar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] ON 

INSERT [dbo].[Tbl_Kullanici] ([KullaniciId], [KullaniciAd], [KullaniciSoyad], [KullaniciMail], [KullaniciSİfre], [KullaniciFoto], [KullaniciTC], [KullaniciDogumT], [KullaniciTel], [ilid], [ilceid], [KullaniciAdres]) VALUES (1, N'Ayşe', N'Karataş', N'aysecratas@gmail.com', N'123', N'~/UserImg/user.png', N'11111111111', CAST(N'1999-01-01' AS Date), N'05111111111', 6, 63, N'Ankara/Çankaya')
SET IDENTITY_INSERT [dbo].[Tbl_Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Satis] ON 

INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (1, CAST(N'2020-05-25' AS Date), 5)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (2, CAST(N'2020-05-26' AS Date), 20)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (3, CAST(N'2020-05-27' AS Date), 43)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (4, CAST(N'2020-05-28' AS Date), 12)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (5, CAST(N'2020-05-29' AS Date), 43)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (6, CAST(N'2020-05-30' AS Date), 12)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (7, CAST(N'2020-05-31' AS Date), 87)
INSERT [dbo].[Tbl_Satis] ([SatisId], [SatisTarih], [SatisMiktar]) VALUES (8, CAST(N'2020-06-01' AS Date), 92)
SET IDENTITY_INSERT [dbo].[Tbl_Satis] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Sepet] ON 

INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (1, 1, 3, 64.050000000000011, 1, N'GRFBCRZICJ4N', 21.35, N'Adım Adım Bigdata ve Uygulamaları')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (13, 3, 2, 51.86, 1, N'GRFBCRZICJ4N', 25.93, N'Arduino Analog-Dijital-Sensörler-Haberleşme-Projeler')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (14, 2, 3, 168.75, 1, N'GRFBCRZICJ4N', 56.25, N'Algoritmalar')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (15, 7, 1, 5.2, 1, N'H2SUKRCF2W5M', 5.2, N'Alice Harikalar Diyarında')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (16, 6, 1, 38.25, 1, N'H2SUKRCF2W5M', 38.25, N'Gıda Biyoteknolojisi')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (17, 5, 1, 51.3, 1, N'H2SUKRCF2W5M', 51.3, N'Gemiler ve Açık Deniz Yapıları İTÜ Gemi İnşaatı ve Deniz Bilimleri Fakültesi')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (18, 9, 1, 13.65, 1, N'HZPXYCTTVFG0', 13.65, N'Charlie''nin Çikolata Fabrikası (Ciltsiz)')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (19, 2, 1, 56.25, 1, N'HZPXYCTTVFG0', 56.25, N'Algoritmalar')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (20, 8, 1, 7.8, 1, N'RNPUKEVPY37I', 7.8, N'Ay''a Yolculuk')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (21, 9, 2, 27.3, 1, N'RNPUKEVPY37I', 13.65, N'Charlie''nin Çikolata Fabrikası (Ciltsiz)')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (22, 1, 1, 21.35, 1, N'RNPUKEVPY37I', 21.35, N'Adım Adım Bigdata ve Uygulamaları')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (23, 1, 2, 42.7, 1, N'84O3IKIQVUCA', 21.35, N'Adım Adım Bigdata ve Uygulamaları')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (24, 12, 1, 9.75, 1, N'84O3IKIQVUCA', 9.75, N'Çaylak İle Filozof / Ben Bir Neyim?')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (25, 4, 1, 35.1, 1, N'S1DXCWTRAKRW', 35.1, N'Gemi Elektriği ve Elektroteknik Güverte ve Makine Bölümleri İçin IMO Müfredatına Uygun')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (26, 9, 1, 13.65, 1, N'S1DXCWTRAKRW', 13.65, N'Charlie''nin Çikolata Fabrikası (Ciltsiz)')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (27, 2, 1, 56.25, 1, N'S1DXCWTRAKRW', 56.25, N'Algoritmalar')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (28, 8, 2, 15.6, 1, N'MYRKJXCMWHNI', 7.8, N'Ay''a Yolculuk')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (30, 6, 1, 38.25, 1, N'MYRKJXCMWHNI', 38.25, N'Gıda Biyoteknolojisi')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (33, 7, 2, 10.4, 1, N'7YER8FGN0SFE', 5.2, N'Alice Harikalar Diyarında')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (34, 1, 1, 21.35, 1, N'7YER8FGN0SFE', 21.35, N'Adım Adım Bigdata ve Uygulamaları')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (36, 9, 1, 13.65, 1, NULL, 13.65, N'Charlie''nin Çikolata Fabrikası (Ciltsiz)')
INSERT [dbo].[Tbl_Sepet] ([SepetId], [KitapId], [SepetMiktar], [SepetFiyat], [KullaniciId], [SiparisNo], [KitapFiyat], [KitapAd]) VALUES (38, 2, 1, 56.25, 1, NULL, 56.25, N'Algoritmalar')
SET IDENTITY_INSERT [dbo].[Tbl_Sepet] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Siparis] ON 

INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (1, N'GRFBCRZICJ4N', N'Aras Kargo', N'Paketlendi', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (2, N'H2SUKRCF2W5M', N'Yurtiçi Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (3, N'HZPXYCTTVFG0', N'Yurtiçi Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (4, N'RNPUKEVPY37I', N'Yurtiçi Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (5, N'84O3IKIQVUCA', N'Yurtiçi Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (6, N'S1DXCWTRAKRW', N'Yurtiçi Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (7, N'MYRKJXCMWHNI', N'Aras Kargo', N'Siparisiniz Hazırlanıyor', 1)
INSERT [dbo].[Tbl_Siparis] ([SiparisId], [SiparisNo], [SiparisKargo], [SiparisDurum], [KullaniciId]) VALUES (8, N'7YER8FGN0SFE', N'MNG Kargo', N'Siparisiniz Hazırlanıyor', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Siparis] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yoneticiler] ON 

INSERT [dbo].[Tbl_Yoneticiler] ([YoneticiId], [YoneticiAd], [YoneticiSifre]) VALUES (1, N'*adm_aysecra', N'123')
SET IDENTITY_INSERT [dbo].[Tbl_Yoneticiler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumGonderen], [YorumTarih], [YorumIcerik], [KitapId], [YorumOnay]) VALUES (1, N'Ayşe Karataş', CAST(N'2020-06-01T17:39:00' AS SmallDateTime), N'Konuya yeni başlayanlar için uygun bir kitap. Algoritmalar açık ve net bir şekilde anlatılmış.', 2, 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumGonderen], [YorumTarih], [YorumIcerik], [KitapId], [YorumOnay]) VALUES (3, N'Ayşe Karataş', CAST(N'2020-06-01T17:52:00' AS SmallDateTime), N'Konuyu güzel anlatmış. Çok iyi', 1, 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumGonderen], [YorumTarih], [YorumIcerik], [KitapId], [YorumOnay]) VALUES (5, N'Ayşe Karataş', CAST(N'2020-06-06T03:03:00' AS SmallDateTime), N'Yorum deneme', 7, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
ALTER TABLE [dbo].[Tbl_Kitaplar] ADD  CONSTRAINT [DF_Tbl_Kitaplar_KitapPuan]  DEFAULT ((0)) FOR [KitapPuan]
GO
ALTER TABLE [dbo].[Tbl_Kitaplar] ADD  CONSTRAINT [DF_Tbl_Kitaplar_KitapTarih]  DEFAULT (getdate()) FOR [KitapTarih]
GO
ALTER TABLE [dbo].[Tbl_Kitaplar] ADD  CONSTRAINT [DF_Tbl_Kitaplar_KitapSatısMiktar]  DEFAULT ((0)) FOR [KitapSatisMiktar]
GO
ALTER TABLE [dbo].[Tbl_Satis] ADD  CONSTRAINT [DF_Tbl_Satis_SatisTarih]  DEFAULT (getdate()) FOR [SatisTarih]
GO
ALTER TABLE [dbo].[Tbl_Sepet] ADD  CONSTRAINT [DF_Tbl_Sepet_SepetMiktar]  DEFAULT ((1)) FOR [SepetMiktar]
GO
ALTER TABLE [dbo].[Tbl_Siparis] ADD  CONSTRAINT [DF_Tbl_Siparis_SiparsDurum]  DEFAULT ('Siparisiniz Hazırlanıyor') FOR [SiparisDurum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_ilceler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_ilceler_Tbl_iller] FOREIGN KEY([ilid])
REFERENCES [dbo].[Tbl_iller] ([ilid])
GO
ALTER TABLE [dbo].[Tbl_ilceler] CHECK CONSTRAINT [FK_Tbl_ilceler_Tbl_iller]
GO
ALTER TABLE [dbo].[Tbl_Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kitaplar_Tbl_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Kitaplar] CHECK CONSTRAINT [FK_Tbl_Kitaplar_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kullanici_Tbl_ilceler] FOREIGN KEY([ilceid])
REFERENCES [dbo].[Tbl_ilceler] ([ilceid])
GO
ALTER TABLE [dbo].[Tbl_Kullanici] CHECK CONSTRAINT [FK_Tbl_Kullanici_Tbl_ilceler]
GO
ALTER TABLE [dbo].[Tbl_Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kullanici_Tbl_iller] FOREIGN KEY([ilid])
REFERENCES [dbo].[Tbl_iller] ([ilid])
GO
ALTER TABLE [dbo].[Tbl_Kullanici] CHECK CONSTRAINT [FK_Tbl_Kullanici_Tbl_iller]
GO
ALTER TABLE [dbo].[Tbl_Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Sepet_Tbl_Kitaplar] FOREIGN KEY([KitapId])
REFERENCES [dbo].[Tbl_Kitaplar] ([KitapId])
GO
ALTER TABLE [dbo].[Tbl_Sepet] CHECK CONSTRAINT [FK_Tbl_Sepet_Tbl_Kitaplar]
GO
ALTER TABLE [dbo].[Tbl_Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Sepet_Tbl_Kullanici] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Tbl_Kullanici] ([KullaniciId])
GO
ALTER TABLE [dbo].[Tbl_Sepet] CHECK CONSTRAINT [FK_Tbl_Sepet_Tbl_Kullanici]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Kitaplar] FOREIGN KEY([KitapId])
REFERENCES [dbo].[Tbl_Kitaplar] ([KitapId])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Kitaplar]
GO
