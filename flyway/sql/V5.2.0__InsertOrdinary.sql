INSERT INTO ordinary (name)
	SELECT md5(cast(i AS text))
	FROM generate_series(1, 1000000) AS k(i)
