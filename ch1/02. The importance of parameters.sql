-- Learn T-SQL Querying
-- Chapter 1 - Understanding Query Processing
-- Section - The importance of parameters

-- Security

USE AdventureWorks2016_EXT
GO

/****** Object:  Table [dbo].[Users]    Script Date: 08/02/2025 01:04:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[name] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO



DECLARE @sql nvarchar(MAX);
SET @sql = N'INSERT Users (Name) VALUES (''' + '<user input>' + ''');';
EXECUTE (@sql);

INSERT Users (Name) VALUES ('Bob'); 
DROP TABLE dbo.Users; --');

EXECUTE sp_executesql @stmt = N'INSERT Users (Name) VALUES (@name)', @params = N'@name nvarchar(100)', @name = '<user input>'
