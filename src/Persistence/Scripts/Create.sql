USE [TT_Stats]
GO

/****** Object:  Table [dbo].[TT_Game]    Script Date: 6/11/2023 2:51:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_Game](
	[GameId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_TT_Games] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TT_Team]    Script Date: 6/11/2023 2:52:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_Team](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamArena] [varchar](50) NULL,
	[TeamColor] [varchar](50) NULL,
 CONSTRAINT [PK_TT_Team] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO




USE [TT_Stats]
GO

/****** Object:  Table [dbo].[TT_Information]    Script Date: 6/11/2023 2:51:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_Information](
	[PlayerId] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[JerseyNumber] [int] NOT NULL,
	[Origin] [varchar](50) NULL,
 CONSTRAINT [PK_TT_Information] PRIMARY KEY CLUSTERED 
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TT_Information]  WITH CHECK ADD  CONSTRAINT [FK_TT_Information_TT_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[TT_Teams] ([TeamId])
GO

ALTER TABLE [dbo].[TT_Information] CHECK CONSTRAINT [FK_TT_Information_TT_Teams]
GO

/****** Object:  Table [dbo].[TT_BoxScore]    Script Date: 6/11/2023 2:49:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_BoxScore](
	[StatsId] [int] NOT NULL,
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
	[+/-] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TT_BoxScore]  WITH CHECK ADD  CONSTRAINT [FK_TT_BoxScore_TT_Games] FOREIGN KEY([GameId])
REFERENCES [dbo].[TT_Games] ([GameId])
GO

ALTER TABLE [dbo].[TT_BoxScore] CHECK CONSTRAINT [FK_TT_BoxScore_TT_Games]
GO

ALTER TABLE [dbo].[TT_BoxScore]  WITH CHECK ADD  CONSTRAINT [FK_TT_BoxScore_TT_Information] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[TT_Information] ([PlayerId])
GO

ALTER TABLE [dbo].[TT_BoxScore] CHECK CONSTRAINT [FK_TT_BoxScore_TT_Information]
GO







