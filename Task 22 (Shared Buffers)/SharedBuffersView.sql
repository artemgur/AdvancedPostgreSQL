CREATE EXTENSION IF NOT EXISTS pg_buffercache;

DROP VIEW IF EXISTS buffer_view;

CREATE VIEW buffer_view AS
SELECT c.relname,
       d.datname,
       count(*) * current_setting('block_size')::integer AS buffered,
       round(100.0 * count(*) /
             (SELECT setting
              FROM pg_settings
              WHERE name = 'shared_buffers')::integer, 1) AS buffer_percent,
       round(100.0 * count(*) * current_setting('block_size')::integer /
             pg_relation_size(c.oid), 1) AS percent_of_relation,
       round(100.0 * count(*) * current_setting('block_size')::integer /
             pg_table_size(c.oid), 1) AS percent_of_table
FROM pg_class c
	     INNER JOIN pg_buffercache b
	                ON b.relfilenode = pg_relation_filenode(c.oid)
	     INNER JOIN pg_database d ON b.reldatabase = d.oid
GROUP BY c.oid, c.relname, d.datname;