import mysql.connector
try:
    mydb = mysql.connector.connect(
    host="localhost",
    user="sqluser",
    password="password",
    database="alx_book_store"
)
    print(f"Database '{mydb.database}' created successfully!")
except:
    print("error")
finally:
    if mydb.connect:
        mydb.close()
        print("Database connection closed.")

    
    