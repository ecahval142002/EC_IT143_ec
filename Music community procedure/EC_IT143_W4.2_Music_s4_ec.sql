/*****************************************************************************************************************
NAME:    EC_IT143_Music
PURPOSE: Creating a view using required data to create a procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/20/2026   ECAHUA       1. Script for IT143 Week 4 assignment


RUNTIME: 
0m 20s

NOTES: 
This scripts create a view for steps 5 and 6.
******************************************************************************************************************/

--Q1 What music titles has Michael as the artist and in which years?
--A1 Using a condition to filter out the data.

DROP VIEW IF EXISTS v_MichaelJackson_music;
GO

CREATE VIEW v_MichaelJackson_music
AS
	SELECT artist_name,
		release_title,
		date_year
	FROM official_releases
	WHERE artist_name='Michael Jackson' AND date_year IS NOT NULL;