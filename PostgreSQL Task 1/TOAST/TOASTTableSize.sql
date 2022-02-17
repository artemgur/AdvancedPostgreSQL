WITH table_data AS (
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
)
SELECT original."OID"           AS "Original OID",
	   toast."OID"              AS "TOAST OID",
	   original."Relation Name" AS "Original Name",
	   toast."Relation Name"    AS "TOAST Name",
	   original."Relation Size" AS "Original Size",
	   toast."Relation Size"    AS "TOAST Size"
FROM table_data AS original
		 JOIN table_data AS toast ON original."TOAST table" = toast."OID" AND original."Relation Name" IN
																			  ('toast_plain', 'toast_extended',
																			   'toast_external', 'toast_main')