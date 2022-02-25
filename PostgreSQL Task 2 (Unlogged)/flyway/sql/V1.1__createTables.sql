CREATE TABLE logged (
    id bigserial PRIMARY KEY,
    time timestamp,
    string char(10)
);

CREATE UNLOGGED TABLE unlogged (
    id bigserial PRIMARY KEY,
    time timestamp,
    string char(10)
);
