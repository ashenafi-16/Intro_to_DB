-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the created database
USE alx_book_store;

-- Create the 'Customers' table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,  
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Create the 'Orders' table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the 'Order_Details' table
CREATE TABLE Order_Details (
    order_detailid INT PRIMARY KEY,  
    order_id INT,
    book_id INT,
    quantity DOUBLE,  
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Create the 'Authors' table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- Create the 'Books' table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DECIMAL(10, 2),
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
