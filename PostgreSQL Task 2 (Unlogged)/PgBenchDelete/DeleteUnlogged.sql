WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
DELETE FROM unlogged
	WHERE EXISTS (SELECT a FROM counter WHERE a=id) --TODO likely there is a better way

-- Версия с SELECT id FROM table_name LIMIT 1
-- WITH some_id AS (SELECT id AS id2 FROM unlogged LIMIT 1)
-- DELETE FROM unlogged
-- 	WHERE EXISTS (SELECT id2 FROM some_id WHERE id2=id) --TODO likely there is a better way

