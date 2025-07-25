USE [VolunteersDB]
GO
/****** Object:  Table [dbo].[Activitys_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activitys_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[Description] [varchar](100) NULL,
	[Age] [int] NOT NULL,
	[DateAct] [datetime] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Tz] [varchar](20) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApartmentsInActivitys_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApartmentsInActivitys_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[PatientID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[StatusId] [int] NOT NULL,
	[VolunteerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactStatus_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactStatus_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Build] [varchar](25) NULL,
	[Wing] [varchar](25) NULL,
	[FloorNum] [int] NOT NULL,
	[HospitalId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospitals_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospitals_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Manager] [varchar](30) NOT NULL,
	[Tz] [varchar](30) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Phone] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Tz] [varchar](30) NOT NULL,
	[Phone] [varchar](30) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Gender] [varchar](10) NULL,
	[HospitalId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[Password] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presences_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presences_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VolunteerId] [int] NULL,
	[Date] [datetime] NOT NULL,
	[EnterTime] [datetime] NOT NULL,
	[ExitTime] [datetime] NOT NULL,
	[BreakTime] [datetime] NOT NULL,
	[TotalHours] [datetime] NOT NULL,
	[Credits] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteers_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteers_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Tz] [varchar](30) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[Phone] [varchar](30) NOT NULL,
	[Gender] [varchar](10) NULL,
	[HospitalId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VolunteerStatus_tbl]    Script Date: 16/07/2025 11:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VolunteerStatus_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin_tbl] ON 

INSERT [dbo].[Admin_tbl] ([ID], [FirstName], [LastName], [Tz], [Phone], [Password]) VALUES (1, N'מרים ', N'מזור', N'214272577', N'0546251321', N'121212')
INSERT [dbo].[Admin_tbl] ([ID], [FirstName], [LastName], [Tz], [Phone], [Password]) VALUES (2, N'שרה', N'מלול', N'326059748', N'0556668330', N'212121')
SET IDENTITY_INSERT [dbo].[Admin_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts_tbl] ON 

INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (11, N'שיחה ראשונית עם המטופל', 347, CAST(N'2025-02-13T10:30:00.000' AS DateTime), 7, 349)
INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (12, N'מעקב אחרי טיפול', 348, CAST(N'2025-02-12T15:00:00.000' AS DateTime), 8, 349)
INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (13, N'היי שלום אשמח שיבוא לדבר עם הילדה שלי ', 348, CAST(N'2025-03-04T23:38:47.270' AS DateTime), 7, 351)
INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (14, N'עזרה בשימוש טלפון במחשב ', 348, CAST(N'2025-03-04T23:40:18.227' AS DateTime), 7, 351)
INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (15, N'לווי חברתי', 348, CAST(N'2025-03-04T23:40:25.157' AS DateTime), 7, 351)
INSERT [dbo].[Contacts_tbl] ([ID], [Description], [PatientID], [Date], [StatusId], [VolunteerId]) VALUES (16, N'שלום, אשמח שישלחו אלי מתנדב ', 348, CAST(N'2025-03-04T23:53:18.893' AS DateTime), 7, 351)
SET IDENTITY_INSERT [dbo].[Contacts_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactStatus_tbl] ON 

INSERT [dbo].[ContactStatus_tbl] ([ID], [Description]) VALUES (7, N'ממתינה')
INSERT [dbo].[ContactStatus_tbl] ([ID], [Description]) VALUES (8, N'נסגרה')
INSERT [dbo].[ContactStatus_tbl] ([ID], [Description]) VALUES (9, N'ממתינה 2 דק')
INSERT [dbo].[ContactStatus_tbl] ([ID], [Description]) VALUES (10, N'ממתינה 5 דק')
INSERT [dbo].[ContactStatus_tbl] ([ID], [Description]) VALUES (11, N'לא נענתה')
SET IDENTITY_INSERT [dbo].[ContactStatus_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments_tbl] ON 

INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (11, N'מחלקה פנימית', N'A', N'צפון', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (12, N'מחלקה כירורגית', N'A', N'דרום', 2, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (13, N'מחלקת ילדים', N'B', N'מערב', 3, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (14, N'מחלקה גריאטרית', N'B', N'מזרח', 4, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (15, N'מחלקת יולדות', N'C', N'צפון', 5, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (16, N'מחלקת טיפול נמרץ', N'C', N'דרום', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (17, N'מחלקת אורתופדיה', N'D', N'מערב', 2, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (18, N'מחלקה פנימית', N'A', N'צפון', 1, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (19, N'מחלקה כירורגית', N'A', N'דרום', 2, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (20, N'מחלקת ילדים', N'B', N'מערב', 3, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (21, N'מחלקה גריאטרית', N'B', N'מזרח', 4, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (22, N'מחלקת יולדות', N'C', N'צפון', 5, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (23, N'מחלקת טיפול נמרץ', N'C', N'דרום', 1, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (24, N'מחלקת אורתופדיה', N'D', N'מערב', 2, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (25, N'מחלקה פנימית', N'A', N'צפון', 1, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (26, N'מחלקה כירורגית', N'A', N'דרום', 2, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (27, N'מחלקת ילדים', N'B', N'מערב', 3, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (28, N'מחלקה גריאטרית', N'B', N'מזרח', 4, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (29, N'מחלקת יולדות', N'C', N'צפון', 5, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (30, N'מחלקת טיפול נמרץ', N'C', N'דרום', 1, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (31, N'מחלקת אורתופדיה', N'D', N'מערב', 2, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (32, N'מחלקה פנימית', N'A', N'צפון', 1, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (33, N'מחלקה כירורגית', N'A', N'דרום', 2, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (34, N'מחלקת ילדים', N'B', N'מערב', 3, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (35, N'מחלקה גריאטרית', N'B', N'מזרח', 4, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (36, N'מחלקת יולדות', N'C', N'צפון', 5, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (37, N'מחלקת טיפול נמרץ', N'C', N'דרום', 1, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (38, N'מחלקת אורתופדיה', N'D', N'מערב', 2, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (39, N'מחלקה פנימית', N'A', N'צפון', 1, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (40, N'מחלקה כירורגית', N'A', N'דרום', 2, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (41, N'מחלקת ילדים', N'B', N'מערב', 3, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (42, N'מחלקה גריאטרית', N'B', N'מזרח', 4, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (43, N'מחלקת יולדות', N'C', N'צפון', 5, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (44, N'מחלקת טיפול נמרץ', N'C', N'דרום', 1, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (45, N'מחלקת אורתופדיה', N'D', N'מערב', 2, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (46, N'מחלקת עיניים', N'E', N'צפון', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (47, N'מחלקת עור', N'E', N'דרום', 2, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (48, N'מחלקת אף אוזן גרון', N'F', N'מערב', 3, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (49, N'מחלקת שיקום', N'F', N'מזרח', 4, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (50, N'מחלקת נוירולוגיה', N'G', N'צפון', 5, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (51, N'מחלקת המטולוגיה', N'G', N'דרום', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (52, N'מחלקת קרדיולוגיה', N'H', N'מערב', 2, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (53, N'מחלקת אונקולוגיה', N'H', N'מזרח', 3, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (54, N'מחלקת פסיכיאטריה', N'I', N'דרום', 4, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (55, N'מחלקת ריאות', N'I', N'צפון', 5, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (56, N'מחלקת עיניים', N'E', N'צפון', 1, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (57, N'מחלקת עור', N'E', N'דרום', 2, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (58, N'מחלקת אף אוזן גרון', N'F', N'מערב', 3, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (59, N'מחלקת שיקום', N'F', N'מזרח', 4, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (60, N'מחלקת נוירולוגיה', N'G', N'צפון', 5, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (61, N'מחלקת המטולוגיה', N'G', N'דרום', 1, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (62, N'מחלקת קרדיולוגיה', N'H', N'מערב', 2, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (63, N'מחלקת אונקולוגיה', N'H', N'מזרח', 3, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (64, N'מחלקת פסיכיאטריה', N'I', N'דרום', 4, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (65, N'מחלקת ריאות', N'I', N'צפון', 5, 2)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (66, N'מחלקת עיניים', N'E', N'צפון', 1, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (67, N'מחלקת עור', N'E', N'דרום', 2, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (68, N'מחלקת אף אוזן גרון', N'F', N'מערב', 3, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (69, N'מחלקת שיקום', N'F', N'מזרח', 4, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (70, N'מחלקת נוירולוגיה', N'G', N'צפון', 5, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (71, N'מחלקת המטולוגיה', N'G', N'דרום', 1, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (72, N'מחלקת קרדיולוגיה', N'H', N'מערב', 2, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (73, N'מחלקת אונקולוגיה', N'H', N'מזרח', 3, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (74, N'מחלקת פסיכיאטריה', N'I', N'דרום', 4, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (75, N'מחלקת ריאות', N'I', N'צפון', 5, 3)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (76, N'מחלקת עיניים', N'E', N'צפון', 1, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (77, N'מחלקת עור', N'E', N'דרום', 2, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (78, N'מחלקת אף אוזן גרון', N'F', N'מערב', 3, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (79, N'מחלקת שיקום', N'F', N'מזרח', 4, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (80, N'מחלקת נוירולוגיה', N'G', N'צפון', 5, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (81, N'מחלקת המטולוגיה', N'G', N'דרום', 1, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (82, N'מחלקת קרדיולוגיה', N'H', N'מערב', 2, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (83, N'מחלקת אונקולוגיה', N'H', N'מזרח', 3, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (84, N'מחלקת פסיכיאטריה', N'I', N'דרום', 4, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (85, N'מחלקת ריאות', N'I', N'צפון', 5, 4)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (86, N'מחלקת עיניים', N'E', N'צפון', 1, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (87, N'מחלקת עור', N'E', N'דרום', 2, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (88, N'מחלקת אף אוזן גרון', N'F', N'מערב', 3, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (89, N'מחלקת שיקום', N'F', N'מזרח', 4, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (90, N'מחלקת נוירולוגיה', N'G', N'צפון', 5, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (91, N'מחלקת המטולוגיה', N'G', N'דרום', 1, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (92, N'מחלקת קרדיולוגיה', N'H', N'מערב', 2, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (93, N'מחלקת אונקולוגיה', N'H', N'מזרח', 3, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (94, N'מחלקת פסיכיאטריה', N'I', N'דרום', 4, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (95, N'מחלקת ריאות', N'I', N'צפון', 5, 5)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (96, N'יולדות', N'2', N'1', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (97, N'ריאות', N'2', N'1', 1, 1)
INSERT [dbo].[Departments_tbl] ([ID], [Name], [Build], [Wing], [FloorNum], [HospitalId]) VALUES (98, N'אף אוזן גרון', N'2', N'1', 16, 1)
SET IDENTITY_INSERT [dbo].[Departments_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospitals_tbl] ON 

INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (1, N'שערי צדק', N'דוד', N'326059748', N'Dd123456', N'0556668330')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (2, N'הדסה עין כרם', N'אלעד', N'033841586', N'Aa987654', N'0503989002')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (3, N'הרצוג', N'אביעד', N'58469365', N'987485', N'0508804559')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (4, N'אסותא', N'יואל', N'222626186', N'22262', N'0583283296')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (5, N'ביקור חולים', N'יוסי', N'08282828', N'111111', N'0583227740')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (6, N'שיבה', N'יוסף', N'08444828', N'666111', N'0543227746')
INSERT [dbo].[Hospitals_tbl] ([ID], [Name], [Manager], [Tz], [Password], [Phone]) VALUES (7, N'בריאה', N'יוחנן', N'036258969', N'222000', N'0523227746')
SET IDENTITY_INSERT [dbo].[Hospitals_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Patients_tbl] ON 

INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (347, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 11, 102, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (348, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 11, 103, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (349, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 11, 104, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (350, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 11, 105, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (351, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 12, 106, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (352, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 12, 107, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (353, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 12, 108, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (354, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 12, 109, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (355, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 13, 110, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (356, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 13, 111, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (357, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 13, 112, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (358, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 13, 113, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (359, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 14, 114, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (360, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 14, 115, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (361, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 14, 116, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (362, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 14, 117, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (363, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 15, 118, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (364, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 15, 119, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (365, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 15, 120, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (366, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 15, 121, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (367, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 16, 122, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (368, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 16, 123, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (369, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 16, 124, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (370, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 16, 125, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (371, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 17, 126, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (372, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 17, 127, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (373, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 17, 128, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (374, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 17, 129, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (375, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 18, 130, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (376, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 18, 131, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (377, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 18, 132, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (378, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 18, 133, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (379, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 19, 134, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (380, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 19, 135, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (381, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 19, 136, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (382, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 19, 137, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (383, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 20, 138, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (384, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 20, 139, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (385, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 20, 140, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (386, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 20, 141, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (387, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 21, 142, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (388, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 21, 143, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (389, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 21, 144, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (390, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 21, 145, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (391, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 22, 146, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (392, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 22, 147, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (393, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 22, 148, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (394, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 22, 149, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (395, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 23, 150, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (396, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 23, 151, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (397, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 23, 152, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (398, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 23, 153, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (399, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 24, 154, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (400, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 24, 155, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (401, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 24, 156, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (402, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 24, 157, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (403, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 25, 158, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (404, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 25, 159, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (405, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 25, 160, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (406, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 25, 161, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (407, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 26, 162, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (408, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 26, 163, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (409, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 26, 164, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (410, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 26, 165, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (411, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 27, 166, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (412, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 27, 167, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (413, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 27, 168, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (414, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 27, 169, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (415, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 28, 170, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (416, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 28, 171, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (417, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 28, 172, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (418, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 28, 173, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (419, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 29, 174, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (420, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 29, 175, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (421, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 29, 176, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (422, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 29, 177, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (423, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 30, 178, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (424, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 30, 179, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (425, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 30, 180, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (426, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 30, 181, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (427, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 31, 182, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (428, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 31, 183, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (429, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 31, 184, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (430, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 31, 185, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (431, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 32, 186, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (432, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 32, 187, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (433, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 32, 188, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (434, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 32, 189, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (435, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 33, 190, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (436, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 33, 191, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (437, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 33, 192, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (438, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 33, 193, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (439, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 34, 194, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (440, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 34, 195, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (441, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 34, 196, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (442, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 34, 197, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (443, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 35, 198, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (444, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 35, 199, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (445, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 35, 200, N'password123')
GO
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (446, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 35, 201, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (447, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 36, 202, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (448, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 36, 203, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (449, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 36, 204, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (450, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 36, 205, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (451, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 37, 206, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (452, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 37, 207, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (453, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 37, 208, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (454, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 37, 209, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (455, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 38, 210, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (456, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 38, 211, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (457, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 38, 212, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (458, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 38, 213, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (459, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 39, 214, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (460, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 39, 215, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (461, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 39, 216, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (462, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 39, 217, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (463, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 40, 218, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (464, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 40, 219, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (465, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 40, 220, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (466, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 40, 221, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (467, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 41, 222, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (468, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 41, 223, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (469, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 41, 224, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (470, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 41, 225, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (471, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 42, 226, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (472, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 42, 227, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (473, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 42, 228, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (474, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 42, 229, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (475, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 43, 230, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (476, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 43, 231, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (477, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 43, 232, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (478, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 43, 233, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (479, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 44, 234, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (480, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 44, 235, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (481, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 44, 236, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (482, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 44, 237, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (483, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 45, 238, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (484, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 45, 239, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (485, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 45, 240, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (486, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 45, 241, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (487, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 46, 242, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (488, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 46, 243, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (489, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 46, 244, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (490, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 46, 245, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (491, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 47, 246, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (492, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 47, 247, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (493, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 47, 248, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (494, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 47, 249, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (495, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 48, 250, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (496, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 48, 251, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (497, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 48, 252, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (498, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 48, 253, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (499, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 49, 254, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (500, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 49, 255, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (501, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 49, 256, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (502, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 49, 257, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (503, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 50, 258, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (504, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 50, 259, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (505, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 50, 260, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (506, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 50, 261, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (507, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 51, 262, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (508, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 51, 263, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (509, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 51, 264, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (510, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 51, 265, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (511, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 52, 266, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (512, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 52, 267, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (513, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 52, 268, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (514, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 52, 269, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (515, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 53, 270, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (516, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 53, 271, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (517, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 53, 272, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (518, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 53, 273, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (519, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 54, 274, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (520, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 54, 275, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (521, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 54, 276, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (522, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 54, 277, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (523, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 55, 278, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (524, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 55, 279, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (525, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 1, 55, 280, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (526, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 1, 55, 281, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (527, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 56, 282, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (528, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 56, 283, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (529, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 56, 284, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (530, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 56, 285, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (531, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 57, 286, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (532, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 57, 287, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (533, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 57, 288, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (534, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 57, 289, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (535, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 58, 290, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (536, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 58, 291, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (537, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 58, 292, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (538, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 58, 293, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (539, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 59, 294, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (540, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 59, 295, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (541, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 59, 296, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (542, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 59, 297, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (543, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 60, 298, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (544, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 60, 299, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (545, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 60, 300, N'password123')
GO
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (546, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 60, 301, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (547, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 61, 302, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (548, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 61, 303, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (549, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 61, 304, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (550, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 61, 305, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (551, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 62, 306, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (552, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 62, 307, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (553, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 62, 308, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (554, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 62, 309, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (555, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 63, 310, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (556, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 63, 311, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (557, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 63, 312, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (558, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 63, 313, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (559, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 64, 314, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (560, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 64, 315, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (561, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 64, 316, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (562, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 64, 317, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (563, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 65, 318, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (564, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 65, 319, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (565, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 2, 65, 320, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (566, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 2, 65, 321, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (567, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 66, 322, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (568, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 66, 323, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (569, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 66, 324, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (570, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 66, 325, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (571, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 67, 326, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (572, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 67, 327, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (573, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 67, 328, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (574, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 67, 329, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (575, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 68, 330, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (576, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 68, 331, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (577, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 68, 332, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (578, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 68, 333, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (579, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 69, 334, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (580, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 69, 335, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (581, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 69, 336, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (582, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 69, 337, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (583, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 70, 338, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (584, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 70, 339, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (585, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 70, 340, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (586, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 70, 341, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (587, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 71, 342, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (588, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 71, 343, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (589, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 71, 344, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (590, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 71, 345, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (591, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 72, 346, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (592, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 72, 347, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (593, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 72, 348, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (594, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 72, 349, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (595, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 73, 350, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (596, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 73, 351, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (597, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 73, 352, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (598, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 73, 353, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (599, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 74, 354, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (600, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 74, 355, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (601, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 74, 356, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (602, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 74, 357, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (603, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 75, 358, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (604, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 75, 359, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (605, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 3, 75, 360, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (606, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 3, 75, 361, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (607, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 76, 362, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (608, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 76, 363, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (609, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 76, 364, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (610, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 76, 365, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (611, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 77, 366, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (612, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 77, 367, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (613, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 77, 368, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (614, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 77, 369, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (615, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 78, 370, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (616, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 78, 371, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (617, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 78, 372, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (618, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 78, 373, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (619, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 79, 374, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (620, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 79, 375, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (621, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 79, 376, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (622, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 79, 377, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (623, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 80, 378, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (624, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 80, 379, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (625, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 80, 380, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (626, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 80, 381, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (627, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 81, 382, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (628, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 81, 383, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (629, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 81, 384, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (630, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 81, 385, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (631, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 82, 386, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (632, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 82, 387, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (633, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 82, 388, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (634, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 82, 389, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (635, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 83, 390, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (636, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 83, 391, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (637, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 83, 392, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (638, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 83, 393, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (639, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 84, 394, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (640, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 84, 395, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (641, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 84, 396, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (642, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 84, 397, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (643, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 85, 398, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (644, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 85, 399, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (645, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 4, 85, 400, N'password123')
GO
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (646, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 4, 85, 401, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (647, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 86, 402, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (648, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 86, 403, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (649, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 86, 404, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (650, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 86, 405, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (651, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 87, 406, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (652, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 87, 407, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (653, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 87, 408, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (654, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 87, 409, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (655, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 88, 410, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (656, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 88, 411, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (657, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 88, 412, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (658, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 88, 413, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (659, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 89, 414, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (660, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 89, 415, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (661, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 89, 416, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (662, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 89, 417, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (663, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 90, 418, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (664, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 90, 419, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (665, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 90, 420, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (666, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 90, 421, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (667, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 91, 422, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (668, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 91, 423, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (669, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 91, 424, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (670, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 91, 425, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (671, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 92, 426, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (672, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 92, 427, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (673, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 92, 428, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (674, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 92, 429, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (675, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 93, 430, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (676, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 93, 431, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (677, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 93, 432, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (678, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 93, 433, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (679, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 94, 434, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (680, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 94, 435, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (681, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 94, 436, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (682, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 94, 437, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (683, N'יעקב ישראל', N'159753486', N'0501234567', CAST(N'1985-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 95, 438, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (684, N'מירי ברק', N'753159486', N'0512345678', CAST(N'1990-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 95, 439, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (685, N'דוד כהן', N'852963741', N'0523456789', CAST(N'1975-02-13T00:09:35.663' AS DateTime), N'זכר', 5, 95, 440, N'password123')
INSERT [dbo].[Patients_tbl] ([ID], [Name], [Tz], [Phone], [BirthDate], [Gender], [HospitalId], [DepartmentId], [RoomNumber], [Password]) VALUES (686, N'נועה ארז', N'456321789', N'0534567890', CAST(N'1995-02-13T00:09:35.663' AS DateTime), N'נקבה', 5, 95, 441, N'password123')
SET IDENTITY_INSERT [dbo].[Patients_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Volunteers_tbl] ON 

INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (349, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 11, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (350, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 11, 2)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (351, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 11, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (352, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 11, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (354, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 12, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (355, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 12, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (356, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 12, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (357, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 13, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (358, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 13, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (359, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 13, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (360, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 13, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (361, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 14, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (362, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 14, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (363, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 14, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (364, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 14, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (365, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 15, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (366, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 15, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (367, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 15, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (368, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 15, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (369, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 16, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (370, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 16, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (371, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 16, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (372, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 16, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (373, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 17, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (374, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 17, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (375, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 17, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (376, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 17, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (377, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 46, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (378, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 46, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (379, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 46, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (380, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 46, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (381, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 47, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (382, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 47, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (383, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 47, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (384, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 47, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (385, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 48, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (386, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 48, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (387, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 48, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (388, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 48, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (389, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 49, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (390, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 49, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (391, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 49, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (392, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 49, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (393, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 50, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (394, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 50, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (395, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 50, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (396, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 50, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (397, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 51, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (398, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 51, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (399, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 51, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (400, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 51, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (401, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 52, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (402, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 52, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (403, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 52, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (404, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 52, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (405, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 53, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (406, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 53, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (407, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 53, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (408, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 53, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (409, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 54, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (410, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 54, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (411, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 54, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (412, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 54, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (413, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 1, 55, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (414, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 1, 55, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (415, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 1, 55, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (416, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 1, 55, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (417, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 56, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (418, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 56, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (419, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 56, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (420, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 56, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (421, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 57, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (422, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 57, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (423, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 57, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (424, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 57, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (425, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 58, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (426, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 58, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (427, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 58, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (428, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 58, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (429, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 59, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (430, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 59, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (431, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 59, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (432, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 59, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (433, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 60, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (434, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 60, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (435, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 60, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (436, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 60, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (437, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 61, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (438, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 61, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (439, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 61, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (440, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 61, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (441, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 62, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (442, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 62, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (443, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 62, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (444, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 62, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (445, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 63, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (446, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 63, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (447, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 63, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (448, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 63, 1)
GO
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (449, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 64, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (450, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 64, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (451, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 64, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (452, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 64, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (453, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 65, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (454, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 65, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (455, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 65, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (456, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 65, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (457, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 18, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (458, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 18, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (459, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 18, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (460, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 18, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (461, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 19, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (462, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 19, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (463, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 19, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (464, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 19, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (465, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 20, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (466, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 20, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (467, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 20, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (468, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 20, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (469, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 21, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (470, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 21, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (471, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 21, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (472, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 21, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (473, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 22, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (474, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 22, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (475, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 22, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (476, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 22, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (477, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 23, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (478, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 23, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (479, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 23, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (480, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 23, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (481, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 2, 24, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (482, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 2, 24, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (483, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 2, 24, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (484, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 2, 24, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (485, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 25, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (486, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 25, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (487, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 25, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (488, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 25, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (489, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 26, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (490, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 26, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (491, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 26, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (492, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 26, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (493, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 27, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (494, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 27, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (495, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 27, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (496, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 27, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (497, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 28, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (498, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 28, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (499, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 28, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (500, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 28, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (501, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 29, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (502, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 29, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (503, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 29, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (504, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 29, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (505, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 30, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (506, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 30, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (507, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 30, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (508, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 30, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (509, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 31, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (510, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 31, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (511, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 31, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (512, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 31, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (513, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 66, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (514, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 66, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (515, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 66, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (516, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 66, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (517, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 67, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (518, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 67, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (519, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 67, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (520, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 67, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (521, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 68, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (522, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 68, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (523, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 68, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (524, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 68, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (525, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 69, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (526, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 69, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (527, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 69, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (528, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 69, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (529, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 70, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (530, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 70, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (531, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 70, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (532, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 70, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (533, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 71, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (534, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 71, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (535, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 71, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (536, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 71, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (537, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 72, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (538, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 72, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (539, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 72, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (540, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 72, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (541, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 73, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (542, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 73, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (543, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 73, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (544, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 73, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (545, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 74, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (546, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 74, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (547, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 74, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (548, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 74, 1)
GO
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (549, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 3, 75, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (550, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 3, 75, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (551, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 3, 75, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (552, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 3, 75, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (553, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 76, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (554, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 76, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (555, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 76, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (556, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 76, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (557, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 77, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (558, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 77, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (559, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 77, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (560, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 77, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (561, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 78, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (562, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 78, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (563, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 78, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (564, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 78, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (565, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 79, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (566, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 79, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (567, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 79, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (568, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 79, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (569, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 80, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (570, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 80, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (571, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 80, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (572, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 80, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (573, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 81, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (574, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 81, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (575, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 81, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (576, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 81, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (577, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 82, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (578, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 82, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (579, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 82, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (580, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 82, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (581, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 83, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (582, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 83, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (583, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 83, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (584, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 83, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (585, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 84, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (586, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 84, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (587, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 84, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (588, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 84, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (589, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 85, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (590, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 85, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (591, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 85, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (592, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 85, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (593, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 32, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (594, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 32, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (595, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 32, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (596, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 32, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (597, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 33, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (598, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 33, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (599, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 33, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (600, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 33, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (601, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 34, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (602, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 34, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (603, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 34, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (604, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 34, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (605, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 35, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (606, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 35, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (607, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 35, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (608, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 35, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (609, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 36, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (610, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 36, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (611, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 36, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (612, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 36, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (613, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 37, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (614, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 37, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (615, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 37, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (616, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 37, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (617, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 4, 38, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (618, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 4, 38, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (619, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 4, 38, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (620, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 4, 38, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (621, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 39, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (622, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 39, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (623, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 39, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (624, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 39, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (625, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 40, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (626, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 40, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (627, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 40, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (628, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 40, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (629, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 41, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (630, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 41, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (631, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 41, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (632, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 41, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (633, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 42, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (634, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 42, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (635, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 42, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (636, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 42, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (637, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 43, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (638, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 43, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (639, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 43, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (640, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 43, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (641, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 44, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (642, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 44, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (643, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 44, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (644, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 44, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (645, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 45, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (646, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 45, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (647, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 45, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (648, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 45, 1)
GO
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (649, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 86, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (650, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 86, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (651, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 86, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (652, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 86, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (653, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 87, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (654, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 87, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (655, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 87, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (656, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 87, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (657, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 88, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (658, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 88, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (659, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 88, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (660, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 88, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (661, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 89, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (662, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 89, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (663, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 89, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (664, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 89, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (665, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 90, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (666, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 90, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (667, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 90, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (668, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 90, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (669, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 91, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (670, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 91, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (671, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 91, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (672, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 91, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (673, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 92, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (674, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 92, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (675, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 92, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (676, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 92, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (677, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 93, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (678, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 93, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (679, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 93, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (680, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 93, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (681, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 94, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (682, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 94, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (683, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 94, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (684, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 94, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (685, N'אבי כהן', N'123456789', N'password123', N'0556668330', N'זכר', 5, 95, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (686, N'דנה לוי', N'987654321', N'password123', N'0521234567', N'נקבה', 5, 95, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (687, N'יוסי מזרחי', N'456789123', N'password123', N'0537654321', N'זכר', 5, 95, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (688, N'רותם שפירא', N'321654987', N'password123', N'0548765432', N'נקבה', 5, 95, 1)
INSERT [dbo].[Volunteers_tbl] ([ID], [Name], [Tz], [Password], [Phone], [Gender], [HospitalId], [DepartmentId], [StatusId]) VALUES (689, N'אבי לוי', N'133456789', N'password123', N'05336668330', N'זכר', 1, 11, 1)
SET IDENTITY_INSERT [dbo].[Volunteers_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[VolunteerStatus_tbl] ON 

INSERT [dbo].[VolunteerStatus_tbl] ([ID], [Description]) VALUES (1, N'פנוי')
INSERT [dbo].[VolunteerStatus_tbl] ([ID], [Description]) VALUES (2, N'תפוס')
INSERT [dbo].[VolunteerStatus_tbl] ([ID], [Description]) VALUES (3, N'בהפסקה')
INSERT [dbo].[VolunteerStatus_tbl] ([ID], [Description]) VALUES (4, N'לא נמצא')
INSERT [dbo].[VolunteerStatus_tbl] ([ID], [Description]) VALUES (5, N'פנוי')
SET IDENTITY_INSERT [dbo].[VolunteerStatus_tbl] OFF
GO
ALTER TABLE [dbo].[Activitys_tbl]  WITH CHECK ADD FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals_tbl] ([ID])
GO
ALTER TABLE [dbo].[Activitys_tbl]  WITH CHECK ADD FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals_tbl] ([ID])
GO
ALTER TABLE [dbo].[ApartmentsInActivitys_tbl]  WITH CHECK ADD FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activitys_tbl] ([ID])
GO
ALTER TABLE [dbo].[ApartmentsInActivitys_tbl]  WITH CHECK ADD FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activitys_tbl] ([ID])
GO
ALTER TABLE [dbo].[ApartmentsInActivitys_tbl]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments_tbl] ([ID])
GO
ALTER TABLE [dbo].[ApartmentsInActivitys_tbl]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments_tbl] ([ID])
GO
ALTER TABLE [dbo].[Contacts_tbl]  WITH CHECK ADD FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients_tbl] ([ID])
GO
ALTER TABLE [dbo].[Contacts_tbl]  WITH CHECK ADD FOREIGN KEY([StatusId])
REFERENCES [dbo].[ContactStatus_tbl] ([ID])
GO
ALTER TABLE [dbo].[Contacts_tbl]  WITH CHECK ADD FOREIGN KEY([VolunteerId])
REFERENCES [dbo].[Volunteers_tbl] ([ID])
GO
ALTER TABLE [dbo].[Departments_tbl]  WITH CHECK ADD FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals_tbl] ([ID])
GO
ALTER TABLE [dbo].[Patients_tbl]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments_tbl] ([ID])
GO
ALTER TABLE [dbo].[Patients_tbl]  WITH CHECK ADD FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals_tbl] ([ID])
GO
ALTER TABLE [dbo].[Presences_tbl]  WITH CHECK ADD FOREIGN KEY([VolunteerId])
REFERENCES [dbo].[Volunteers_tbl] ([ID])
GO
ALTER TABLE [dbo].[Volunteers_tbl]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments_tbl] ([ID])
GO
ALTER TABLE [dbo].[Volunteers_tbl]  WITH CHECK ADD FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospitals_tbl] ([ID])
GO
ALTER TABLE [dbo].[Volunteers_tbl]  WITH CHECK ADD FOREIGN KEY([StatusId])
REFERENCES [dbo].[VolunteerStatus_tbl] ([ID])
GO
ALTER TABLE [dbo].[Patients_tbl]  WITH CHECK ADD CHECK  (([gender]='אחר' OR [gender]='נקבה' OR [gender]='זכר'))
GO
ALTER TABLE [dbo].[Patients_tbl]  WITH CHECK ADD CHECK  (([gender]='אחר' OR [gender]='נקבה' OR [gender]='זכר'))
GO
ALTER TABLE [dbo].[Volunteers_tbl]  WITH CHECK ADD CHECK  (([gender]='אחר' OR [gender]='נקבה' OR [gender]='זכר'))
GO
ALTER TABLE [dbo].[Volunteers_tbl]  WITH CHECK ADD CHECK  (([gender]='אחר' OR [gender]='נקבה' OR [gender]='זכר'))
GO
