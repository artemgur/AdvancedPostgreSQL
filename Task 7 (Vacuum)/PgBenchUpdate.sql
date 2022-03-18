\set x random(1, 1000000)
UPDATE no_autovacuum SET name = md5(cast(:x AS text)) WHERE id=1
