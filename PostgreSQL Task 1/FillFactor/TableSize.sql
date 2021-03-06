SELECT class.oid                                   AS "OID",
	   relname                                     AS "Relation Name",
	   relpages                                    AS "Amount Pages",
	   reltoastrelid                               AS "TOAST table",
	   pg_size_pretty(pg_relation_size(class.oid)) AS "Relation Size"
FROM pg_class class
		 INNER JOIN pg_namespace schema
					ON schema.oid = class.relnamespace
		 INNER JOIN pg_authid usr
					ON usr.oid = class.relowner
		 LEFT JOIN pg_tablespace tblsp
				   ON tblsp.oid = class.reltablespace
WHERE relname IN ('fillfactor50', 'fillfactor75', 'fillfactor90', 'fillfactor100')
