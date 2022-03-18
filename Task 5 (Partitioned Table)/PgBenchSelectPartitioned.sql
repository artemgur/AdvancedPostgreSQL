\set id random(1, 1000000)
SELECT * FROM partitioned WHERE id = :id
