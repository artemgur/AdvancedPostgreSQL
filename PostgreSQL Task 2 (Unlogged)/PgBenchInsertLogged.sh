echo postgres | su postgres -c 'pgbench -T 30 -nc 1 -f InsertLogged.sql'
