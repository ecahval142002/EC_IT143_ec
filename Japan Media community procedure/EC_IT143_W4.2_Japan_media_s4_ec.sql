/*****************************************************************************************************************
NAME:    EC143_JapanMedia
PURPOSE: Test knowledge in stored procedures

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/19/2026   ECAHUA       1. Build Script for Japan_Media dataset


RUNTIME: 
0m 10s

NOTES: 
This part focus on creating views
 
******************************************************************************************************************/
--Q1: How to I know which anime is still airing?
--A1: Lets use some WHERE statements

DROP VIEW IF EXISTS v_airing_anime;
GO

CREATE VIEW v_airing_anime
AS

	SELECT mal_id,
		title,
		airing,
		aired_from
	FROM anime_dataset
	WHERE airing = 1;