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
Last steps to create a procedure.
******************************************************************************************************************/

--Q1 What music titles has Michael as the artist and in which years?
--A1 Using a condition to filter out the data.
	
CREATE PROCEDURE usp_MichaelJackson
AS

	BEGIN 
		
		TRUNCATE TABLE t_MichaelJackson;

		INSERT INTO t_MichaelJackson
			SELECT v.artist_name,
				v.release_title,
				v.date_year
			FROM v_MichaelJackson_music AS v;

		SELECT t.*
		FROM t_MichaelJackson AS t;

	END;
GO