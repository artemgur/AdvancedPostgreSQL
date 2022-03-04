INSERT INTO task3 (name)
	SELECT md5(cast(i AS text))
	FROM generate_series(1, 10000) AS k(i)
