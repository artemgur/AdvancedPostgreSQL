echo postgres | su postgres -c "
psql -f '../InsertManyLogged.sql'
psql -f '../PgBenchCreateSequence.sql'
pgbench -t 10000 -nc 1 -f DeleteLogged.sql
psql -f '../PgBenchDropSequence.sql'
psql -f '../TruncateLogged.sql'
"
