echo postgres | su postgres -c "
pgbench -T 300 -nc 1 -f InsertUnlogged.sql
psql -f 'Truncate.sql'
"
