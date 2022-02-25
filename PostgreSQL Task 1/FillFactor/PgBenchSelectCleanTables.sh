# -t 100 — 100 транзакций
# -r — показать время выполнения отдельных операторов
# -f выполнить скрипт из файла
echo postgres | su postgres -c "
psql -f 'FillFactorCleanup.sql'
psql -f 'FillFactorInsert.sql'
pgbench -t 1000 -nrf 'PgBenchSelect.sql'"
