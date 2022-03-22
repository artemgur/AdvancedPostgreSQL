import matplotlib.pyplot as plt
import psycopg2


table_list = ['table1', 'table2', 'table3']


def plot_data_distribution(connection):
    with connection.cursor() as cursor:
        partition_size_list = []
        for table_name in table_list:
            cursor.execute(f"SELECT count(*) AS row_count FROM {table_name}")
            partition_size_list.append(cursor.fetchone()[0])

        plt.bar(table_list, partition_size_list)
        #plt.show()
        plt.savefig("Graph.png", format="PNG")
