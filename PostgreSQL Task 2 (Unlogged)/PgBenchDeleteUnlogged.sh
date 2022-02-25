echo postgres | su postgres -c "
psql -f 'PgBenchCreateSequence.sql'
pgbench -t 100 -nc 1 -f UpdateUnlogged.sql
psql -f 'PgBenchDropSequence.sql'"
