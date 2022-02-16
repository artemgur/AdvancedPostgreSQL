-- 32 * 100 символов, > 3 кБ

INSERT INTO toast_plain
	SELECT i, repeat(md5(cast(i AS text)), 100)
	FROM generate_series(1, 100) AS k(i);

INSERT INTO toast_extended
	SELECT i, repeat(md5(cast(i AS text)), 100)
	FROM generate_series(1, 100) AS k(i);

INSERT INTO toast_external
	SELECT i, repeat(md5(cast(i AS text)), 100)
	FROM generate_series(1, 100) AS k(i);

INSERT INTO toast_main
	SELECT i, repeat(md5(cast(i AS text)), 100)
	FROM generate_series(1, 100) AS k(i);
