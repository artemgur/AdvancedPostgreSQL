echo postgres | su postgres -c "
pgbench -t 1000000 -nc 1 -f PgBenchSelect.sql
"