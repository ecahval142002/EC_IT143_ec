/*****************************************************************************************************************
NAME:    EC143_JapanMedia
PURPOSE: Test knowledge in stored procedures

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/19/2026   ECAHUA       1. Build Script for Japan_Media dataset


RUNTIME: 
0m 10s

NOTES: 
Continuation of a process to steps 5 to 8.
 
******************************************************************************************************************/
--Q1: How to I know which anime is still airing?
--A1: Lets use some WHERE statements

SELECT mal_id,
		title,
		airing,
		aired_from
	INTO t_CurrentAnime
  FROM v_airing_anime AS v;