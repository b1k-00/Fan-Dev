USING [FanDev]
GO


-- INSERT VALUES INTO TEAM TABLE --

INSERT INTO [dbo].[Team]
           ([TeamId]
           ,[TeamName]
           ,[TeamColor]
           ,[TeamArena])
     VALUES
           (1
           ,'Al Mananama'
           ,'Blue'
           ,'Lion Den')
GO


-- INSERT VALUES INTO INFORMATION TABLE --

INSERT INTO [dbo].[Information]
           ([TeamId]
           ,[FirstName]
           ,[Lastname]
           ,[JerseyNumber]
           ,[Origin])
     VALUES
           (1
           ,'Bernard'
           ,'Scott'
           ,25
           , 'United States' )
GO

-- INSERT VALUES INTO GAME TABLE --


INSERT INTO [dbo].[Game]
           ([GameId]
           ,[Date]
           ,[Location])
     VALUES
           (1
           ,'2023-06-02 06:00:00'
           ,'Manama, Bahrain')
GO


-- INSERT VALUES INTO STAT TABLE --

INSERT INTO [dbo].[Stat]
           ([PlayerId]
           ,[GameId]
           ,[Points]
           ,[ORebounds]
           ,[DRebounds]
           ,[Rebounds]
           ,[Assists]
           ,[Steals]
           ,[Blocks]
           ,[Minutes]
           ,[+/-])
     VALUES
           (2
           ,1
           ,5
           ,0
           ,5
           ,5
           ,0
           ,0
           ,0
           ,30
           ,-10)
GO






