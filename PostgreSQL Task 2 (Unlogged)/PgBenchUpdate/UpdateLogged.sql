--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

-- UPDATE logged
-- 	SET time = clock_timestamp()
-- 	WHERE id=nextval('pgbench_sequence')

--TODO
UPDATE logged
	SET time = clock_timestamp()
	WHERE id=nextval('pgbench_sequence')