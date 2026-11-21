--Q1: How to I know which anime is still airing?
--A1: Lets use some WHERE statements


SELECT mal_id,
	title,
	airing,
	aired_from,
	aired_to
FROM anime_dataset
WHERE airing = 1;