DROP TABLE IF EXISTS dbo.t_CurrentAnime;
GO

CREATE TABLE dbo.t_CurrentAnime
(mal_id INT NOT NULL,
		title VARCHAR (1050) NOT NULL,
		airing BIT NOT NULL,
		aired_from DATETIME NOT NULL
		
);
GO