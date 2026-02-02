CREATE TABLE [dbo].[userTable] (
    [sid]      NVARCHAR (50) NOT NULL,
    [name]     NVARCHAR (50) NULL,
    [password] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([sid] ASC)
);
Go
INSERT INTO [dbo].[userTable] ([sid], [name], [password]) VALUES (N'9A632100', N'李樹', N'12345')
GO
