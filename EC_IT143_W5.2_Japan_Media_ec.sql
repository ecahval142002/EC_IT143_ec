/***********************************************************************************
******************************
NAME: Japan Media Community - Answers Script
PURPOSE: Resolve questions using SQL language
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 11/26/2026 ECAHUA 1. Built this script for EC IT143
RUNTIME:
Xm Xs
NOTES:
This script contains the answers of questions related to Japan Media database
***********************************************************************************
*******************************/

--Q1: Which anime genres have the highest average scores, and how many members do those anime have on average? - Emmanuel Oche
--A1:Depending on how many animes are being compared, SELECT TOP and ORDER BY are the basic statements needed, selecting score and members column.
--Since most genre fields contain more than one value, each genre must be done separately using WHERE clause.

	SELECT TOP 5 a.title,
		a.type,
		a.source,
		a.genres,
		a.score,
		a.rank,
		a.members
	FROM anime_dataset AS a
	ORDER BY a.score DESC;

--Q2: Which Manga titles also have an anime version, and which one received the higher score? - Spencer Abinadi Ortiz Hernandez
--A2: One way is using a JOIN statement, but the other solution is also selecting the source column with a condition selecting manga from the anime dataset.

	SELECT TOP 10 a.title,
		a.source,
		a.genres,
		a.score,
		a.rank
	FROM anime_dataset AS a
	WHERE a.source = 'Manga'
	ORDER BY a.score DESC;

--Q3: What manga from the 2010 decade had the highest score? The studio would also like to know to which autor they need to contact.
--A3: Using SELECT TOP for the scope and adding authors in the selection.

	SELECT TOP 1 m.title,
		m.genres,
		m.score,
		m.rank,
		m.published_from,
		m.authors
	FROM manga_dataset AS m
	WHERE m.published_from BETWEEN '2010-01-01' AND '2019-12-31'
	ORDER BY m.score DESC;

--Q4: Which anime and manga are in the adventure genre? 
--Stakeholder wants to know the release years as well in order to check for different trends among both types of media. 
--This analysis is made for an upcoming project of an studio.
--A4: This needs clauses, GROUP BY, and selecting the corresponding columns

	SELECT a.title,
		a.genres,
		a.rank,
		a.aired_from
	FROM anime_dataset AS a
	WHERE a.genres = 'Adventure' AND a.aired_from IS NOT NULL
	ORDER BY a.aired_from ASC;

	SELECT m.title,
		m.authors,
		m.genres,
		m.rank,
		m.published_from
	FROM manga_dataset AS m
	WHERE m.genres = 'Adventure' AND m.published_from IS NOT NULL
	ORDER BY m.published_from;