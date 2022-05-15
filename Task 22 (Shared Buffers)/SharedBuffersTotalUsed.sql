SELECT pg_size_pretty(sum(buffered)) AS buffered_total
FROM buffer_view