USE [master]
GO
/****** Object:  Database [VolunteersDB]    Script Date: 16/07/2025 10:56:02 ******/
CREATE DATABASE [VolunteersDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'volunteersDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\volunteersDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'volunteersDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\volunteersDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [VolunteersDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VolunteersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VolunteersDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VolunteersDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VolunteersDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VolunteersDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VolunteersDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VolunteersDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VolunteersDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VolunteersDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VolunteersDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VolunteersDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VolunteersDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VolunteersDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VolunteersDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VolunteersDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VolunteersDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VolunteersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VolunteersDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VolunteersDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VolunteersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VolunteersDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VolunteersDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VolunteersDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VolunteersDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VolunteersDB] SET  MULTI_USER 
GO
ALTER DATABASE [VolunteersDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VolunteersDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VolunteersDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VolunteersDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VolunteersDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VolunteersDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VolunteersDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [VolunteersDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [VolunteersDB]
GO
/****** Object:  Table [dbo].[Activitys_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Admin_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[ApartmentsInActivitys_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Contacts_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[ContactStatus_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Departments_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Hospitals_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Patients_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Presences_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[Volunteers_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
/****** Object:  Table [dbo].[VolunteerStatus_tbl]    Script Date: 16/07/2025 10:56:02 ******/
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
USE [master]
GO
ALTER DATABASE [VolunteersDB] SET  READ_WRITE 
GO
