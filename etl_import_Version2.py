import mysql.connector
import csv

# Example: Import customers.csv to the MySQL database

conn = mysql.connector.connect(
    host='localhost',
    user='your_user',
    password='your_password',
    database='sales_analytics'
)

cursor = conn.cursor()

with open('customers.csv', 'r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        cursor.execute("""
            INSERT INTO customers (name, email, city, state, join_date)
            VALUES (%s, %s, %s, %s, %s)
        """, (row['name'], row['email'], row['city'], row['state'], row['join_date']))

conn.commit()
cursor.close()
conn.close()
print("Customer data imported successfully.")