-- 1. Total Sales by Month
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(total_amount) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- 2. Top Performing Products
SELECT p.name, SUM(s.quantity) AS total_units_sold, SUM(s.total_amount) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sales DESC
LIMIT 5;

-- 3. Sales by Sales Representative
SELECT r.name, t.team_name, SUM(s.total_amount) AS rep_sales
FROM sales s
JOIN sales_reps r ON s.rep_id = r.rep_id
JOIN sales_teams t ON r.team_id = t.team_id
GROUP BY r.rep_id
ORDER BY rep_sales DESC;

-- 4. Customer Segmentation (by total spend)
SELECT c.name, c.city, c.state, SUM(s.total_amount) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- 5. Inventory Turnover (products running low)
SELECT name, stock
FROM products
WHERE stock < 100
ORDER BY stock ASC;

-- 6. New Customers per Month
SELECT DATE_FORMAT(join_date, '%Y-%m') AS month, COUNT(*) AS new_customers
FROM customers
GROUP BY month
ORDER BY month;