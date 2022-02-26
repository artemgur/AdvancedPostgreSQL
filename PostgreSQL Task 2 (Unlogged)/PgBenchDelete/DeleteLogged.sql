--\set sdf debug(:client_id)
--\setshell sdf echo $my_var
--\set dsfljk debug(:sdf)
--SELECT :client_id FROM fillfactor50 LIMIT 1

DELETE FROM logged WHERE id=nextval('pgbench_sequence')
--DELETE FROM logged WHERE id IN (SELECT id FROM logged LIMIT 1)

