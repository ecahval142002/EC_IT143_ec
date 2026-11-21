--Q1 What music titles has Michael as the artist and in which years?
--A1 Using a condition to filter out the data.

--Data reloading

TRUNCATE TABLE t_MichaelJackson;

INSERT INTO t_MichaelJackson
	SELECT v.artist_name,
		v.release_title,
		v.date_year
	FROM v_MichaelJackson_music AS v;

SELECT t.*
FROM t_MichaelJackson AS t;