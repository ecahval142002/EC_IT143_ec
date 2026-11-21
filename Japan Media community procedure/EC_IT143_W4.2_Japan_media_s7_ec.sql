/*****************************************************************************************************************
NAME:    EC143_JapanMedia
PURPOSE: Test knowledge in stored procedures

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/20/2022   ECAHUA       1. Build Script for Japan_Media dataset




RUNTIME: 
0m 20s

NOTES: 
Creation of a procedure 
******************************************************************************************************************/

--Q1: How to I know which anime is still airing?
--A1: Lets use some WHERE statements

CREATE PROCEDURE usp_CurrentAnime_load
AS
	
	BEGIN

		TRUNCATE TABLE t_CurrentAnime;

		INSERT INTO t_CurrentAnime
			SELECT v.mal_id,
				v.title,
				v.airing,
				v.aired_from
			FROM v_airing_anime AS v;
	
		SELECT t.*
			FROM t_CurrentAnime AS t

	END;
GO

