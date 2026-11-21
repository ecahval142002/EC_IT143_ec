--Q1 What music titles has Michael as the artist and in which years?
--A1 Using a condition to filter out the data.

SELECT v.artist_name,
	v.release_title,
	v.date_year
	INTO t_MichaelJackson
FROM v_MichaelJackson_music AS v;