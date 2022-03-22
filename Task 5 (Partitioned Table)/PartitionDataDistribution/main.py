import matplotlib.pyplot as plt
import psycopg2

partition_count = 10

connection = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost')
with connection.cursor() as cursor:
    partition_size_list = []
    for i in range(partition_count):
        cursor.execute(f"SELECT count(*) AS row_count FROM partition{i}")
        partition_size_list.append(cursor.fetchone()[0])

    plt.bar(range(partition_count), partition_size_list)
    #plt.show()
    plt.savefig("Graph.png", format="PNG")
