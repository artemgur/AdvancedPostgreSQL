UPDATE fillfactor50
SET string = string || string;

UPDATE fillfactor75
SET string = string || string;

UPDATE fillfactor90
SET string = string || string;

UPDATE fillfactor100
SET string = string || string;


TRUNCATE fillfactor50, fillfactor75, fillfactor90, fillfactor100;


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

--\i FillFactorCleanup.sql
--\i FillFactorInsert.sql

--VACUUM FULL;
