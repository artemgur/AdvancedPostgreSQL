CREATE EXTENSION IF NOT EXISTS pg_prewarm;

SELECT pg_prewarm('sb_1000');
SELECT pg_prewarm('sb_10000');
SELECT pg_prewarm('sb_100000');
