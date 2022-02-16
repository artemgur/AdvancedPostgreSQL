CREATE TABLE toast_plain (
	id serial PRIMARY KEY,
	text text
);

ALTER TABLE toast_plain ALTER COLUMN text SET STORAGE PLAIN;

CREATE TABLE toast_extended (
	id serial PRIMARY KEY,
	text text
);

ALTER TABLE toast_plain ALTER COLUMN text SET STORAGE EXTENDED;

CREATE TABLE toast_external (
	id serial PRIMARY KEY,
	text text
);

ALTER TABLE toast_external ALTER COLUMN text SET STORAGE EXTERNAL;

CREATE TABLE toast_main (
	id serial PRIMARY KEY,
	text text
);

ALTER TABLE toast_main ALTER COLUMN text SET STORAGE MAIN;


