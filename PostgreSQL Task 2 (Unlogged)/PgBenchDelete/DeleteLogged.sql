WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
DELETE FROM logged
	WHERE EXISTS (SELECT a FROM counter WHERE a=id)
