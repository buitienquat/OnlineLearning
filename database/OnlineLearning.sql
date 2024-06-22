
USE [master]
GO
CREATE DATABASE [OnlineLearning]
GO 
/****** Object:  Table [dbo].[Answer]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId_Question] [int] NULL,
	[AnswerText] [nvarchar](max) NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [nvarchar](max) NOT NULL,
	[BlogImage] [nvarchar](max) NOT NULL,
	[BlogDetail] [nvarchar](max) NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[BlogStatus] [int] NOT NULL,
	[BlogTagID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogTag]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogTag](
	[BlogTagID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BlogTag] PRIMARY KEY CLUSTERED 
(
	[BlogTagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CouseraID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Category_categoryID] [int] NOT NULL,
	[Feestatus] [int] NOT NULL,
	[Introduce] [nvarchar](max) NULL,
	[OriginalPrice] [int] NULL,
	[UserId_User] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CouseraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Course_courseID] [int] NOT NULL,
	[Video] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
	[NumberLesson] [int] NULL,
	[QuizId_Quiz] [int] NULL,
 CONSTRAINT [PK_Lesson_1] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [nvarchar](max) NULL,
	[QuizId_Quiz] [int] NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[Quizid] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[Quizid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statusUser]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusUser](
	[statusUserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_statusUser] PRIMARY KEY CLUSTERED 
(
	[statusUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](30) NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Dob] [date] NOT NULL,
	[Address] [nvarchar](80) NOT NULL,
	[GmailID] [nvarchar](80) NULL,
	[RoleID] [int] NOT NULL,
	[CodeVerify] [varchar](15) NOT NULL,
	[statusUserId] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 6/11/2024 5:22:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (1, 1, N'Hyper Trainer Markup Language', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (2, 1, N'Hyper Text Markup Language', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (3, 1, N'Hyper Text Manipulation Language', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (4, 1, N'Hyper Tool Markup Language', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (5, 2, N'<div>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (6, 2, N'<p>', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (7, 2, N'<span>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (8, 2, N'<paragraph>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (9, 3, N'<link>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (10, 3, N'<a>', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (11, 3, N'<href>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (12, 3, N'<url>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (13, 4, N'<image>', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (14, 4, N'<pic>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (15, 4, N'<picture>', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (16, 5, N'src', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (17, 5, N'href', 1)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (18, 5, N'link', 0)
INSERT [dbo].[Answer] ([AnswerID], [QuestionId_Question], [AnswerText], [IsCorrect]) VALUES (19, 5, N'url', 0)
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'IT & Software')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Photography')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Programming Language')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'Technology')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (1, N'Kiến Thức Nhập Môn IT', N'http://dummyimage.com/125x100.png/cc0000/ffffff', N'Các kiến thức cơ bản, nền móng của ngành IT. Các mô hình, kiến trúc cơ bản khi triển khai ứng dụng. Các khái niệm, thuật ngữ cốt lõi khi triển khai ứng dụng. Hiểu hơn về cách internet và máy vi tính hoạt động', 1, 3, 0, N'Để có cái nhìn tổng quan về ngành IT - Lập trình web các bạn nên xem các videos tại khóa này trước nhé.', 1234, 45)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (2, N'American Beauty', N'http://dummyimage.com/175x100.png/dddddd/000000', N'97-8589232', 2, 4, 150, N'Ruhr-Universität Bochum', 2345, 23)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (3, N'Next Day Air', N'http://dummyimage.com/143x100.png/dddddd/000000', N'33-7964225', 2, 2, 175, N'University of Saint La Salle', 3456, 11)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (4, N'If Looks Could Kill', N'http://dummyimage.com/207x100.png/dddddd/000000', N'63-1895987', 2, 4, 200, N'Willamette University', 4567, 37)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (5, N'Chillers', N'http://dummyimage.com/108x100.png/cc0000/ffffff', N'30-0229844', 1, 4, 0, N'Eastern Virginia Medical School', 5678, 18)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (6, N'Gambling City', N'http://dummyimage.com/204x100.png/dddddd/000000', N'95-0701783', 2, 1, 125, N'Rybinsk State Academy of Aviational Technology', 6789, 5)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (7, N'Disorderly Orderly, The', N'http://dummyimage.com/114x100.png/ff4444/ffffff', N'91-1291305', 0, 3, 180, N'Buckinghamshire New University', 7890, 6)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (8, N'Black on White (Mustaa valkoisella)', N'http://dummyimage.com/140x100.png/cc0000/ffffff', N'99-6356979', 1, 3, 220, N'Universidad Nuestra Senora de La Paz', 8910, 52)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (9, N'Deserter (Dezertir)', N'http://dummyimage.com/128x100.png/ff4444/ffffff', N'39-5419558', 1, 1, 140, N'University of Massachusetts Medical Center at Worcester', 1098, 43)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (10, N'Let the Right One In (Låt den rätte komma in)', N'http://dummyimage.com/178x100.png/cc0000/ffffff', N'74-2263779', 2, 3, 0, N'Ohio Valley College', 2109, 21)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (11, N'Suicide Killers', N'http://dummyimage.com/191x100.png/5fa2dd/ffffff', N'46-1879884', 1, 3, 160, N'University of Kurdistan - Hawler', 3110, 9)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (12, N'I Start Counting', N'http://dummyimage.com/148x100.png/5fa2dd/ffffff', N'20-9809684', 2, 2, 190, N'Central Queensland University', 4121, 48)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (13, N'Tuvalu', N'http://dummyimage.com/114x100.png/cc0000/ffffff', N'47-1697177', 1, 1, 210, N'University of New York in Prague', 5132, 31)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (14, N'Restless (Uro)', N'http://dummyimage.com/111x100.png/dddddd/000000', N'79-6316904', 0, 3, 130, N'Indian Veterinary Research Institute', 6143, 15)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (15, N'Salton Sea, The', N'http://dummyimage.com/112x100.png/cc0000/ffffff', N'23-2014353', 1, 1, 0, N'University for Development Studies', 7154, 57)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (16, N'Natural Selection', N'http://dummyimage.com/173x100.png/ff4444/ffffff', N'21-5825293', 1, 1, 170, N'Ecole Nationale Supérieure des Mines de Paris', 8165, 28)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (17, N'Medora', N'http://dummyimage.com/134x100.png/cc0000/ffffff', N'41-6974002', 0, 4, 240, N'Institute of Management Sciences, Peshawar', 9176, 36)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (18, N'Zatoichi', N'http://dummyimage.com/113x100.png/cc0000/ffffff', N'43-5719383', 1, 2, 260, N'Bethany College Kansas', 10187, 3)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (19, N'Mike Bassett: England Manager', N'http://dummyimage.com/207x100.png/ff4444/ffffff', N'74-1630704', 2, 4, 280, N'Staatlich anerkannte Fachhochschule für Kunsttherapie', 11298, 55)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (20, N'Kids Return (Kizzu ritân)', N'http://dummyimage.com/135x100.png/ff4444/ffffff', N'12-3481557', 2, 4, 0, N'Mahsa University College for Health and Medical Science', 12309, 14)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (21, N'Moon of the Wolf', N'http://dummyimage.com/195x100.png/dddddd/000000', N'35-4930469', 2, 1, 300, N'Friedrich-Schiller Universität Jena', 13420, 1)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (22, N'Notorious Landlady, The', N'http://dummyimage.com/197x100.png/5fa2dd/ffffff', N'98-6110781', 2, 3, 320, N'Brigham Young University', 14531, 47)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (23, N'Mantle', N'http://dummyimage.com/231x100.png/5fa2dd/ffffff', N'62-9980148', 2, 3, 340, N'Asia Pacific Institute of Information Technology (APIIT)', 15642, 39)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (24, N'People vs. George Lucas, The', N'http://dummyimage.com/129x100.png/ff4444/ffffff', N'06-8011701', 0, 3, 360, N'Tarlac State University', 16753, 22)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (25, N'Flight That Fought Back, The', N'http://dummyimage.com/117x100.png/ff4444/ffffff', N'49-5802922', 1, 4, 0, N'Agricultural University of Lublin', 17864, 60)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (26, N'Separation City', N'http://dummyimage.com/106x100.png/ff4444/ffffff', N'82-6472347', 1, 1, 380, N'Universität Hohenheim', 18975, 41)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (27, N'House Party', N'http://dummyimage.com/222x100.png/dddddd/000000', N'99-0078884', 2, 4, 400, N'University Konstantina Filozov in Nitra', 20086, 19)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (28, N'Train on the Brain', N'http://dummyimage.com/205x100.png/cc0000/ffffff', N'56-7539627', 1, 1, 420, N'Kermanshah University of Technology', 21197, 10)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (29, N'Head Office', N'http://dummyimage.com/117x100.png/ff4444/ffffff', N'92-0036697', 0, 1, 440, N'Detroit College of Business - Flint', 22308, 33)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (30, N'Kramer vs. Kramer', N'http://dummyimage.com/225x100.png/ff4444/ffffff', N'71-5492593', 2, 4, 0, N'Murdoch University', 23419, 20)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (31, N'Numb', N'http://dummyimage.com/108x100.png/ff4444/ffffff', N'81-9410974', 1, 2, 460, N'Ecole Nationale Supérieure des Mines d''Alès', 24530, 7)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (32, N'Secret Beyond the Door', N'http://dummyimage.com/156x100.png/5fa2dd/ffffff', N'72-8363171', 1, 2, 480, N'Asia Europe University', 25641, 53)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (33, N'Radio Flyer', N'http://dummyimage.com/132x100.png/cc0000/ffffff', N'17-7402064', 0, 3, 500, N'University of Portland', 26752, 25)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (34, N'Boogie-Doodle', N'http://dummyimage.com/164x100.png/5fa2dd/ffffff', N'69-6060813', 2, 3, 520, N'Universidad Autónoma de Santa Ana', 27863, 2)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (35, N'Upswing (Nousukausi)', N'http://dummyimage.com/172x100.png/dddddd/000000', N'12-6961424', 2, 2, 0, N'Guangxi Medical University', 28974, 46)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (36, N'Hangover Part II, The', N'http://dummyimage.com/132x100.png/cc0000/ffffff', N'19-4982846', 0, 2, 540, N'Leiden University', 30085, 12)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (37, N'Old Joy', N'http://dummyimage.com/184x100.png/5fa2dd/ffffff', N'78-7002250', 2, 2, 560, N'Tarleton State University', 31196, 40)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (38, N'Happiness', N'http://dummyimage.com/234x100.png/cc0000/ffffff', N'03-6970410', 2, 3, 580, N'New World University', 32307, 27)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (39, N'10 Years', N'http://dummyimage.com/120x100.png/ff4444/ffffff', N'55-5824437', 1, 1, 600, N'Universitas Pembangunan Panca Budi', 33418, 13)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (40, N'Fantastic Mr. Fox', N'http://dummyimage.com/197x100.png/ff4444/ffffff', N'87-3412934', 0, 2, 0, N'Xi''an Highway University', 34529, 34)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (41, N'Blue Dahlia, The', N'http://dummyimage.com/213x100.png/cc0000/ffffff', N'40-2873073', 2, 3, 620, N'National Yunlin University of Science and Technology', 35640, 58)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (42, N'Melissa P.', N'http://dummyimage.com/157x100.png/cc0000/ffffff', N'33-0048669', 1, 1, 640, N'Royal Danish Academy of Fine Arts, School of Visual Art', 36751, 4)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (43, N'I''m Not Scared (Io non ho paura)', N'http://dummyimage.com/213x100.png/ff4444/ffffff', N'63-5907024', 1, 4, 660, N'Canakkale (18th March) University', 37862, 30)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (44, N'Nude Bomb, The', N'http://dummyimage.com/156x100.png/cc0000/ffffff', N'40-1802803', 0, 3, 680, N'Jodhpur National University', 38973, 54)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (45, N'Desperate Living', N'http://dummyimage.com/104x100.png/ff4444/ffffff', N'39-4533475', 0, 1, 0, N'Tokyo Women''s College of Physical Education', 40084, 16)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (46, N'Deliver Us From Evil', N'http://dummyimage.com/176x100.png/cc0000/ffffff', N'21-7933382', 2, 3, 700, N'Sophia University', 41195, 50)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (47, N'Stephen Fry In America - New World', N'http://dummyimage.com/205x100.png/ff4444/ffffff', N'96-2733392', 0, 2, 720, N'Ludwig-Maximilians-Universität München', 42306, 38)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (48, N'House of the Dead, The', N'http://dummyimage.com/106x100.png/dddddd/000000', N'97-3181569', 0, 4, 740, N'Cheljabinsk State Institute of Teacher Training', 43417, 5)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (49, N'Your Sister''s Sister', N'http://dummyimage.com/235x100.png/ff4444/ffffff', N'42-4702379', 0, 4, 760, N'Rusangu University', 44528, 35)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (50, N'Cure for Love, A (Lekarstwo na milosc)', N'http://dummyimage.com/136x100.png/dddddd/000000', N'67-9320010', 1, 2, 0, N'Asian Management Institute', 45639, 8)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (51, N'Pixote', N'http://dummyimage.com/215x100.png/cc0000/ffffff', N'97-1807681', 1, 2, 780, N'Fachhochschule Braunschweig/Wolfenbüttel', 46750, 49)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (52, N'Two-Minute Warning', N'http://dummyimage.com/191x100.png/dddddd/000000', N'05-8818406', 0, 3, 800, N'Khulna University of Engineering And Technology', 47861, 59)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (53, N'I Know What You Did Last Summer', N'http://dummyimage.com/157x100.png/5fa2dd/ffffff', N'19-7312913', 1, 3, 820, N'Westfälische Wilhelms-Universität Münster', 48972, 17)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (54, N'The Clinic', N'http://dummyimage.com/125x100.png/ff4444/ffffff', N'77-7168774', 2, 2, 840, N'Western State University College of Law', 50083, 26)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (55, N'Norwegian Wood (Noruwei no mori)', N'http://dummyimage.com/128x100.png/5fa2dd/ffffff', N'25-5350396', 0, 2, 0, N'Higher School of Psychology', 51194, 42)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (56, N'Welcome to Woop-Woop', N'http://dummyimage.com/241x100.png/dddddd/000000', N'75-2633780', 0, 1, 860, N'Universidad de Puerto Rico, Rio Pedras', 52305, 44)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (57, N'Rookie of the Year', N'http://dummyimage.com/150x100.png/dddddd/000000', N'82-9643901', 2, 4, 880, N'University of Applied Sciences of Moldova', 53416, 24)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (58, N'Vacuuming Completely Nude in Paradise', N'http://dummyimage.com/112x100.png/ff4444/ffffff', N'21-0140422', 1, 4, 900, N'Capital University Law School', 54527, 56)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (59, N'Black Camel, The (Charlie Chan in the Black Camel)', N'http://dummyimage.com/215x100.png/cc0000/ffffff', N'52-8568762', 0, 4, 920, N'Njala University', 55638, 32)
INSERT [dbo].[Course] ([CouseraID], [Name], [Image], [Description], [Status], [Category_categoryID], [Feestatus], [Introduce], [OriginalPrice], [UserId_User]) VALUES (60, N'Reign of Assassins', N'http://dummyimage.com/156x100.png/dddddd/000000', N'57-7550139', 1, 1, 940, N'Virginia Wesleyan College', 56749, 51)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (1, N'Học được gì trong khóa học?', 1, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Galah', CAST(N'2023-10-10T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (2, N'HTML CSS là gì?', 1, N'https://www.youtube.com/embed/zwsPND378OQ?si=4ahTd1ley_YW6gJR', N'Snowy egret', CAST(N'2024-03-13T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (3, N'Làm quen với Dev tools', 1, N'https://www.youtube.com/embed/7BJiPyN4zZ0?si=6YXbpaA0QAF2lcH8', N'Square-lipped rhinoceros', CAST(N'2023-08-08T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (4, N'Cài đặt môi trường, công cụ cần thiết để bắt đầ học HTML CSS', 1, N'https://www.youtube.com/embed/ZotVkQDC6mU?si=xCtvTTrMjT8_AhVK', N'Rufous tree pie', CAST(N'2023-06-07T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (5, N'Cấu trúc file HTML', 1, N'https://www.youtube.com/embed/LYnrFSGLCl8?si=5jH7-N-0-5kUQH2X', N'Gray duiker', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (6, N'Into the Wild', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Goose, canada', CAST(N'2024-06-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (7, N'Imaginary Heroes', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-fronted bee-eater', CAST(N'2023-12-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (8, N'Seven Up!', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wombat, common', CAST(N'2024-02-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (9, N'Emmett''s Mark', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lappet-faced vulture', CAST(N'2023-12-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (10, N'Catacombs', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Fowl, helmeted guinea', CAST(N'2023-11-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (11, N'Gimme Shelter', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Praying mantis (unidentified)', CAST(N'2024-04-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (12, N'Gridiron Gang', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Dark-winged trumpeter', CAST(N'2024-05-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (13, N'Gambit', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Brush-tailed bettong', CAST(N'2023-10-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (14, N'Homer & Eddie', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Grouse, greater sage', CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (15, N'Joan of Arc', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Deer, spotted', CAST(N'2023-10-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (16, N'Batman: Assault on Arkham', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Barbet, levaillant''s', CAST(N'2024-02-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (17, N'House, The (A Casa)', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Phalarope, northern', CAST(N'2023-07-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (18, N'War Is Over, The (Guerre est finie, La)', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Indian leopard', CAST(N'2024-06-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (19, N'Eye Above the Well, The (Het oog boven de put)', 52, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Blue-tongued skink', CAST(N'2023-09-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (20, N'Prime Cut', 5, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Hyena, spotted', CAST(N'2023-10-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (21, N'Late Show, The', 32, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Western pygmy possum', CAST(N'2024-05-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (22, N'Princess for Christmas, A', 5, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Bushbuck', CAST(N'2023-06-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (23, N'Murder in Greenwich', 5, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Ibis, puna', CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (24, N'One to Another (Chacun sa nuit)', 21, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mandras tree shrew', CAST(N'2023-12-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (25, N'Presidentintekijät', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Amazon parrot (unidentified)', CAST(N'2024-03-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (26, N'Kill Bill: Vol. 2', 60, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Eurasian beaver', CAST(N'2023-12-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (27, N'Grandfather, The (Abuelo, El)', 53, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Golden jackal', CAST(N'2023-08-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (28, N'Pecker', 16, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Raven, white-necked', CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (29, N'Hot Tub Time Machine', 58, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Black-winged stilt', CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (30, N'I Hope They Serve Beer in Hell', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-eye, cape', CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (31, N'Philomena', 33, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Indian star tortoise', CAST(N'2023-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (32, N'Nada Gang, The (Nada)', 50, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Camel, dromedary', CAST(N'2023-11-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (33, N'Real Women Have Curves', 10, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lion, african', CAST(N'2023-09-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (34, N'Libre échange', 55, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Southern hairy-nosed wombat', CAST(N'2023-12-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (35, N'Let It Snow', 56, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Coot, red-knobbed', CAST(N'2023-09-19T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (36, N'Disco and Atomic War (Disko ja tuumas?da)', 59, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Yellow-necked spurfowl', CAST(N'2024-01-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (37, N'Grandmother', 45, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Creeper, black-tailed tree', CAST(N'2024-01-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (38, N'Mrs. Henderson Presents', 32, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Cat, cape wild', CAST(N'2024-03-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (39, N'North Star, The', 16, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Cat, civet', CAST(N'2024-01-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (40, N'Partly Cloudy', 41, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Kirk''s dik dik', CAST(N'2023-07-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (41, N'Return with Honor', 45, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Zorro, azara''s', CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (42, N'Target', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mynah, common', CAST(N'2023-10-31T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (43, N'Parallel Sons', 53, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mouflon', CAST(N'2023-07-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (44, N'Kung Fu Panda: Secrets of the Furious Five', 50, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gull, silver', CAST(N'2024-03-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (45, N'Jason Becker: Not Dead Yet', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Porcupine, prehensile-tailed', CAST(N'2024-05-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (46, N'Alone in the Wilderness', 28, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Jacana, african', CAST(N'2023-10-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (47, N'Main Hoon Na', 29, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lion, asian', CAST(N'2024-02-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (48, N'Lisa Picard is Famous (a.k.a. Famous)', 14, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Roller, lilac-breasted', CAST(N'2023-07-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (49, N'My Beautiful Laundrette', 51, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Purple grenadier', CAST(N'2023-12-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (50, N'Rockers', 24, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Otter, african clawless', CAST(N'2024-03-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (51, N'Comments trong HTML', 1, N'https://www.youtube.com/embed/JG0pdfdKjgQ?si=hqVwl_olPRurYYMm', N'Rhesus monkey', CAST(N'2023-12-29T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (52, N'The Body', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Eagle, long-crested hawk', CAST(N'2023-09-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (53, N'Guys and Dolls', 54, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mongoose, yellow', CAST(N'2023-06-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (54, N'Sand Pebbles, The', 7, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Small-toothed palm civet', CAST(N'2023-08-31T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (55, N'Screamtime', 57, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Dolphin, striped', CAST(N'2024-03-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (56, N'Bikini Spring Break (Revenge of the Nerds'' Bikini Spring Break)', 32, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Porcupine, prehensile-tailed', CAST(N'2024-02-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (57, N'Lawless Range', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Whip-tailed wallaby', CAST(N'2023-10-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (58, N'Erin Brockovich', 50, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Cook''s tree boa', CAST(N'2024-01-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (59, N'Not for or Against (Quite the Contrary) (Ni pour, ni contre (bien au contraire))', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Large-eared bushbaby', CAST(N'2023-12-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (60, N'Death Becomes Her', 47, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Heron, gray', CAST(N'2024-03-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (61, N'Tony', 39, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Skink, blue-tongued', CAST(N'2024-03-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (62, N'Last of Robin Hood, The', 28, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-faced tree rat', CAST(N'2023-08-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (63, N'Sexual Predator', 31, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Ibis, glossy', CAST(N'2024-02-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (64, N'Eighth Day, The (Huitième jour, Le)', 23, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Brindled gnu', CAST(N'2024-02-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (65, N'Coriolanus', 27, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wallaby, euro', CAST(N'2023-11-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (66, N'Swan, The', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Turkey, australian brush', CAST(N'2023-06-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (67, N'Teenage Paparazzo', 53, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Swallow (unidentified)', CAST(N'2024-01-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (69, N'Eye of the Beholder', 29, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Long-billed corella', CAST(N'2024-01-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (70, N'Alyce Kills', 21, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Red-shouldered glossy starling', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (71, N'Lego: The Adventures of Clutch Powers', 22, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-throated toucan', CAST(N'2024-01-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (72, N'Last Days in Vietnam', 37, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Tarantula, salmon pink bird eater', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (73, N'Poltergeist III', 16, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Giant armadillo', CAST(N'2023-09-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (74, N'Waterboy, The', 38, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Water monitor', CAST(N'2023-07-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (75, N'Let the Right One In (Låt den rätte komma in)', 18, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Badger, eurasian', CAST(N'2023-12-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (76, N'Jonestown: The Life and Death of Peoples Temple', 8, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Eastern boa constrictor', CAST(N'2024-05-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (77, N'Bad Girls Go To Hell', 34, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Common pheasant', CAST(N'2024-01-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (78, N'Bleak Moments', 47, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Admiral, indian red', CAST(N'2023-11-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (79, N'And Now My Love (Toute une vie)', 8, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Squirrel, richardson''s ground', CAST(N'2023-10-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (80, N'Don''t Make Waves', 58, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Short-nosed bandicoot', CAST(N'2023-08-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (81, N'Hit List, The', 22, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Blue racer', CAST(N'2024-04-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (82, N'Tobor the Great', 52, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Eagle, bateleur', CAST(N'2024-02-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (83, N'Documentarian', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Phalarope, red', CAST(N'2024-05-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (84, N'Student of the Year', 18, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Vulture, white-rumped', CAST(N'2023-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (85, N'Ravenous', 28, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Woodchuck', CAST(N'2023-07-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (86, N'Motivation, The', 41, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Capuchin, white-fronted', CAST(N'2024-04-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (87, N'Softening of the Egg, The (Ägget är löst!)', 19, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Bat, asian false vampire', CAST(N'2023-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (88, N'Sunshine Cleaning', 34, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Topi', CAST(N'2023-10-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (89, N'Tupac: Resurrection', 12, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Coyote', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (90, N'Conqueror, The', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Otter, cape clawless', CAST(N'2023-10-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (91, N'Remington and the Curse of the Zombadings', 60, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gull, kelp', CAST(N'2023-08-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (92, N'Henry V', 41, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Blesbok', CAST(N'2023-10-06T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (93, N'Cruel Intentions', 21, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Fox, silver-backed', CAST(N'2023-08-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (94, N'Nine Lives', 48, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Macaque, pig-tailed', CAST(N'2024-04-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (95, N'Elevator', 17, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Bonnet macaque', CAST(N'2023-08-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (96, N'The Care Bears Adventure in Wonderland', 11, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Chipmunk, least', CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (97, N'Riders', 9, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Brolga crane', CAST(N'2023-12-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (98, N'Marvel One-Shot: Item 47', 57, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lizard, giant girdled', CAST(N'2023-08-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (99, N'Allegheny Uprising', 44, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wild boar', CAST(N'2023-09-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (100, N'Những thẻ HTML thông dụng', 1, N'https://www.youtube.com/embed/AzmdwZ6e_aM?si=5-Q5IsPfdNFeMa0E', N'Bent-toed gecko', CAST(N'2024-02-16T00:00:00.000' AS DateTime), 7, 2)
GO
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (101, N'Beau Geste', 42, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Giant anteater', CAST(N'2023-11-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (102, N'Noroi: The Curse ', 14, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gull, herring', CAST(N'2024-04-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (103, N'Duel', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Bunting, crested', CAST(N'2023-11-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (104, N'Hannah Montana: The Movie', 23, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Coot, red-knobbed', CAST(N'2023-07-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (105, N'Third Man, The', 14, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Badger, honey', CAST(N'2024-05-31T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (106, N'Antitrust', 26, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Pine snake (unidentified)', CAST(N'2023-08-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (107, N'Johnny Apollo', 38, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Elk, Wapiti', CAST(N'2023-11-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (108, N'Pool, The', 40, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wolf, timber', CAST(N'2024-01-08T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (109, N'De la servitude moderne', 52, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Common duiker', CAST(N'2024-01-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (110, N'From the Terrace', 16, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Yellow-billed hornbill', CAST(N'2024-02-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (111, N'Excuse Me Darling, But Lucas Loved Me', 60, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Greater sage grouse', CAST(N'2023-11-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (112, N'Islands in the Stream', 22, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Stork, white', CAST(N'2023-08-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (113, N'Pokémon Heroes', 7, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Blue catfish', CAST(N'2024-04-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (114, N'Christmas Story (Joulutarina)', 21, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Zebra, common', CAST(N'2023-10-31T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (115, N'Keeping the Promise (Sign of the Beaver, The)', 34, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Fowl, helmeted guinea', CAST(N'2023-06-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (116, N'The Count of Monte Cristo', 11, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Rat, desert kangaroo', CAST(N'2024-03-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (117, N'From Dusk Till Dawn 2: Texas Blood Money ', 54, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Monster, gila', CAST(N'2023-06-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (118, N'Hallelujah!', 44, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lizard (unidentified)', CAST(N'2023-06-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (119, N'My Father''s Glory (La gloire de mon père)', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Cobra (unidentified)', CAST(N'2024-01-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (120, N'He Knows You''re Alone (a.k.a. Blood Wedding)', 47, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Stork, european', CAST(N'2023-07-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (121, N'Cameraman''s Revenge, The (Mest kinematograficheskogo operatora)', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Lory, rainbow', CAST(N'2024-04-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (122, N'Tank on the Moon', 53, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Bushbaby, large-eared', CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (123, N'The Hornet''s Nest', 13, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Red-billed hornbill', CAST(N'2023-07-19T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (124, N'Starbuck', 10, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Tailless tenrec', CAST(N'2024-03-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (125, N'Zigeunerweisen (Tsigoineruwaizen)', 15, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Dragon, western bearded', CAST(N'2024-05-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (126, N'Octane', 28, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Tinamou, elegant crested', CAST(N'2024-03-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (127, N'Top Floor Left Wing (Dernier étage gauche gauche)', 49, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Civet (unidentified)', CAST(N'2023-06-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (128, N'Bonnie and Clyde', 23, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Barrows goldeneye', CAST(N'2023-08-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (129, N'Live and Let Die', 11, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wapiti, elk,', CAST(N'2023-08-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (130, N'Foreigner, The', 6, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Red-tailed wambenger', CAST(N'2024-05-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (131, N'CBGB', 56, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Crested screamer', CAST(N'2024-01-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (132, N'My Best Friend''s Wife', 59, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Black and white colobus', CAST(N'2024-02-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (133, N'Dark Dungeons', 47, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Fox, crab-eating', CAST(N'2024-02-19T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (134, N'Afghan Luke', 46, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Stork, white-necked', CAST(N'2023-08-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (135, N'71: Into The Fire (Pohwasogeuro)', 58, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Common brushtail possum', CAST(N'2023-07-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (136, N'In Your Dreams (Dans tes rêves)', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gray heron', CAST(N'2023-11-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (137, N'Super Size Me', 42, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Black-tailed tree creeper', CAST(N'2023-12-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (138, N'It''s Kind of a Funny Story', 58, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Wolf, timber', CAST(N'2024-03-24T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (139, N'Cuenca Crime, The (Crimen de Cuenca, El)', 28, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gull, kelp', CAST(N'2024-04-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (140, N'Jungle Man-Eaters', 45, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Toucan, white-throated', CAST(N'2023-09-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (141, N'Bed & Board (Domicile conjugal)', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Vulture, lappet-faced', CAST(N'2023-12-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (142, N'Smashed', 34, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Blue catfish', CAST(N'2023-11-25T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (143, N'Don Quixote (Don Quijote de Orson Welles)', 30, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-throated monitor', CAST(N'2023-06-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (144, N'Paradise Alley', 22, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Hornbill, red-billed', CAST(N'2023-12-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (145, N'49 Up', 49, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Chital', CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (146, N'Swamp Thing', 23, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Meerkat, red', CAST(N'2024-04-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (147, N'Pickpocket', 48, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Gerenuk', CAST(N'2024-04-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (148, N'Torrente 2: Misión Marbella', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Southern lapwing', CAST(N'2023-10-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (149, N'Twice in a Lifetime', 13, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Thomson''s gazelle', CAST(N'2024-04-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (150, N'Ivan the Terrible, Part One (Ivan Groznyy I)', 10, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Arctic fox', CAST(N'2024-05-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (151, N'The Hunchback of Paris', 53, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Stork, marabou', CAST(N'2024-04-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (152, N'Sphinx', 9, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Green-winged macaw', CAST(N'2024-03-19T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (153, N'Between Miracles', 22, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Eastern quoll', CAST(N'2023-08-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (154, N'Tadpole', 35, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Northern elephant seal', CAST(N'2024-04-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (155, N'Calling Dr. Death', 36, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Greater flamingo', CAST(N'2024-05-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (156, N'Evidence ', 3, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Emerald green tree boa', CAST(N'2024-01-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (157, N'Original Kings of Comedy, The', 12, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Beaver, american', CAST(N'2023-07-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (158, N'Happiness', 29, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Pied kingfisher', CAST(N'2023-07-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (159, N'In Country', 30, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Giant otter', CAST(N'2023-09-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (160, N'Cairo Station (a.k.a. Iron Gate, The) (Bab el hadid)', 12, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Langur, hanuman', CAST(N'2023-06-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (161, N'Crow, The', 31, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Brocket, red', CAST(N'2024-03-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (162, N'Bad Boys', 12, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Deer, white-tailed', CAST(N'2023-08-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (163, N'Thunderbolt and Lightfoot', 54, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Raccoon dog', CAST(N'2023-10-17T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (164, N'Inkwell, The', 43, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Caracara, yellow-headed', CAST(N'2023-09-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (165, N'I Bought a Vampire Motorcycle', 30, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'African wild dog', CAST(N'2023-06-28T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (166, N'Hamlet', 16, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Ground monitor (unidentified)', CAST(N'2024-01-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (167, N'Monkeybone', 38, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mouflon', CAST(N'2023-11-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (168, N'Three Stars', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Common goldeneye', CAST(N'2023-09-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (169, N'Jayne Mansfield''s Car', 4, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-necked raven', CAST(N'2023-11-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (170, N'Double Dynamite', 41, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Little grebe', CAST(N'2024-02-06T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (171, N'Remonstrance', 25, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Common dolphin', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (172, N'Seven Thieves', 33, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Mockingbird, galapagos', CAST(N'2023-10-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (173, N'American Nightmare, The', 11, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Kangaroo, eastern grey', CAST(N'2023-12-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (174, N'The Mountain of the Cannibal God', 34, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Javanese cormorant', CAST(N'2023-08-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (175, N'Love Without Pity', 11, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Spur-winged goose', CAST(N'2024-05-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (176, N'Unknown Soldier, The (Tuntematon sotilas)', 50, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Galapagos hawk', CAST(N'2023-12-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (177, N'Goemon', 41, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Polar bear', CAST(N'2024-04-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (178, N'Gozu (Gokudô kyôfu dai-gekijô: Gozu)', 2, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Southern ground hornbill', CAST(N'2023-07-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (179, N'Come and Get It', 10, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'American buffalo', CAST(N'2024-03-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (180, N'Blended', 52, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'White-bellied sea eagle', CAST(N'2023-08-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (181, N'Marius', 10, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Colobus, black and white', CAST(N'2024-05-13T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (182, N'Blood: The Last Vampire', 45, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Crane, stanley', CAST(N'2023-07-27T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (183, N'Fruitcake', 60, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Langur, gray', CAST(N'2023-10-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (184, N'Holokaustin värit', 26, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Starling, greater blue-eared', CAST(N'2023-08-18T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (185, N'New Life, A (La vie nouvelle)', 47, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Pintail, bahama', CAST(N'2023-07-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (186, N'Joy Luck Club, The', 33, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Scottish highland cow', CAST(N'2023-11-23T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (187, N'Five Minarets in New York (Act of Vengeance) (Terrorist, The)', 23, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Pheasant, common', CAST(N'2024-02-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (188, N'Microcosmos (Microcosmos: Le peuple de l''herbe)', 39, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Cat, long-tailed spotted', CAST(N'2023-12-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (189, N'Codebreaker', 49, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Duck, blue', CAST(N'2023-07-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Lesson] ([LessonID], [Title], [Course_courseID], [Video], [Note], [Time], [NumberLesson], [QuizId_Quiz]) VALUES (190, N'Ted Bundy', 18, N'https://www.youtube.com/embed/R6plN3FvzFY?si=nbY9tsEyTujPeAMc', N'Chimpanzee', CAST(N'2023-06-18T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([QuestionId], [QuestionText], [QuizId_Quiz]) VALUES (1, N'HTML là viết tắt của từ gì?', 2)
INSERT [dbo].[Question] ([QuestionId], [QuestionText], [QuizId_Quiz]) VALUES (2, N'Thẻ HTML nào dùng để tạo một đoạn văn bản?', 2)
INSERT [dbo].[Question] ([QuestionId], [QuestionText], [QuizId_Quiz]) VALUES (3, N'Thẻ HTML nào dùng để tạo một liên kết?', 2)
INSERT [dbo].[Question] ([QuestionId], [QuestionText], [QuizId_Quiz]) VALUES (4, N'Thẻ HTML nào dùng để chèn hình ảnh vào trang web?', 2)
INSERT [dbo].[Question] ([QuestionId], [QuestionText], [QuizId_Quiz]) VALUES (5, N'Thuộc tính nào của thẻ <a> dùng để xác định URL của trang mà liên kết sẽ dẫn đến?', 2)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([Quizid], [Title]) VALUES (1, N'')
INSERT [dbo].[Quiz] ([Quizid], [Title]) VALUES (2, N'Exam Multiple-choice')
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[statusUser] ON 

INSERT [dbo].[statusUser] ([statusUserId], [Name]) VALUES (1, N'Unregistered')
INSERT [dbo].[statusUser] ([statusUserId], [Name]) VALUES (2, N'Registered')
INSERT [dbo].[statusUser] ([statusUserId], [Name]) VALUES (3, N'Ban')
SET IDENTITY_INSERT [dbo].[statusUser] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (1, N'esommerland0@yolasite.com', N'530-490-3293', N'Evvie Sommerland', N'http://dummyimage.com/221x100.png/cc0000/ffffff', CAST(N'2023-06-26' AS Date), N'46637 Drewry Point', N'191.188.74.204/15', 2, N'338', 2, N'NewUsername1', N'NewHashedPassword1')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (2, N'hwathan1@washington.edu', N'677-840-7098', N'Hendrick Wathan', N'http://dummyimage.com/182x100.png/dddddd/000000', CAST(N'2023-11-29' AS Date), N'777 Corry Circle', N'85.44.95.173/5', 1, N'55', 2, N'NewUsername2', N'NewHashedPassword2')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (3, N'ctilbrook2@ovh.net', N'148-478-3891', N'Crosby Tilbrook', N'http://dummyimage.com/191x100.png/ff4444/ffffff', CAST(N'2024-03-31' AS Date), N'89909 Troy Avenue', N'184.131.130.252/9', 2, N'0', 3, N'NewUsername3', N'NewHashedPassword3')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (4, N'scongrave3@surveymonkey.com', N'110-650-6443', N'Sidonia Congrave', N'http://dummyimage.com/116x100.png/dddddd/000000', CAST(N'2023-08-14' AS Date), N'6836 Jenna Plaza', N'55.235.76.243/6', 3, N'21251', 2, N'NewUsername4', N'NewHashedPassword4')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (5, N'flivens4@example.com', N'295-985-3397', N'Freddi Livens', N'http://dummyimage.com/169x100.png/5fa2dd/ffffff', CAST(N'2024-05-11' AS Date), N'34051 Spenser Hill', N'13.178.221.241/15', 3, N'086', 2, N'NewUsername5', N'NewHashedPassword5')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (6, N'jburbridge5@photobucket.com', N'178-452-5935', N'Justen Burbridge', N'http://dummyimage.com/150x100.png/cc0000/ffffff', CAST(N'2024-04-11' AS Date), N'971 Warner Parkway', N'228.129.13.215/28', 2, N'2626', 2, N'NewUsername6', N'NewHashedPassword6')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (7, N'eschurcke6@nytimes.com', N'593-315-8671', N'Eleni Schurcke', N'http://dummyimage.com/243x100.png/dddddd/000000', CAST(N'2023-08-19' AS Date), N'455 Commercial Plaza', N'102.221.13.129/26', 1, N'1', 2, N'NewUsername7', N'NewHashedPassword7')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (8, N'dbarbrick7@jugem.jp', N'985-719-6908', N'Deane Barbrick', N'http://dummyimage.com/237x100.png/dddddd/000000', CAST(N'2023-10-03' AS Date), N'6 Southridge Street', N'205.234.109.182/15', 2, N'238', 2, N'NewUsername8', N'NewHashedPassword8')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (9, N'aingerson8@godaddy.com', N'789-426-1370', N'Andie Ingerson', N'http://dummyimage.com/155x100.png/dddddd/000000', CAST(N'2023-09-13' AS Date), N'73 Mitchell Park', N'204.158.143.82/2', 1, N'5338', 2, N'NewUsername9', N'NewHashedPassword9')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (10, N'mavrasin9@nature.com', N'233-664-4409', N'Madonna Avrasin', N'http://dummyimage.com/179x100.png/ff4444/ffffff', CAST(N'2023-07-03' AS Date), N'38 Center Park', N'42.191.202.146/15', 3, N'7853', 2, N'NewUsername10', N'NewHashedPassword10')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (11, N'jmewtona@themeforest.net', N'909-775-9716', N'Julietta Mewton', N'http://dummyimage.com/131x100.png/dddddd/000000', CAST(N'2024-04-16' AS Date), N'57 Bluestem Crossing', N'45.74.144.121/16', 3, N'82647', 2, N'NewUsername11', N'NewHashedPassword11')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (12, N'kcumberlandb@google.cn', N'625-383-9972', N'Kerrie Cumberland', N'http://dummyimage.com/225x100.png/cc0000/ffffff', CAST(N'2024-02-18' AS Date), N'54345 Fairview Way', N'223.59.37.187/12', 2, N'39', 2, N'NewUsername12', N'NewHashedPassword12')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (13, N'bfredyc@youtu.be', N'328-721-3570', N'Billye Fredy', N'http://dummyimage.com/138x100.png/5fa2dd/ffffff', CAST(N'2023-12-23' AS Date), N'800 Swallow Circle', N'50.8.178.162/5', 2, N'594', 2, N'NewUsername13', N'NewHashedPassword13')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (14, N'mjosefsend@webnode.com', N'150-936-8408', N'Myer Josefsen', N'http://dummyimage.com/115x100.png/5fa2dd/ffffff', CAST(N'2023-09-30' AS Date), N'1 Scofield Point', N'197.204.87.35/7', 1, N'393', 2, N'NewUsername14', N'NewHashedPassword14')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (15, N'chassere@phpbb.com', N'860-175-4757', N'Cindy Hasser', N'http://dummyimage.com/240x100.png/ff4444/ffffff', CAST(N'2024-03-08' AS Date), N'5 Forster Lane', N'163.17.87.168/11', 2, N'16', 2, N'NewUsername15', N'NewHashedPassword15')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (16, N'fmarzellanof@bloomberg.com', N'208-309-3404', N'Faith Marzellano', N'http://dummyimage.com/206x100.png/5fa2dd/ffffff', CAST(N'2024-04-17' AS Date), N'2 American Point', N'140.59.185.240/5', 1, N'44929', 3, N'NewUsername16', N'NewHashedPassword16')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (17, N'aeatttokg@usnews.com', N'752-788-2132', N'Alyce Eatttok', N'http://dummyimage.com/193x100.png/dddddd/000000', CAST(N'2023-10-11' AS Date), N'1 Union Street', N'14.225.108.93/14', 3, N'54', 1, N'NewUsername17', N'NewHashedPassword17')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (18, N'mloraineh@freewebs.com', N'968-105-2110', N'Michel Loraine', N'http://dummyimage.com/171x100.png/ff4444/ffffff', CAST(N'2023-07-14' AS Date), N'50 Crownhardt Pass', N'85.81.243.24/9', 2, N'62', 2, N'NewUsername18', N'NewHashedPassword18')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (19, N'mspackmani@foxnews.com', N'159-737-7194', N'Minnie Spackman', N'http://dummyimage.com/129x100.png/dddddd/000000', CAST(N'2024-01-30' AS Date), N'4 Algoma Parkway', N'174.254.88.1/30', 1, N'4444', 2, N'NewUsername19', N'NewHashedPassword19')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (20, N'ctullisj@gnu.org', N'142-805-9242', N'Clerissa Tullis', N'http://dummyimage.com/144x100.png/cc0000/ffffff', CAST(N'2023-06-11' AS Date), N'82 Heath Trail', N'231.35.7.35/15', 1, N'9', 2, N'NewUsername20', N'NewHashedPassword20')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (21, N'tshotboultk@home.pl', N'393-108-0406', N'Terence Shotboult', N'http://dummyimage.com/240x100.png/5fa2dd/ffffff', CAST(N'2023-11-07' AS Date), N'5 Buell Pass', N'159.138.27.55/17', 2, N'628', 2, N'NewUsername21', N'NewHashedPassword21')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (22, N'mcruml@godaddy.com', N'441-226-5849', N'Marlane Crum', N'http://dummyimage.com/245x100.png/cc0000/ffffff', CAST(N'2023-07-30' AS Date), N'3020 Eagan Pass', N'117.66.192.44/13', 1, N'42', 1, N'NewUsername22', N'NewHashedPassword22')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (23, N'fandresenm@cargocollective.com', N'674-892-8814', N'Francklin Andresen', N'http://dummyimage.com/104x100.png/dddddd/000000', CAST(N'2024-04-02' AS Date), N'15 Crownhardt Pass', N'194.68.74.129/18', 3, N'2', 2, N'NewUsername23', N'NewHashedPassword23')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (24, N'tspelmann@tinypic.com', N'634-900-4501', N'Teodoor Spelman', N'http://dummyimage.com/193x100.png/5fa2dd/ffffff', CAST(N'2023-11-06' AS Date), N'2 Monterey Parkway', N'97.143.172.99/28', 3, N'189', 2, N'NewUsername24', N'NewHashedPassword24')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (25, N'ealwoodo@vk.com', N'309-115-4562', N'Elinor Alwood', N'http://dummyimage.com/171x100.png/5fa2dd/ffffff', CAST(N'2024-01-12' AS Date), N'96 Johnson Way', N'208.137.218.123/27', 1, N'1444', 2, N'NewUsername25', N'NewHashedPassword25')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (26, N'epashbeep@springer.com', N'377-991-2223', N'Evita Pashbee', N'http://dummyimage.com/169x100.png/dddddd/000000', CAST(N'2024-05-15' AS Date), N'7798 Forster Crossing', N'71.74.157.105/20', 3, N'8656', 2, N'NewUsername26', N'NewHashedPassword26')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (27, N'mbowserq@issuu.com', N'159-445-8436', N'Modesty Bowser', N'http://dummyimage.com/227x100.png/cc0000/ffffff', CAST(N'2024-04-13' AS Date), N'68 Dawn Street', N'124.63.29.178/12', 3, N'5399', 1, N'NewUsername27', N'NewHashedPassword27')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (28, N'volssonr@slashdot.org', N'500-812-3671', N'Valle Olsson', N'http://dummyimage.com/180x100.png/cc0000/ffffff', CAST(N'2023-08-15' AS Date), N'04 Hudson Terrace', N'9.27.28.189/8', 3, N'4023', 2, N'NewUsername28', N'NewHashedPassword28')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (30, N'gmcilmorowt@ustream.tv', N'100-524-3680', N'Gina McIlmorow', N'http://dummyimage.com/228x100.png/ff4444/ffffff', CAST(N'2024-01-15' AS Date), N'9 Bobwhite Crossing', N'228.28.158.225/21', 1, N'83', 2, N'NewUsername30', N'NewHashedPassword30')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (31, N'cspackmanu@ezinearticles.com', N'286-574-3853', N'Charlean Spackman', N'http://dummyimage.com/145x100.png/5fa2dd/ffffff', CAST(N'2024-03-02' AS Date), N'668 Atwood Crossing', N'61.24.237.223/31', 2, N'5', 2, N'NewUsername31', N'NewHashedPassword31')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (32, N'kfranscioniv@trellian.com', N'270-755-8943', N'Karon Franscioni', N'http://dummyimage.com/127x100.png/dddddd/000000', CAST(N'2024-01-10' AS Date), N'02041 Manley Pass', N'42.216.194.199/4', 2, N'544', 2, N'NewUsername32', N'NewHashedPassword32')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (33, N'bzellmerw@wordpress.org', N'384-382-1015', N'Bettye Zellmer', N'http://dummyimage.com/238x100.png/ff4444/ffffff', CAST(N'2024-04-26' AS Date), N'097 Gulseth Drive', N'89.43.218.130/16', 3, N'0067', 3, N'NewUsername33', N'NewHashedPassword33')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (34, N'skennairdx@wikia.com', N'708-956-7530', N'Si Kennaird', N'http://dummyimage.com/139x100.png/ff4444/ffffff', CAST(N'2024-04-22' AS Date), N'0666 Jenna Court', N'147.253.114.118/29', 3, N'1285', 2, N'NewUsername34', N'NewHashedPassword34')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (35, N'rblakdeny@huffingtonpost.com', N'787-855-0291', N'Rois Blakden', N'http://dummyimage.com/149x100.png/dddddd/000000', CAST(N'2024-05-15' AS Date), N'63731 Division Avenue', N'129.136.189.99/9', 2, N'2', 2, N'NewUsername35', N'NewHashedPassword35')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (36, N'vbiddlecombez@shareasale.com', N'388-228-9436', N'Vergil Biddlecombe', N'http://dummyimage.com/150x100.png/dddddd/000000', CAST(N'2024-05-11' AS Date), N'89377 Mosinee Drive', N'103.250.229.94/13', 2, N'193', 2, N'NewUsername36', N'NewHashedPassword36')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (37, N'mellerby10@theguardian.com', N'348-705-3580', N'Matelda Ellerby', N'http://dummyimage.com/216x100.png/dddddd/000000', CAST(N'2024-01-24' AS Date), N'946 Mifflin Lane', N'153.176.71.199/22', 2, N'902', 2, N'NewUsername37', N'NewHashedPassword37')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (38, N'ldumberell11@about.me', N'673-751-4593', N'Lilith Dumberell', N'http://dummyimage.com/212x100.png/5fa2dd/ffffff', CAST(N'2023-08-26' AS Date), N'4 Green Ridge Trail', N'60.32.101.77/6', 2, N'3173', 3, N'NewUsername38', N'NewHashedPassword38')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (39, N'tcristoforetti12@state.gov', N'755-717-9337', N'Travus Cristoforetti', N'http://dummyimage.com/164x100.png/dddddd/000000', CAST(N'2024-04-15' AS Date), N'5303 Dawn Street', N'86.94.188.208/12', 3, N'72', 2, N'NewUsername39', N'NewHashedPassword39')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (40, N'acrocken13@t.co', N'939-819-7318', N'Aleksandr Crocken', N'http://dummyimage.com/109x100.png/dddddd/000000', CAST(N'2024-01-27' AS Date), N'742 Graedel Point', N'80.198.161.62/9', 3, N'27', 2, N'NewUsername40', N'NewHashedPassword40')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (41, N'tbosden14@gmpg.org', N'870-812-5002', N'Tish Bosden', N'http://dummyimage.com/135x100.png/cc0000/ffffff', CAST(N'2023-11-18' AS Date), N'526 Jackson Lane', N'31.54.140.230/3', 1, N'342', 2, N'NewUsername41', N'NewHashedPassword41')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (42, N'pbridat15@techcrunch.com', N'666-123-5181', N'Paolo Bridat', N'http://dummyimage.com/146x100.png/cc0000/ffffff', CAST(N'2024-02-29' AS Date), N'275 Ilene Avenue', N'140.78.74.192/14', 2, N'9', 2, N'NewUsername42', N'NewHashedPassword42')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (43, N'slovemore16@4shared.com', N'573-279-5349', N'Selma Lovemore', N'http://dummyimage.com/150x100.png/dddddd/000000', CAST(N'2024-05-13' AS Date), N'3822 Harbort Hill', N'160.216.185.37/21', 1, N'0', 2, N'NewUsername43', N'NewHashedPassword43')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (44, N'ncaile17@answers.com', N'321-684-9737', N'Nicolas Caile', N'http://dummyimage.com/244x100.png/5fa2dd/ffffff', CAST(N'2023-07-06' AS Date), N'12 Duke Drive', N'131.241.32.227/21', 2, N'32', 2, N'NewUsername44', N'NewHashedPassword44')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (45, N'sleeburne18@ox.ac.uk', N'796-937-5302', N'Sammy Leeburne', N'http://dummyimage.com/118x100.png/cc0000/ffffff', CAST(N'2023-10-28' AS Date), N'7 Moose Way', N'222.108.26.133/16', 1, N'4592', 2, N'NewUsername45', N'NewHashedPassword45')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (46, N'sforte19@ow.ly', N'227-929-3031', N'Sergei Forte', N'http://dummyimage.com/227x100.png/cc0000/ffffff', CAST(N'2023-12-04' AS Date), N'5016 Ohio Street', N'49.153.70.255/9', 1, N'5852', 2, N'NewUsername46', N'NewHashedPassword46')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (47, N'switch1a@youku.com', N'619-518-7080', N'Sonni Witch', N'http://dummyimage.com/163x100.png/cc0000/ffffff', CAST(N'2023-10-12' AS Date), N'50 Shoshone Junction', N'168.33.157.104/9', 3, N'4', 1, N'NewUsername47', N'NewHashedPassword47')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (48, N'hsloley1b@google.com.au', N'921-680-1588', N'Herve Sloley', N'http://dummyimage.com/139x100.png/dddddd/000000', CAST(N'2023-07-31' AS Date), N'47 Arizona Point', N'46.178.192.232/28', 3, N'1296', 2, N'NewUsername48', N'NewHashedPassword48')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (49, N'bdekeyser1c@ted.com', N'636-698-6705', N'Basilio Dekeyser', N'http://dummyimage.com/188x100.png/ff4444/ffffff', CAST(N'2024-01-20' AS Date), N'0 Schurz Lane', N'47.100.17.135/28', 3, N'922', 1, N'NewUsername49', N'NewHashedPassword49')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (50, N'mdonativo1d@devhub.com', N'983-650-9036', N'Maximilien Donativo', N'http://dummyimage.com/116x100.png/ff4444/ffffff', CAST(N'2024-03-19' AS Date), N'7 Charing Cross Court', N'224.247.20.76/10', 2, N'4', 2, N'NewUsername50', N'NewHashedPassword50')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (51, N'phydechambers1e@hubpages.com', N'118-983-2623', N'Peggie Hyde-Chambers', N'http://dummyimage.com/129x100.png/cc0000/ffffff', CAST(N'2023-07-21' AS Date), N'692 Butterfield Drive', N'83.181.128.171/21', 3, N'1774', 2, N'NewUsername51', N'NewHashedPassword51')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (52, N'mpilling1f@senate.gov', N'879-437-0823', N'Marieann Pilling', N'http://dummyimage.com/158x100.png/dddddd/000000', CAST(N'2023-09-12' AS Date), N'096 Buhler Plaza', N'217.240.42.47/26', 3, N'28', 1, N'NewUsername52', N'NewHashedPassword52')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (53, N'kdurban1g@umich.edu', N'888-830-3560', N'Katinka Durban', N'http://dummyimage.com/147x100.png/cc0000/ffffff', CAST(N'2024-02-12' AS Date), N'6 Orin Street', N'159.164.16.233/1', 3, N'82749', 2, N'NewUsername53', N'NewHashedPassword53')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (54, N'rollivier1h@artisteer.com', N'664-371-3820', N'Riane Ollivier', N'http://dummyimage.com/200x100.png/dddddd/000000', CAST(N'2024-05-05' AS Date), N'5175 Buena Vista Park', N'165.131.87.182/1', 2, N'68', 2, N'NewUsername54', N'NewHashedPassword54')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (55, N'lrigg1i@google.co.uk', N'984-637-3457', N'Linet Rigg', N'http://dummyimage.com/223x100.png/cc0000/ffffff', CAST(N'2023-11-26' AS Date), N'4844 6th Avenue', N'98.10.203.21/20', 1, N'162', 2, N'NewUsername55', N'NewHashedPassword55')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (56, N'tmickleburgh1j@google.com.br', N'501-645-6686', N'Teresa Mickleburgh', N'http://dummyimage.com/149x100.png/ff4444/ffffff', CAST(N'2024-05-04' AS Date), N'892 Nancy Alley', N'224.153.111.140/19', 2, N'20743', 2, N'NewUsername56', N'NewHashedPassword56')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (57, N'ibairstow1k@wikispaces.com', N'891-156-6482', N'Ingram Bairstow', N'http://dummyimage.com/192x100.png/5fa2dd/ffffff', CAST(N'2023-09-25' AS Date), N'88 Village Terrace', N'152.163.183.35/31', 3, N'8620', 2, N'NewUsername57', N'NewHashedPassword57')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (58, N'dyouhill1l@yale.edu', N'683-765-5523', N'Doloritas Youhill', N'http://dummyimage.com/162x100.png/ff4444/ffffff', CAST(N'2024-04-21' AS Date), N'6 Ridgeway Junction', N'10.43.121.143/4', 3, N'489', 2, N'NewUsername58', N'NewHashedPassword58')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (59, N'kstrangman1m@desdev.cn', N'895-897-6001', N'Kania Strangman', N'http://dummyimage.com/165x100.png/cc0000/ffffff', CAST(N'2023-07-13' AS Date), N'6 Packers Alley', N'200.19.222.62/6', 2, N'091', 2, N'NewUsername59', N'NewHashedPassword59')
INSERT [dbo].[User] ([UserID], [Email], [Phone], [FullName], [Image], [Dob], [Address], [GmailID], [RoleID], [CodeVerify], [statusUserId], [Username], [Password]) VALUES (60, N'gfattorini1n@51.la', N'467-441-6877', N'Gerianne Fattorini', N'http://dummyimage.com/250x100.png/dddddd/000000', CAST(N'2023-07-03' AS Date), N'7 Sommers Terrace', N'198.87.63.45/21', 1, N'827', 2, N'NewUsername60', N'NewHashedPassword60')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([RoleID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserRole] ([RoleID], [Name]) VALUES (2, N'Teacher')
INSERT [dbo].[UserRole] ([RoleID], [Name]) VALUES (3, N'User')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__statusUser__60A75C0F]  DEFAULT ((0)) FOR [statusUserId]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Question] FOREIGN KEY([QuestionId_Question])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Question]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_BlogTag] FOREIGN KEY([BlogTagID])
REFERENCES [dbo].[BlogTag] ([BlogTagID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_BlogTag]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([Category_categoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_User] FOREIGN KEY([UserId_User])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_User]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Course] FOREIGN KEY([Course_courseID])
REFERENCES [dbo].[Course] ([CouseraID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Course]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Quiz] FOREIGN KEY([QuizId_Quiz])
REFERENCES [dbo].[Quiz] ([Quizid])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Quiz]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Quiz] FOREIGN KEY([QuizId_Quiz])
REFERENCES [dbo].[Quiz] ([Quizid])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Quiz]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_statusUser] FOREIGN KEY([statusUserId])
REFERENCES [dbo].[statusUser] ([statusUserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_statusUser]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[UserRole] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
