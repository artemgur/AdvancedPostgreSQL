CREATE TABLE logged (
    id bigint PRIMARY KEY,
    time timestamp,
    string varchar(64)
);

CREATE UNLOGGED TABLE unlogged (
    id bigint PRIMARY KEY,
    time timestamp,
    string char(10)
);
