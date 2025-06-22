# 📦 E-Commerce Company – MySQL Case Study

An end-to-end SQL case study project simulating a real-world e-commerce business. The project involves creating a database schema, importing structured data, and analyzing key business metrics to support data-driven decisions.

---

## 📁 Dataset Overview

This project uses 4 interrelated datasets:

| Table Name       | Description                                         |
|------------------|-----------------------------------------------------|
| Customers        | customer_id, name, location                         |
| Products         | product_id, name, category, price                   |
| Orders           | order_id, order_date, customer_id, total_amount     |
| OrderDetails     | order_id, product_id, quantity, price_per_unit      |

These `.csv` files were imported using MySQL Workbench’s **Table Data Import Wizard**.

---

## 🧠 Business Goals

- 📌 **Customer Analysis** – Identify top customers and location-based trends
- 📌 **Product Performance** – Evaluate high/low selling items and category-wise revenue
- 📌 **Sales Trends** – Track monthly order and revenue growth
- 📌 **Inventory Insights** – Spot underperformers and reorder signals

---

## 🛠️ Tools Used

- MySQL Workbench
- SQL (Joins, Aggregates, Views, Subqueries, Grouping)
- Table Data Import Wizard
- CSV files (manually cleaned)

---

## 🔍 Sample Queries

```sql
-- Customers by Location
SELECT location, COUNT(*) AS total_customers
FROM Customers
GROUP BY location
ORDER BY total_customers DESC;

-- Top 5 Products by Revenue
SELECT p.name, SUM(od.quantity * od.price_per_unit) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.name
ORDER BY total_revenue DESC
LIMIT 5;
