UPDATE task3
	SET name = md5(cast(random() AS text))
