# 📦 E-Commerce Company – MySQL Case Study

Analyzed 4 structured tables and 4 CSV files (1,500+ records) for an e-commerce company using MySQL to extract customer, product, sales, and inventory insights with real-world business queries and KPIs.

---

## 📑 Table of Contents

- [📁 Dataset Overview](#-dataset-overview)
- [🧠 Business Goals](#-business-goals)
- [🛠️ Tools Used](#️-tools-used)
- [🔍 Sample Queries](#-sample-queries)
- [📂 Project Structure](#-project-structure)
- [📈 Outcomes & Learning](#-outcomes--learning)

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
```

## 📂 Project Structure

E-Commerce_Company/
├── 📄 SIDD'S MYSQL Analysis.sql – Main SQL script including schema creation and analysis queries
├── 📁 E-comm-Dataset-MySQL/ – Folder containing raw CSV files (Customers, Products, Orders, OrderDetails)
│ ├── customers-e-comm.csv – Customer-level data
│ ├── products-e-comm.csv – Product-level details
│ ├── orders-e-comm.csv – Order-level transactional data
│ └── ORDERDetails-E-comm.csv – Line-item data for each order
├── 📄 README.md – Documentation explaining business context, SQL logic, and insights



## 📈 Outcomes & Learning

- ✅ Built a complete e-commerce analysis pipeline in MySQL covering schema design, relational integrity, and business querying.
- ✅ Analyzed 1,500+ rows and 800+ columns across 4 tables, producing insights into customer behavior, order patterns, and product sales.
- ✅ Practiced key SQL concepts including JOINS, GROUP BY, aggregate functions, date filtering, CASE statements, and subqueries.
- ✅ Learned to import and structure real-world datasets using MySQL Workbench's Table Data Import Wizard.
- ✅ Enhanced business understanding by simulating real use cases like segmentation, inventory tracking, and sales optimization.
