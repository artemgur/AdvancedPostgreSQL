SELECT relname, datname,
       pg_size_pretty(buffered) AS buffered,
       buffer_percent, percent_of_relation, percent_of_table
FROM buffer_view
WHERE relname LIKE 'sb_1000%'