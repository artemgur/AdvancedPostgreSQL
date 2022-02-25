echo postgres | su postgres -c "
psql -f 'PgBenchCreateSequence.sql'
pgbench -t 100 -nc 1 -f UpdateLogged.sql
psql -f 'PgBenchDropSequence.sql'"
