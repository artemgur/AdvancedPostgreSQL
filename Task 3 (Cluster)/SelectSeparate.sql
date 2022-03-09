-- https://stackoverflow.com/a/70727013
WITH counter AS (SELECT nextval('pgbench_sequence') AS a)
SELECT id, name FROM task3, counter
WHERE id IN (counter.a, counter.a + 10, counter.a + 20, counter.a + 30, counter.a + 40, counter.a + 50, counter.a + 60, counter.a + 70, counter.a + 80, counter.a + 90, counter.a + 100, counter.a + 110, counter.a + 120, counter.a + 130, counter.a + 140, counter.a + 150, counter.a + 160, counter.a + 170, counter.a + 180, counter.a + 190, counter.a + 200, counter.a + 210, counter.a + 220, counter.a + 230, counter.a + 240, counter.a + 250, counter.a + 260, counter.a + 270, counter.a + 280, counter.a + 290, counter.a + 300, counter.a + 310, counter.a + 320, counter.a + 330, counter.a + 340, counter.a + 350, counter.a + 360, counter.a + 370, counter.a + 380, counter.a + 390)

