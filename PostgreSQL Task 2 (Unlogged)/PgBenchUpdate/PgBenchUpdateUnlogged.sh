echo postgres | su postgres -c "
psql -f '../InsertManyLogged.sql'
psql -f '../PgBenchCreateSequence.sql'
pgbench -t 10000 -nc 1 -f UpdateUnlogged.sql
psql -f '../PgBenchDropSequence.sql'
psql -f '../TruncateUnlogged.sql'
"
