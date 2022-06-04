WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
UPDATE unlogged
	SET string = '1234567890'
	WHERE EXISTS (SELECT a FROM counter WHERE a=id)
