DO $$
DECLARE
    random_value integer := 0;
BEGIN
	FOR i in 1..20000 LOOP
	    random_value := floor(random() * 10000 + 1);
		UPDATE task3
	        SET name = md5(cast(random_value AS text))
	        WHERE id = random_value;
	END LOOP;
END;
$$;
VACUUM FULL task3;
