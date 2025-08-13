import mysql.connector

# Replace with your connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Sona@a7a#404jusy",
    database="alx_book_store"
)


print("Database 'alx_book_store' created successfully!")

with open("alx_book_store.sql", "r", encoding="utf-8") as f:
    sql_content = f.read()

if "CREATE DATABASE IF NOT EXISTS alx_book_store" in sql_content:
    print("The script contains CREATE DATABASE alxbookstore")
else:
    print("The script does not contain CREATE DATABASE alxbookstore")

try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Sona@a7a#404jusy",
)
    print("connected")
except mysql.connector.Error as err:
    print("failed to connect")