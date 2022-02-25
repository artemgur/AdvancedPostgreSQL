INSERT INTO logged (time, string)
	SELECT clock_timestamp(), 'string_123'
	FROM generate_series(1, 10000);
