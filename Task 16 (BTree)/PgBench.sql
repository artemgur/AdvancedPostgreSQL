\set a random(1, 1000)
SELECT min(a) OVER(PARTITION BY b, c ORDER BY b, c)
	FROM abc
WHERE a = :a
ORDER BY c, b