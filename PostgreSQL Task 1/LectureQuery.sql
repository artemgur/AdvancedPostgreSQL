-- Запрос с лекции 1 (слайд 4)

SELECT class.oid                                   AS "OID",
	   relname                                     AS "Relation Name",
	   schema.nspname                              AS "Schema",
	   usr.rolname                                 AS "Object Owner",
	   coalesce(tblsp.spcname, 'pg_default')       AS "Tablespace",
	   relpages                                    AS "Amount Pages",
	   reltuples                                   AS "Amount Tuples",
	   reltoastrelid                               AS "TOAST table",
	   CASE
		   WHEN relpersistence = 'p' THEN 'Permanent'
		   WHEN relpersistence = 't' THEN 'Temporary'
		   ELSE 'Unlogged'
		   END                                     AS "Type",
	   pg_relation_filepath(class.oid)             AS "File Path",
	   pg_size_pretty(pg_relation_size(class.oid)) AS "Relation Size"
FROM pg_class class
		 INNER JOIN pg_namespace schema
					ON schema.oid = class.relnamespace
		 INNER JOIN pg_authid usr
					ON usr.oid = class.relowner
		 LEFT JOIN pg_tablespace tblsp
				   ON tblsp.oid = class.reltablespace
WHERE relname = 'toast_plain'