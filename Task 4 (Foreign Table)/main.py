import psycopg2
from insert import insert
from plot_data_distribution import plot_data_distribution

connection = psycopg2.connect(dbname='postgres', user='postgres', password='postgres', host='localhost')
insert(connection, 10_000)
plot_data_distribution(connection)
