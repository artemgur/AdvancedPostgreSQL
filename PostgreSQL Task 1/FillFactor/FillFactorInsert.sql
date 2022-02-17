INSERT INTO fillfactor50
	SELECT i, left(md5(cast(i AS text)) || md5(cast(i AS text)), 50), clock_timestamp()
	FROM generate_series(1, 10000) AS k(i);

INSERT INTO fillfactor75
	SELECT i, left(md5(cast(i AS text)) || md5(cast(i AS text)), 50), clock_timestamp()
	FROM generate_series(1, 10000) AS k(i);

INSERT INTO fillfactor90
	SELECT i, left(md5(cast(i AS text)) || md5(cast(i AS text)), 50), clock_timestamp()
	FROM generate_series(1, 10000) AS k(i);

INSERT INTO fillfactor100
	SELECT i, left(md5(cast(i AS text)) || md5(cast(i AS text)), 50), clock_timestamp()
	FROM generate_series(1, 10000) AS k(i);
