echo postgres | su postgres -c "
psql -f '../InsertManyUnlogged.sql'
psql -f '../PgBenchCreateSequence.sql'
pgbench -t 1000 -nc 1 -f DeleteUnlogged.sql
psql -f '../PgBenchDropSequence.sql'
psql -f '../TruncateUnlogged.sql'
"
