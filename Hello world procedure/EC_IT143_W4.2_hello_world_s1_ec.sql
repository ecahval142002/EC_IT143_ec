--Q How to calculate the average required and only show the rows that match?
--A: Lets find out in SQL Server using AVG() Function

SELECT
	gh.student_id,
	gh.class_id,
	AVG(gh.gpa) AS average
FROM gpa_history AS gh
GROUP BY 
	gh.student_id,
	gh.class_id,
	gh.gpa
;