echo postgres | su postgres -c "
pgbench -T 300 -nc 1 -f InsertLogged.sql
psql -f 'Truncate.sql'
"
