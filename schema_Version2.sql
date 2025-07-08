-- Database: sales_analytics

CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    join_date DATE
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- Sales Teams Table
CREATE TABLE sales_teams (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(100)
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES sales_teams(team_id)
);

-- Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE,
    customer_id INT,
    product_id INT,
    rep_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);