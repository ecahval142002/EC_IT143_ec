TRUNCATE TABLE t_CurrentAnime;

INSERT INTO t_CurrentAnime
	SELECT v.mal_id,
		v.title,
		v.airing,
		v.aired_from
	FROM v_airing_anime AS v;

SELECT t.*
	FROM t_CurrentAnime AS t