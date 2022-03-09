echo postgres | su postgres -c "
pgbench -l -T 300 -nc 1 -f InsertLogged.sql
psql -f '../TruncateLogged.sql'
"
