# Sales Analytics Dashboard (MySQL)

A portfolio-ready project for business analysts to demonstrate hands-on experience with relational databases, SQL analytics, and business reporting.

---

## Project Overview

The **Sales Analytics Dashboard** is a comprehensive analytics solution built with MySQL. It simulates the core data pipeline, reporting, and business insights functions found in real-world sales-driven organizations. The project is designed to showcase your ability to:

- Design normalized relational databases
- Perform essential sales and customer analytics
- Generate actionable business insights using SQL
- Automate reporting and data import processes

---

## Features

- Normalized Schema: Well-structured tables for customers, products, sales teams, representatives, and transactions.
- Sample Data: Ready-to-load demo dataset for instant analytics and visualization.
- Business-Driven Queries: SQL scripts for KPIs, customer segmentation, trend analysis, inventory alerts, and more.
- ETL Example: Optional Python script to automate data imports from CSV files.

---

## Project Structure

```
sales-analytics-dashboard/
├── schema.sql              # Database schema: tables & relationships
├── sample_data.sql         # Demo sales, customers, products, teams, reps
├── analytics_queries.sql   # Business-focused SQL queries
├── etl_import.py           # (Optional) Python script for CSV data import
└── README.md               # Project overview and usage guide
```

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/sales-analytics-dashboard.git
cd sales-analytics-dashboard
```

### 2. Create the Database & Tables

Open your MySQL client and run:

```sql
SOURCE schema.sql;
```

### 3. Insert Sample Data

```sql
SOURCE sample_data.sql;
```

### 4. Run Analytics Queries

Open `analytics_queries.sql` and execute the queries for instant insights.  
Export results to Excel or your favorite BI tool for visualization.

---

## Example Business Questions Answered

- What are the monthly, quarterly, or yearly sales trends?
- Who are our top customers and what are their buying patterns?
- Which sales reps and teams are performing best?
- Which products are running low in inventory?
- How many new customers did we acquire each month?

---

## (Optional) Automate Data Import

To import your own CSV data, update the connection details in `etl_import.py` and run:

```bash
python etl_import.py
```

---

## Demo Use Case

This project is ideal for:

- Portfolio showcase: Demonstrate your SQL and analytics capabilities to recruiters.
- Interview prep: Practice answering real business analyst SQL interview questions.
- Foundational learning: Build confidence in data modeling, ETL, and reporting.

---

## Customization Ideas

- Connect to BI tools like Metabase or Apache Superset for interactive dashboards.
- Expand the schema for more business cases (returns, discounts, marketing).
- Integrate with visualization libraries in Python (pandas, matplotlib, seaborn).

---

