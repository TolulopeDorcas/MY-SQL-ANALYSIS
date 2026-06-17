# MY-SQL-ANALYSIS
SQL analysis of an e-commerce dataset exploring payment methods, product performance, cancellations, returns, revenue trends, and pricing insights using MySQL.
# E-Commerce Sales Performance Analysis Using SQL

## Overview

This project demonstrates how SQL can be used to analyze e-commerce transaction data and generate meaningful business insights.

Using MySQL, I explored customer purchasing patterns, payment preferences, product performance, revenue generation, and order status trends. The analysis was conducted through SQL queries involving filtering, sorting, grouping, and aggregation techniques.

---

## Project Goal

The objective of this project was to use SQL to extract valuable insights from an e-commerce dataset and answer key business questions that can support data-driven decision-making.

---

## Dataset Description

The dataset contains e-commerce transaction records, including:

- Product Name
- Quantity Purchased
- Unit Price
- Payment Method
- Order Status
- Transaction Details

---

## Tools Used

- MySQL
- SQL
- GitHub

---

## SQL Concepts Applied

### Data Retrieval
- SELECT

### Data Filtering
- WHERE

### Data Sorting
- ORDER BY

### Data Aggregation
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

### Data Grouping
- GROUP BY

---

## Business Questions Answered

### 1. How many orders were recorded in the dataset?

Used COUNT() to determine the total number of transactions.

### 2. Which payment methods are most frequently used?

Analyzed customer payment preferences by counting transactions for each payment method.

### 3. Which products have the highest average order value?

Calculated the average value of purchases for each product using:

```sql
AVG(UnitPrice * Quantity)
```

### 4. Which products have the highest cancellation and return rates?

Evaluated product performance by comparing completed, cancelled, and returned orders.

### 5. Which products generate the most revenue?

Revenue was calculated using:

```sql
SUM(UnitPrice * Quantity)
```

### 6. Which products show the largest variation in order value?

Compared minimum and maximum order values to identify products with significant price variability.

---

## Sample Query

```sql
SELECT Product,
       ROUND(SUM(UnitPrice * Quantity),2) AS Total_Revenue
FROM Ecommerce_Data
GROUP BY Product
ORDER BY Total_Revenue DESC;
```

---

## Key Insights

- Identified the most preferred payment methods among customers.
- Determined top-performing products based on revenue generation.
- Measured product cancellation and return trends.
- Analyzed average order values across products.
- Evaluated pricing patterns and revenue opportunities.

---

## Project Structure

```text
E-Commerce-SQL-Analysis/
│
├── Dataset/
│   └── Ecommerce_Dataset.csv
│
├── SQL Scripts/
│   └── Ecommerce_SQL_Analysis.sql
│
├── README.md
│
└── Project_Report.pdf
```

---

## Results

The analysis provided valuable insights into:

- Customer purchasing behavior
- Product performance
- Revenue generation
- Payment preferences
- Order fulfillment trends

These findings can help businesses improve operational efficiency, enhance customer satisfaction, and maximize revenue.

---

## Author

### Tolulope Dorcas

Aspiring Data Analyst with skills in:

- Excel
- SQL
- Power BI
- Data Cleaning
- Data Visualization
- Exploratory Data Analysis (EDA)

## Project Status

Completed ✔️

This project was developed as part of my Data Analytics learning journey to strengthen practical SQL and business analysis skills.
