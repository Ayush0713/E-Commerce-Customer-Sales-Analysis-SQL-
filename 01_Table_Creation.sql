-- CREATE DATABASE
CREATE DATABASE ecommerce_customer_analysis;

-- Create Tables
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
Customer_id INT PRIMARY KEY,
Gender VARCHAR (10),
Age INT,
City VARCHAR(50),
Loyalty_Score INT
);
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_category VARCHAR(50),
    order_value NUMERIC,
    payment_method VARCHAR(20),
    delivered INT);
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC,
    stock INT
);
DROP TABLE IF EXISTS Reviews;
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    rating INT,
    review_text TEXT
	);

Select * from Customers;
Select * from Orders;
Select * from Products;
Select * from Reviews;