WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
DELETE FROM unlogged
	WHERE EXISTS (SELECT a FROM counter WHERE a=id)
