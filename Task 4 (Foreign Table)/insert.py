import random

modulus_to_table_name = {0: 'table1', 1: 'table2', 2: 'table3'}

def insert(connection, count):
    with connection.cursor() as cursor:
        for q in range(count):
            random_number = random.random()
            hash_modulus = hash(random_number) % 3
            table_name = modulus_to_table_name[hash_modulus]
            cursor.execute(f'INSERT INTO {table_name}(name) VALUES (md5(cast({random_number} AS text)))')
        connection.commit()

