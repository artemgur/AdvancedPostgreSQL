SELECT * FROM abc
JOIN sb_1000 ON abc.a = sb_1000.a
JOIN abc abc2 ON abc.b = abc2.c
JOIN sb_10000 ON abc.a = sb_10000.c
JOIN sb_100000 ON abc.c = sb_100000.c
JOIN sb_1000 s ON abc.c = s.b
JOIN task3 ON abc.b = task3.id
