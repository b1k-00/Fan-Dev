USE [FanDev]
GO


/****** Object:  Table [dbo].[Stat]    Script Date: 6/24/2023 10:32:46 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stat]') AND type in (N'U'))
DROP TABLE [dbo].[Stat]
GO

/****** Object:  Table [dbo].[Information]    Script Date: 6/24/2023 10:31:56 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Information]') AND type in (N'U'))
DROP TABLE [dbo].[Information]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 6/24/2023 10:32:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
DROP TABLE [dbo].[GameMatchup]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 6/24/2023 10:32:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
DROP TABLE [dbo].[Game]
GO

/****** Object:  Table [dbo].[Team]    Script Date: 6/24/2023 10:29:20 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Team]') AND type in (N'U'))
DROP TABLE [dbo].[TeamMatchup]
GO

/****** Object:  Table [dbo].[Team]    Script Date: 6/24/2023 10:29:20 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Team]') AND type in (N'U'))
DROP TABLE [dbo].[Team]
GO





