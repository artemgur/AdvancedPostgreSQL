import csv
import matplotlib.pyplot as plt

transaction_numbers = []
latencies = []

with open("../PostgreSQL Task 2 (Unlogged)/PgBenchInsert/pgbench_log.7207") as file:
    reader = csv.DictReader(file, delimiter=' ', fieldnames=['client_id', 'transaction_no', 'time', 'script_no', 'time_epoch', 'time_us'])
    for row in reader:
        transaction_numbers.append(int(row['transaction_no']))
        latencies.append(int(row['time']))

plt.scatter(transaction_numbers, latencies)
#plt.show()
plt.savefig("Graph.png", format="PNG")

minLatency = min(latencies)
maxLatency = max(latencies)
delta = maxLatency - minLatency

quarter1 = minLatency + delta * 0.25
quarter2 = minLatency + delta * 0.5
quarter3 = minLatency + delta * 0.75

lenLatency = len(latencies)

fraction1 = len(list(filter(lambda x: x <= quarter1, latencies))) / lenLatency
fraction2 = len(list(filter(lambda x: quarter1 < x <= quarter2, latencies))) / lenLatency
fraction3 = len(list(filter(lambda x: quarter2 < x <= quarter3, latencies))) / lenLatency
fraction4 = len(list(filter(lambda x: quarter1 < x, latencies))) / lenLatency

print(fraction1, fraction2, fraction3, fraction4)
