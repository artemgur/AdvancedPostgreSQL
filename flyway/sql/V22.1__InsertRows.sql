INSERT INTO sb_1000
	SELECT i, round(random() * 1000)::int, round(random() * 1000)::int
	FROM generate_series(1, 1000) AS k(i);

INSERT INTO sb_10000
	SELECT i, round(random() * 1000)::int, round(random() * 1000)::int
	FROM generate_series(1, 10000) AS k(i);

INSERT INTO sb_100000
	SELECT i, round(random() * 1000)::int, round(random() * 1000)::int
	FROM generate_series(1, 100000) AS k(i);

