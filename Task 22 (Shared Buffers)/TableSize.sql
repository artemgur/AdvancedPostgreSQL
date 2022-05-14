SELECT class.oid                                   AS "OID",
	   relname                                     AS "Relation Name",
	   pg_size_pretty(pg_relation_size(class.oid)) AS "Relation Size"
FROM pg_class class
WHERE relname LIKE 'sb_1000%'
