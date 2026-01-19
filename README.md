# Supermart-Sales-Analysis-Using-SQL
📌 Project Overview
This project is an end-to-end SQL data analysis performed on a Supermart sales dataset. The goal of this project is to analyze sales, profit, customer behavior, and regional performance using MySQL. It demonstrates core SQL concepts such as aggregation, grouping, subqueries, window functions, and filtering.

This project is suitable for Data Analyst roles, especially for beginners to intermediate levels.
🗂️ Dataset Description

Table Name: supermarts
The dataset contains transactional sales data with the following key columns:
OrderID
Customer_Name
Category
Region
City
State
Sales
Profit
Discount

Each row represents a single order placed by a customer.

🛠️ Tools & Technologies Used
Database: MySQL
Language: SQL

Concepts Covered:
GROUP BY & HAVING
Aggregate Functions (SUM, AVG, COUNT)
Subqueries
Window Functions (RANK)
Sorting & Filtering

🧩 Database Setup
CREATE DATABASE Supermart;
USE Supermart;

📊 Business Questions & SQL Solutions
Q1. Find total sales by each category
Helps identify which product category generates the highest revenue.

Q2. Find the top-selling category in each region
Uses a window function (RANK) to determine regional performance leaders.

Q3. Find customers with the highest total profit
Identifies high-value customers contributing the most profit.

Q4. Identify loss-making categories
Highlights customers and categories where total profit is negative.

Q5. Which category is most profitable?
Determines the single most profitable product category.

Q6. Which city has consistent high profits?
Identifies the city contributing the highest overall profit.

Q7. Which state has consistent high profits?
Helps understand state-wise performance trends

Q8. Find customers who placed more than one order
Useful for identifying repeat customers.

Q9. Get orders where discount is higher than average discount
Helps analyze aggressive discounting strategies.
