CREATE DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,  
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT 
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details (
    order_detailid INT PRIMARY KEY,  
    order_id INT,
    book_id INT,
    quantity DOUBLE,  
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

create table Authors(
    author_id INT Primary key,
    author_name VARCHAR(215)
);
create table Books(
    book_id int PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    Foreign Key (author_id) REFERENCES Authors(author_id),
    price DECIMAL,
    publication_date DATE
);
