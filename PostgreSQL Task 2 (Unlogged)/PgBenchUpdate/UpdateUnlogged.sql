--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

-- UPDATE unlogged
-- 	SET time = clock_timestamp()
-- 	WHERE id=nextval('pgbench_sequence')


--TODO
UPDATE unlogged
	SET time = clock_timestamp()
	WHERE id=1--nextval('pgbench_sequence')