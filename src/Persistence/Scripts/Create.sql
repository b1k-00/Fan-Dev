USE [FanDev]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 6/14/2023 12:22:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game](
	[GameId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Team]    Script Date: 6/14/2023 12:24:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Team](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamColor] [varchar](50) NULL,
	[TeamArena] [varchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Information]    Script Date: 6/14/2023 12:29:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Information](
	[PlayerId] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[JerseyNumber] [int] NOT NULL,
	[Origin] [varchar](50) NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([TeamId])
GO

ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_Team]
GO

/****** Object:  Table [dbo].[Stat]    Script Date: 6/14/2023 12:37:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stat](
	[StatId] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [int] NOT NULL,
	[GameId] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[ORebounds] [int] NOT NULL,
	[DRebounds] [int] NOT NULL,
	[Rebounds] [int] NOT NULL,
	[Assists] [int] NOT NULL,
	[Steals] [int] NOT NULL,
	[Blocks] [int] NOT NULL,
	[Minutes] [int] NOT NULL,
	[+/-] [int] NULL,
 CONSTRAINT [PK_Stat] PRIMARY KEY CLUSTERED 
(
	[StatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([GameId])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Game]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Information] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Information] ([PlayerId])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Information]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Stat] FOREIGN KEY([StatId])
REFERENCES [dbo].[Stat] ([StatId])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Stat]
GO






