echo postgres | su postgres -c "
psql -f '../PostgreSQL Task 2 (Unlogged)/PgBenchCreateSequence.sql'
pgbench -t 9900 -nc 1 -f SelectContinuous.sql
psql -f '../PostgreSQL Task 2 (Unlogged)/PgBenchDropSequence.sql'
"