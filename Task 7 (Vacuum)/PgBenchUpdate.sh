echo postgres | su postgres -c "
pgbench -t 100000 -nc 10 -f PgBenchUpdate.sql
"