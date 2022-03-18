echo postgres | su postgres -c "
pgbench -t 10000 -nc 1 -f PgBenchSelectPartitioned.sql
"
