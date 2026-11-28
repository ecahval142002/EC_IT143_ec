/***********************************************************************************
******************************
NAME: Community Music Answers Script
PURPOSE: Answer questions related to the Music dataset
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 11/26/2026 ECAHUA 1. Built this script for EC IT143
RUNTIME:
1m 0s
NOTES:
This script is containing the questions, answers and TSQL queries
***********************************************************************************
*******************************/
-- Q1: What releases were launched in the range of 1980 to 1990? 
-- The platform wants to launch a new campaign focused on eras of music. The list is going to be organized by each year in the decade.
-- A1: Using a WHERE clause with a range for the dates and order from earlier to latest.

	SELECT release_title,
		artist_name,
		date_year
	FROM official_releases
	WHERE date_year BETWEEN 1980 AND 1990
	ORDER BY date_year ASC;

--Q2: Which artist and groups are located in the US? 
--The data also requires the release year, so the promoter knows the more recent releases and active groups. 
--The data needs to be organized from the most recent to oldest.
--A2: Using SQL, the important columns are the ones that contain the data of the title name, release year, country code, and group names.

	SELECT release_title,
		artist_name,
		country_code,
		date_year,
		release_group_type
	FROM official_releases
	WHERE country_code = 'US'
	ORDER BY date_year DESC;

--Q3: A discografic name wants to create a new album compiling all releases from one of their artists. 
--How can they get a view with a list with each release including year, month and day?
--A3: using SQL, selecting the columns that contain the data for the artist, in the example, Michael Jackson, the release year
--Then, setting the order from oldest to recent, skipping NULL values.

DROP VIEW IF EXISTS vi_MichaelJackson_music;
GO

CREATE VIEW vi_MichaelJackson_music
AS
	SELECT 
		release_title,
		artist_name,
		date_year,
		date_month,
		date_day
	FROM official_releases
	WHERE artist_name='Michael Jackson' AND date_year IS NOT NULL
	ORDER BY date_year ASC;

--Q4: Which releases are classified as singles? 
--The same discographic is also working on a project focused only on singles and also the nacionalities of the artists.
--The data from the artists needs to be organized alphabetically.
--A4: Since this an international dataset, first ensure that the data type is set as NVARCHAR. Use SELECT for the needed columns and 
--WHERE clause to create a condition for the release type and ORDER BY to organize results alphabetically.

	SELECT release_title,
		date_year,
		release_group_type,
		artist_name,
		country_code
	FROM official_releases
	WHERE release_group_type = 'Single'
	ORDER BY artist_name ASC;