DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Creating a local view using queries in db hello world

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/19/2026   ECAHUA      1. Built this script for assignment 4.2 in EC IT143


RUNTIME: 
0m 30s

NOTES: 
This script is done to show the function of views
 
******************************************************************************************************************/

-- Q1: How to create a view that groups rows with specific date range?
-- A1: Lets find out in SQL Server creating a view using WHERE clauses.

SELECT 'Hello World' AS my_message
	WHERE DateColumn BETWEEN '2026-11-01' AND '2026-11-10';