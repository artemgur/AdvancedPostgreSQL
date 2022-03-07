DO $$
DECLARE
    batch_size integer := 20;
    random_value integer := 0;
BEGIN
	FOR i in 1..(10000 / batch_size) LOOP
	    random_value := floor(random() * 10000 + 1 - batch_size);
		UPDATE task3
	        SET name = md5(cast(random_value AS text))
	        WHERE id BETWEEN random_value AND random_value + batch_size;
	END LOOP;
END;
$$;
VACUUM FULL task3;
