echo postgres | su postgres -c "
psql -f '../PgBenchCreateSequence.sql'
pgbench -t 10000 -nc 1 -f PgBenchSequence.sql
psql -f '../PgBenchDropSequence.sql'
"
