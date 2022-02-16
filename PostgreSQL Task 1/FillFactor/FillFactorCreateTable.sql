CREATE TABLE fillfactor50 (
    int int,
    string varchar(100),
    date timestamp
) WITH (FILLFACTOR = 50);

CREATE TABLE fillfactor75 (
    int int,
    string varchar(100),
    date timestamp
) WITH (FILLFACTOR = 75);

CREATE TABLE fillfactor90 (
    int int,
    string varchar(100),
    date timestamp
) WITH (FILLFACTOR = 90);

CREATE TABLE fillfactor100 (
    int int,
    string varchar(100),
    date timestamp
) WITH (FILLFACTOR = 100);
