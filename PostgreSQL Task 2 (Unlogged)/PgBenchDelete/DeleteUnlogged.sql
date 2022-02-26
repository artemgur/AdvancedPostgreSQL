--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

--DELETE FROM unlogged WHERE id=nextval('pgbench_sequence')
DELETE FROM unlogged WHERE id IN (SELECT id FROM unlogged LIMIT 1)

