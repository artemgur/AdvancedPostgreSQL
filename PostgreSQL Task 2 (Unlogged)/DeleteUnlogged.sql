--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

DELETE FROM unlogged WHERE id=nextval('pgbench_sequence')