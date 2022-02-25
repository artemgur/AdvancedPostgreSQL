INSERT INTO logged (time, string)
	SELECT clock_timestamp(), 'string_123'
	FROM generate_series(1, 1000);

INSERT INTO unlogged (time, string)
	SELECT clock_timestamp(), 'string_123'
	FROM generate_series(1, 1000)
