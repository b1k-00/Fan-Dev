USE [FanDev]
GO

/****** Object:  Table [dbo].[Games]    Script Date: 1/13/2024 2:01:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[HomeTeamId] [int] NOT NULL,
	[AwayTeamId] [int] NOT NULL,
	[FinalScore] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams] FOREIGN KEY([HomeTeamId])
REFERENCES [dbo].[Teams] ([Id])
GO

ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Teams]
GO

ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Teams1] FOREIGN KEY([AwayTeamId])
REFERENCES [dbo].[Teams] ([Id])
GO

ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Teams1]
GO

/****** Object:  Table [dbo].[Teams]    Script Date: 1/13/2024 2:01:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[Division] [varchar](50) NOT NULL,
	[Arena] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Players]    Script Date: 1/13/2024 2:02:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlayerName] [varchar](50) NOT NULL,
	[Position] [varchar](10) NOT NULL,
	[TeamId] [int] NOT NULL,
	[JerseyNumber] [int] NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Players] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
GO

ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Players]
GO

/****** Object:  Table [dbo].[Stats]    Script Date: 1/13/2024 2:02:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[PlayerId] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[Rebounds] [int] NOT NULL,
	[Assists] [int] NOT NULL,
	[Steals] [int] NOT NULL,
	[Blocks] [int] NOT NULL,
	[Fouls] [int] NOT NULL,
 CONSTRAINT [PK_Stats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Stats]  WITH CHECK ADD  CONSTRAINT [FK_Stats_Games] FOREIGN KEY([GameId])
REFERENCES [dbo].[Games] ([Id])
GO

ALTER TABLE [dbo].[Stats] CHECK CONSTRAINT [FK_Stats_Games]
GO

ALTER TABLE [dbo].[Stats]  WITH CHECK ADD  CONSTRAINT [FK_Stats_Players] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([Id])
GO

ALTER TABLE [dbo].[Stats] CHECK CONSTRAINT [FK_Stats_Players]
GO



