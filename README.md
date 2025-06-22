# 📦 E-Commerce Company – MySQL Case Study

A SQL-based data analysis case study simulating an e-commerce company database to derive business insights.

---

## 📁 Project Structure

- `schema.sql` → SQL script to create all tables and relationships
- `queries.sql` → Insightful queries for customer, product, sales, and inventory analysis
- `E-comm-Dataset-MySQL/` → Contains raw `.csv` files used to populate the database

---

## 🧾 Dataset Overview

| Table Name       | Description                                |
|------------------|--------------------------------------------|
| Customers        | Customer ID, Name, and Location            |
| Products         | Product ID, Name, Category, Price          |
| Orders           | Order ID, Order Date, Customer ID, Amount |
| OrderDetails     | Line items (Order ID, Product ID, Qty, Unit Price) |

All `.csv` files were imported using the MySQL Workbench **Table Data Import Wizard**.

---

## 🔍 Key SQL Insights Covered

- Top-spending customers and customer distribution by location
- Best-performing products and revenue per category
- Monthly sales trends and average order value
- Order-level and product-level profitability
- Created view: `monthly_dashboard` for consolidated KPIs

---

## 🛠 Tools & Skills Used

- MySQL Workbench (v8+)
- SQL (Joins, Aggregations, Views, Subqueries)
- CSV Import & Data Cleaning
- Database schema design and relationships

---

## 📈 Sample SQL Query Snippet

```sql
SELECT location, COUNT(customer_id) AS customer_count
FROM Customers
GROUP BY location
ORDER BY customer_count DESC;
