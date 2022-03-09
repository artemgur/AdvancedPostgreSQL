WITH counter AS (SELECT mod(nextval('pgbench_sequence') * 40, 10000) AS a)
SELECT id, name FROM task3, counter
WHERE id BETWEEN counter.a AND counter.a + 39
