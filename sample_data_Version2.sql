USE sales_analytics;

-- Insert Customers
INSERT INTO customers (name, email, city, state, join_date) VALUES
('Alice Smith', 'alice@example.com', 'New York', 'NY', '2023-01-10'),
('Bob Johnson', 'bob@example.com', 'Los Angeles', 'CA', '2023-02-15'),
('Charlie Lee', 'charlie@example.com', 'Chicago', 'IL', '2023-03-20'),
('Diana King', 'diana@example.com', 'Houston', 'TX', '2023-04-05');

-- Insert Products
INSERT INTO products (name, category, price, stock) VALUES
('Laptop Pro', 'Electronics', 1200.00, 50),
('Office Chair', 'Furniture', 150.00, 200),
('Desk Lamp', 'Electronics', 40.00, 100),
('Water Bottle', 'Accessories', 20.00, 300);

-- Insert Sales Teams
INSERT INTO sales_teams (team_name) VALUES
('East Coast Team'),
('West Coast Team');

-- Insert Sales Representatives
INSERT INTO sales_reps (name, team_id) VALUES
('Emily Carter', 1),
('Frank Moore', 1),
('Grace Miller', 2),
('Henry Davis', 2);

-- Insert Sales
INSERT INTO sales (sale_date, customer_id, product_id, rep_id, quantity, total_amount) VALUES
('2023-05-10', 1, 1, 1, 2, 2400.00),
('2023-05-12', 2, 2, 2, 4, 600.00),
('2023-05-13', 3, 3, 3, 3, 120.00),
('2023-05-14', 4, 4, 4, 10, 200.00),
('2023-06-01', 1, 2, 1, 1, 150.00),
('2023-06-02', 2, 3, 2, 2, 80.00),
('2023-06-05', 3, 1, 3, 1, 1200.00),
('2023-06-07', 4, 4, 4, 20, 400.00);