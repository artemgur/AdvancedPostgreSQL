CREATE UNLOGGED TABLE no_autovacuum (
    id serial PRIMARY KEY,
    name varchar(32)
) WITH (AUTOVACUUM_ENABLED = FALSE)
