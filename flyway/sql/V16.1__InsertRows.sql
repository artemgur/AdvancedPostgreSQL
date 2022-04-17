INSERT INTO abc
	SELECT i, round(random() * 1000)::int, round(random() * 1000)::int
	FROM generate_series(1, 1000) AS k(i)
