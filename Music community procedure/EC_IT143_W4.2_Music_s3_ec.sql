--Q1 What music titles has Michael as the artist and in which years?
--A1 Using a condition to filter out the data.

SELECT artist_name,
	release_title,
	date_year
FROM official_releases
WHERE artist_name='Michael Jackson' AND date_year IS NOT NULL;