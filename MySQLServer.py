import mysql.connector
try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="sqluser",
    password="password"
)
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print(f"Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(f"error: {e}")
finally:
    if mydb.connect:
        mydb.close()
        print("Database connection closed.")

    
    