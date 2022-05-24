SELECT * FROM abc
JOIN abc abc1 ON abc.a = abc1.b
JOIN abc abc2 ON abc.b = abc2.c
JOIN sb_1000 ON abc.a = sb_1000.c
JOIN sb_1000 s1 ON abc.c = s1.b
JOIN task3 ON sb_1000.a = task3.id
JOIN sb_1000 s2 ON abc2.b = s2.b
JOIN task3 t ON abc.b = t.id
LIMIT 50
