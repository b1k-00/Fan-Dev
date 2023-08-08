USE [FanDev]
GO


/****** Object:  Table [dbo].[Team]    Script Date: 7/27/2023 2:15:06 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamColor] [varchar](50) NULL,
	[TeamArena] [varchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TeamMatchup]    Script Date: 8/7/2023 12:33:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TeamMatchup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Team1_Id] [int] NOT NULL,
	[Team2_Id] [int] NOT NULL,
 CONSTRAINT [PK_TeamMatchup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TeamMatchup]  WITH CHECK ADD  CONSTRAINT [FK_TeamMatchup_Team] FOREIGN KEY([Team2_Id])
REFERENCES [dbo].[Team] ([Id])
GO

ALTER TABLE [dbo].[TeamMatchup] CHECK CONSTRAINT [FK_TeamMatchup_Team]
GO

ALTER TABLE [dbo].[TeamMatchup]  WITH CHECK ADD  CONSTRAINT [FK_TeamMatchup_Team1] FOREIGN KEY([Team1_Id])
REFERENCES [dbo].[Team] ([Id])
GO

ALTER TABLE [dbo].[TeamMatchup] CHECK CONSTRAINT [FK_TeamMatchup_Team1]
GO

/****** Object:  Table [dbo].[Game]    Script Date: 8/7/2023 12:34:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GameMatchup]    Script Date: 8/7/2023 8:28:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameMatchup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Game_Id] [int] NOT NULL,
	[Matchup_Id] [int] NOT NULL,
 CONSTRAINT [PK_GameMatchup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[GameMatchup]  WITH CHECK ADD  CONSTRAINT [FK_GameMatchup_Game] FOREIGN KEY([Game_Id])
REFERENCES [dbo].[Game] ([Id])
GO

ALTER TABLE [dbo].[GameMatchup] CHECK CONSTRAINT [FK_GameMatchup_Game]
GO

ALTER TABLE [dbo].[GameMatchup]  WITH CHECK ADD  CONSTRAINT [FK_GameMatchup_TeamMatchup] FOREIGN KEY([Matchup_Id])
REFERENCES [dbo].[TeamMatchup] ([Id])
GO

ALTER TABLE [dbo].[GameMatchup] CHECK CONSTRAINT [FK_GameMatchup_TeamMatchup]
GO









/****** Object:  Table [dbo].[Information]    Script Date: 7/27/2023 2:15:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Information](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NOT NULL,
	[JerseyNumber] [int] NOT NULL,
	[Origin] [varchar](50) NULL,
 CONSTRAINT [PK_Information] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Information]  WITH CHECK ADD  CONSTRAINT [FK_Information_Team] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([Id])
GO

ALTER TABLE [dbo].[Information] CHECK CONSTRAINT [FK_Information_Team]
GO

/****** Object:  Table [dbo].[Stat]    Script Date: 7/28/2023 1:32:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[Efficiency] [int] NULL,
 CONSTRAINT [PK_Stat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Game]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Information] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Information] ([Id])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Information]
GO

ALTER TABLE [dbo].[Stat]  WITH CHECK ADD  CONSTRAINT [FK_Stat_Stat] FOREIGN KEY([Id])
REFERENCES [dbo].[Stat] ([Id])
GO

ALTER TABLE [dbo].[Stat] CHECK CONSTRAINT [FK_Stat_Stat]
GO

