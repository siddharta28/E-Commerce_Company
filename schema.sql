CREATE DATABASE IF NOT EXISTS Ecommerce_company;
USE Ecommerce_company;

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  price DECIMAL(10,2)
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
  order_id INT,
  product_id INT,
  quantity INT,
  price_per_unit DECIMAL(10,2),
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
