SELECT class.oid                                   AS "OID",
	   relname                                     AS "Relation Name",
	   pg_relation_size(class.oid) / 8192          AS "Amount Pages",
	   pg_size_pretty(pg_relation_size(class.oid)) AS "Relation Size"
FROM pg_class class
		 INNER JOIN pg_namespace schema
					ON schema.oid = class.relnamespace
		 INNER JOIN pg_authid usr
					ON usr.oid = class.relowner
		 LEFT JOIN pg_tablespace tblsp
				   ON tblsp.oid = class.reltablespace
WHERE relname = 'no_autovacuum'
