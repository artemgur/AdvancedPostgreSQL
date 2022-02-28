--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

-- UPDATE unlogged
-- 	SET time = clock_timestamp()
-- 	WHERE id=nextval('pgbench_sequence')


--TODO
WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
UPDATE unlogged
	--SET time = clock_timestamp()
	SET string = '1234567890'
	WHERE EXISTS (SELECT a FROM counter WHERE a=id) --TODO likely there is a better way