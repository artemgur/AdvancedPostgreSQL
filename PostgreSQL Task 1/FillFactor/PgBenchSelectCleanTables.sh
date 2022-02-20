# -t 100 — 100 транзакций
# -r — показать время выполнения отдельных операторов
# -f выполнить скрипт из файла
echo postgres | su - postgres -c "psql -f '/home/artemgur/Git/GitHub/AdvancedPostgreSQL/PostgreSQL Task 1/FillFactor/FillFactorCleanup.sql'"
echo postgres | su - postgres -c "psql -f '/home/artemgur/Git/GitHub/AdvancedPostgreSQL/PostgreSQL Task 1/FillFactor/FillFactorInsert.sql'"
echo postgres | su - postgres -c "pgbench -t 1000 -rf '/home/artemgur/Git/GitHub/AdvancedPostgreSQL/PostgreSQL Task 1/FillFactor/PgBenchSelect.sql'"
