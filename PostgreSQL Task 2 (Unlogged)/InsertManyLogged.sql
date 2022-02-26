INSERT INTO logged (time, string, flag)
	SELECT clock_timestamp(), 'string_123', FALSE
	FROM generate_series(1, 10000);
