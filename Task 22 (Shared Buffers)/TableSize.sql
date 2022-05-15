SELECT table_name,
       pg_size_pretty(pg_relation_size(table_name)) AS relation_size,
       pg_size_pretty(pg_table_size(table_name)) AS table_size
FROM unnest(ARRAY['sb_1000', 'sb_10000', 'sb_100000']) as k(table_name)