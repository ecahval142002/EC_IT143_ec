CREATE PROCEDURE dbo.usp_hello_world_load
/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Creating a local view using queries in db hello world

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/19/2026   ECAHUA       1. Built this script for assignment 4.2 in EC IT143



RUNTIME: 
0m 50s

NOTES: 
This script is done to show the function of views
 
******************************************************************************************************************/

-- Q1: How to create a view that groups rows with specific date range?
-- A1: Lets find out in SQL Server creating a view using WHERE clauses.

	BEGIN

		TRUNCATE TABLE dbo.t_hello_world;
		INSERT INTO dbo.t_hello_world
			SELECT v.my_message,
				v.DateColummn
			FROM dbo.v_hello_world_load AS v;

		SELECT t.*
			FROM dbo.t_hello_world AS t;
	END;
GO