WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
SELECT id, name FROM task3, counter
WHERE id BETWEEN counter.a AND counter.a + 39
