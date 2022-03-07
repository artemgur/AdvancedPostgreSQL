-- https://stackoverflow.com/a/70727013
WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
SELECT id, name FROM task3, counter
WHERE id IN (counter.a, counter.a + 10, counter.a + 30, counter.a + 60, counter.a + 100)
