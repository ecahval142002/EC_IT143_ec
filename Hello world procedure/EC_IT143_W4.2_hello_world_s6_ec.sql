
TRUNCATE TABLE dbo.t_hello_world
	SELECT v.my_message
	,v.DateColumn
	FROM dbo.v_hello_world_load AS v;

	SELECT t.*
		FROM dbo.t_hello_world AS t;

