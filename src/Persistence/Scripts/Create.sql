USE [TT_Stats]
GO

/****** Object:  Table [dbo].[TT_Games]    Script Date: 6/8/2023 10:15:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_Games](
	[GameId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_TT_Games] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TT_Information]    Script Date: 6/8/2023 10:15:23 PM ******/
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

/****** Object:  Table [dbo].[TT_Teams]    Script Date: 6/8/2023 10:15:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TT_Teams](
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

/****** Object:  Table [dbo].[TT_Information]    Script Date: 6/8/2023 10:15:23 PM ******/
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






