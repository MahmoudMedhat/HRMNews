USE [HRM_Default_v1]
GO
/****** Object:  Table [dbo].[Allowances]    Script Date: 7/17/2020 6:30:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allowances](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AllowancesDescriptions] [nvarchar](100) NOT NULL,
	[Allowance] [decimal](19, 5) NOT NULL,
	[AllowanceDate] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Allowances] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Balance]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[BaseSalary] [decimal](19, 5) NULL,
	[GrossSalary] [decimal](19, 5) NULL,
	[NetIncome] [decimal](19, 5) NULL,
	[DateEnd] [datetime] NULL,
	[DateBeginn] [datetime] NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BasicInsurances]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasicInsurances](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Insurance] [nvarchar](200) NOT NULL,
	[insurancesQ] [decimal](19, 5) NOT NULL,
	[InsuranceDate] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_BasicInsurances] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deductions]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deductions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeductionsReason] [nvarchar](255) NOT NULL,
	[Deduction] [decimal](19, 5) NOT NULL,
	[DeductionsDate] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Deductions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deparetements]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deparetements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Departement] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Deparetements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpLoans]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpLoans](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Loan] [decimal](19, 5) NOT NULL,
	[AdvancReason] [nvarchar](255) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsAccepted] [smallint] NOT NULL,
	[installments] [decimal](18, 5) NULL,
 CONSTRAINT [PK_EmpLoans] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmploeesStatus]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploeesStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[EmpSDate] [datetime] NULL,
	[EmploymentStatusID] [int] NOT NULL,
 CONSTRAINT [PK_EmploeesStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmploymentStatus]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](150) NULL,
 CONSTRAINT [PK_EmploymentStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entitlements]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entitlements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Entitlement] [decimal](19, 5) NULL,
	[EntitlementsDate] [datetime] NULL,
	[EntitlementReason] [nvarchar](150) NULL,
 CONSTRAINT [PK_Entitlements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exceptions]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exceptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](50) NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[IsProtected] [bit] NOT NULL CONSTRAINT [DF_Exceptions_IsProtected]  DEFAULT ((1)),
	[Host] [nvarchar](100) NULL,
	[Url] [nvarchar](500) NULL,
	[HTTPMethod] [nvarchar](10) NULL,
	[IPAddress] [nvarchar](40) NULL,
	[Source] [nvarchar](100) NULL,
	[Message] [nvarchar](1000) NULL,
	[Detail] [nvarchar](max) NULL,
	[StatusCode] [int] NULL,
	[SQL] [nvarchar](max) NULL,
	[DeletionDate] [datetime] NULL,
	[FullJson] [nvarchar](max) NULL,
	[ErrorHash] [int] NULL,
	[DuplicateCount] [int] NOT NULL CONSTRAINT [DF_Exceptions_DuplicateCount]  DEFAULT ((1)),
 CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[financialyear]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[financialyear](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DateFrom] [date] NULL,
	[DateTo] [date] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[installments]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[installments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Loanid] [int] NULL,
	[installmentValues] [decimal](19, 5) NULL,
	[installmentDate] [datetime] NULL,
	[DateEmpLoan] [datetime] NULL,
	[IsAccepted] [smallint] NULL,
 CONSTRAINT [PK_installments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Jobtitle] [nvarchar](255) NOT NULL,
	[DepartementID] [int] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [nvarchar](10) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfficialHolidays]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficialHolidays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From_Holiday] [date] NULL,
	[To_Holiday] [date] NULL,
	[The_reason_of_holiday] [nvarchar](100) NULL,
	[weekdays] [smallint] NULL,
 CONSTRAINT [PK__Official__3213E83F34089327] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionRequests]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRequests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[IsAcceptedbyHR] [smallint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[DateFrom] [datetime] NOT NULL,
	[Dateto] [datetime] NOT NULL,
 CONSTRAINT [PK_PermissionRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionStatus]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Permissiontype] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_PermissionStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Premiums]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premiums](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[Premium_Quantity] [decimal](19, 5) NOT NULL,
	[Premium_Date] [datetime] NOT NULL,
	[premiumType] [int] NULL,
 CONSTRAINT [PK_Premiums] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Premiumstype]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Premiumstype](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Premium] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RolePermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Vacancies_Limit]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Vacancies_Limit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VacancyId] [int] NULL,
	[UserId] [int] NULL,
	[Limit] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions](
	[UserPermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
	[Granted] [bit] NOT NULL,
 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserPreferences]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPreferences](
	[UserPreferenceId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PreferenceType] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED 
(
	[UserPreferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Source] [nvarchar](4) NOT NULL,
	[PasswordHash] [nvarchar](86) NOT NULL,
	[PasswordSalt] [nvarchar](10) NOT NULL,
	[LastDirectoryUpdate] [datetime] NULL,
	[UserImage] [nvarchar](100) NULL,
	[InsertDate] [datetime] NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserId] [int] NULL,
	[IsActive] [smallint] NOT NULL CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)),
	[FingerPrintCode] [int] NULL,
	[HireDate] [datetime] NULL,
	[EducationalQualification] [varchar](400) NULL,
	[GraduationYears] [datetime] NULL,
	[MilitaryStatus] [nvarchar](80) NULL,
	[Birthdate] [datetime] NULL,
	[personalidentification] [int] NULL,
	[PersonalPhoneNumber] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[AttendanceDate] [datetime] NULL,
	[departuredate] [datetime] NULL,
	[EmployeeStatus] [smallint] NULL,
	[CasualVacancy] [int] NULL,
	[Regularvacation] [int] NULL,
	[AnnualLeave] [int] NULL,
	[MangerID] [int] NULL,
	[JobID] [int] NOT NULL CONSTRAINT [DF_Users_JobID]  DEFAULT ((1)),
	[Balances] [decimal](18, 0) NULL,
	[StatusName] [nchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vacancies]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vacancies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vacancy] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_vacancies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VacancyPolicy]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacancyPolicy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vacancyId] [int] NULL,
	[Duration] [tinyint] NULL,
	[Limit] [smallint] NULL,
	[Sending] [tinyint] NULL,
	[FromYears] [decimal](18, 0) NULL,
	[ToYears] [decimal](18, 0) NULL,
 CONSTRAINT [PK_VacancyPolicy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VacancyRequests]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacancyRequests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[VacancyID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[IsAcceptedbyHR] [smallint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[DateFrom] [datetime] NOT NULL,
	[Dateto] [datetime] NOT NULL,
	[HrComment] [nvarchar](100) NULL,
	[MangerComment] [nvarchar](100) NULL,
	[UserComment] [nvarchar](100) NULL,
 CONSTRAINT [PK_VacancyRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VersionInfo]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersionInfo](
	[Version] [bigint] NOT NULL,
	[AppliedOn] [datetime] NULL,
	[Description] [nvarchar](1024) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Limit]    Script Date: 7/17/2020 6:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Limit]
as

select B.DateBeginn, vr.userID , vr.DateFrom , vr.Dateto , vp.Sending , DATEDIFF(day , vr.DateFrom,vr.Dateto) as sum
,vp.Limit , vp.Limit Limt_R from dbo.VacancyRequests vr  
join dbo.VacancyPolicy vp on vr.VacancyID = vp.vacancyId 
join dbo.Users U on vr.userID=U.UserId
join dbo.Balance B on B.User_ID=U.UserId
 where vr.userID=1 and vp.Sending=1 and DATEDIFF(day,U.[HireDate],GETDATE())/365.0 > vp.FromYears and DATEDIFF(day,U.[HireDate],GETDATE())/365.0 < vp.ToYears 
 
 and vr.DateFrom >= B.DateBeginn and vr.DateFrom <= B.DateEnd and vr.Dateto >= B.DateBeginn and vr.Dateto<=B.DateEnd and vr.UserId=B.User_ID 
  
 
 


GO
ALTER TABLE [dbo].[UserPermissions] ADD  CONSTRAINT [DF_UserPermissions_Granted]  DEFAULT ((1)) FOR [Granted]
GO
ALTER TABLE [dbo].[Allowances]  WITH CHECK ADD  CONSTRAINT [FK_Allowances_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Allowances] CHECK CONSTRAINT [FK_Allowances_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[Balance]  WITH CHECK ADD  CONSTRAINT [FK_Balance_UserID_Users_UserId] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Balance] CHECK CONSTRAINT [FK_Balance_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[BasicInsurances]  WITH CHECK ADD  CONSTRAINT [FK_BasicInsurances_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[BasicInsurances] CHECK CONSTRAINT [FK_BasicInsurances_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[Deductions]  WITH CHECK ADD  CONSTRAINT [FK_Deductions_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Deductions] CHECK CONSTRAINT [FK_Deductions_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[EmpLoans]  WITH CHECK ADD  CONSTRAINT [FK_EmpLoans_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[EmpLoans] CHECK CONSTRAINT [FK_EmpLoans_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[EmploeesStatus]  WITH CHECK ADD  CONSTRAINT [FK_EmploeesStatus_EmploymentStatusID_EmploymentStatus_id] FOREIGN KEY([EmploymentStatusID])
REFERENCES [dbo].[EmploymentStatus] ([id])
GO
ALTER TABLE [dbo].[EmploeesStatus] CHECK CONSTRAINT [FK_EmploeesStatus_EmploymentStatusID_EmploymentStatus_id]
GO
ALTER TABLE [dbo].[EmploeesStatus]  WITH CHECK ADD  CONSTRAINT [FK_EmploeesStatus_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[EmploeesStatus] CHECK CONSTRAINT [FK_EmploeesStatus_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[Entitlements]  WITH CHECK ADD  CONSTRAINT [FK_Entitlements_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Entitlements] CHECK CONSTRAINT [FK_Entitlements_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[installments]  WITH CHECK ADD  CONSTRAINT [FK_installments_Loanid_EmpLoans_ID] FOREIGN KEY([Loanid])
REFERENCES [dbo].[EmpLoans] ([ID])
GO
ALTER TABLE [dbo].[installments] CHECK CONSTRAINT [FK_installments_Loanid_EmpLoans_ID]
GO
ALTER TABLE [dbo].[installments]  WITH CHECK ADD  CONSTRAINT [FK_installments_UserID_Users_UserId] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[installments] CHECK CONSTRAINT [FK_installments_UserID_Users_UserId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_DepartementID_Deparetements_ID] FOREIGN KEY([DepartementID])
REFERENCES [dbo].[Deparetements] ([ID])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_DepartementID_Deparetements_ID]
GO
ALTER TABLE [dbo].[PermissionRequests]  WITH CHECK ADD  CONSTRAINT [FK_PermissionRequests_PermissionID_PermissionStatus_ID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[PermissionStatus] ([ID])
GO
ALTER TABLE [dbo].[PermissionRequests] CHECK CONSTRAINT [FK_PermissionRequests_PermissionID_PermissionStatus_ID]
GO
ALTER TABLE [dbo].[PermissionRequests]  WITH CHECK ADD  CONSTRAINT [FK_PermissionRequests_StatusID_Status_ID] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[PermissionRequests] CHECK CONSTRAINT [FK_PermissionRequests_StatusID_Status_ID]
GO
ALTER TABLE [dbo].[PermissionRequests]  WITH CHECK ADD  CONSTRAINT [FK_PermissionRequests_userID_Users_UserId] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PermissionRequests] CHECK CONSTRAINT [FK_PermissionRequests_userID_Users_UserId]
GO
ALTER TABLE [dbo].[Premiums]  WITH CHECK ADD  CONSTRAINT [FK_Premiums_Premiums] FOREIGN KEY([premiumType])
REFERENCES [dbo].[Premiumstype] ([ID])
GO
ALTER TABLE [dbo].[Premiums] CHECK CONSTRAINT [FK_Premiums_Premiums]
GO
ALTER TABLE [dbo].[Premiums]  WITH CHECK ADD  CONSTRAINT [FK_Premiums_userID_Users_UserId] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Premiums] CHECK CONSTRAINT [FK_Premiums_userID_Users_UserId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_RoleId]
GO
ALTER TABLE [dbo].[User_Vacancies_Limit]  WITH CHECK ADD  CONSTRAINT [FK_User_Vacancies_Limit_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Vacancies_Limit] CHECK CONSTRAINT [FK_User_Vacancies_Limit_Users]
GO
ALTER TABLE [dbo].[User_Vacancies_Limit]  WITH CHECK ADD  CONSTRAINT [FK_User_Vacancies_Limit_vacancies] FOREIGN KEY([VacancyId])
REFERENCES [dbo].[vacancies] ([ID])
GO
ALTER TABLE [dbo].[User_Vacancies_Limit] CHECK CONSTRAINT [FK_User_Vacancies_Limit_vacancies]
GO
ALTER TABLE [dbo].[UserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserPermissions_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserPermissions] CHECK CONSTRAINT [FK_UserPermissions_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_JobID_Jobs_ID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Jobs] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_JobID_Jobs_ID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [UsersFK] FOREIGN KEY([MangerID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [UsersFK]
GO
ALTER TABLE [dbo].[VacancyPolicy]  WITH CHECK ADD  CONSTRAINT [FK_VacancyPolicy_vacancies] FOREIGN KEY([vacancyId])
REFERENCES [dbo].[vacancies] ([ID])
GO
ALTER TABLE [dbo].[VacancyPolicy] CHECK CONSTRAINT [FK_VacancyPolicy_vacancies]
GO
ALTER TABLE [dbo].[VacancyRequests]  WITH CHECK ADD  CONSTRAINT [FK_VacancyRequests_StatusID_Status_ID] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[VacancyRequests] CHECK CONSTRAINT [FK_VacancyRequests_StatusID_Status_ID]
GO
ALTER TABLE [dbo].[VacancyRequests]  WITH CHECK ADD  CONSTRAINT [FK_VacancyRequests_userID_Users_UserId] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[VacancyRequests] CHECK CONSTRAINT [FK_VacancyRequests_userID_Users_UserId]
GO
ALTER TABLE [dbo].[VacancyRequests]  WITH CHECK ADD  CONSTRAINT [FK_VacancyRequests_VacancyID_vacancies_ID] FOREIGN KEY([VacancyID])
REFERENCES [dbo].[vacancies] ([ID])
GO
ALTER TABLE [dbo].[VacancyRequests] CHECK CONSTRAINT [FK_VacancyRequests_VacancyID_vacancies_ID]
GO
