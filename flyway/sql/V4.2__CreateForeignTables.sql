CREATE EXTENSION postgres_fdw;

CREATE SERVER server1 FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host 'localhost', port '5432', dbname 'postgres');

CREATE USER MAPPING FOR postgres SERVER server1
OPTIONS (user 'postgres', password 'postgres');

CREATE FOREIGN TABLE table1(
    id serial,
    name varchar(32)
) SERVER server1 OPTIONS (schema_name 'schema1', table_name 'table1');

CREATE FOREIGN TABLE table2(
    id serial,
    name varchar(32)
) SERVER server1 OPTIONS (schema_name 'schema2', table_name 'table2');

CREATE FOREIGN TABLE table3(
    id serial,
    name varchar(32)
) SERVER server1 OPTIONS (schema_name 'schema3', table_name 'table3');


