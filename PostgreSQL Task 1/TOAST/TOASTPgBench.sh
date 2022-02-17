# -t 1000 — 1000 транзакций
# -r — показать время выполнения отдельных операторов
# -f выполнить скрипт из файла
echo postgres | su - postgres -c "pgbench -t 1000 -rf '/home/artemgur/Git/GitHub/AdvancedPostgreSQL/PostgreSQL Task 1/TOAST/PgBenchSelect.sql'"