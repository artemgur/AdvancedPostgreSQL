UPDATE fillfactor50
SET string = left(string || string, 100);

UPDATE fillfactor75
SET string = left(string || string, 100);

UPDATE fillfactor90
SET string = left(string || string, 100);

UPDATE fillfactor100
SET string = left(string || string, 100);

--VACUUM FULL;
