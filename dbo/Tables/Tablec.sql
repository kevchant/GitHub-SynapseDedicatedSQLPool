CREATE TABLE [dbo].[Tablec] (
    [col1] INT          NOT NULL,
    [col2] VARCHAR (10) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = HASH([col1]));


GO



GO
