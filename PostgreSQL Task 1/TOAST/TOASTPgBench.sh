# -t 1000 — 1000 транзакций
# -r — показать время выполнения отдельных операторов
# -f выполнить скрипт из файла
echo postgres | su postgres -c "pgbench -t 1000 -rf 'PgBenchSelect.sql'"