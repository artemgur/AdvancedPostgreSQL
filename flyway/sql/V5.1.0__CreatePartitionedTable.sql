CREATE TABLE partitioned (
    id serial PRIMARY KEY,
    name char(32)
)
PARTITION BY HASH (id)
