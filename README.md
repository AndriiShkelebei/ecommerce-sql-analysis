# 🛒 E-commerce Data Analysis (SQL Project)

## 📌 Overview

This project analyzes a real-world e-commerce dataset using SQL to uncover key business insights related to revenue, customer behavior, product performance, and customer satisfaction.

The goal is to simulate real data analyst tasks and demonstrate strong SQL skills, analytical thinking, and business understanding.

---

## 🎯 Business Questions

* How is revenue changing over time?
* What is the customer retention rate?
* Which products and categories generate the most revenue?
* What factors influence customer satisfaction?

---

## 📂 Dataset

Dataset: **Brazilian E-commerce Public Dataset (Olist)**
Source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset includes:

* Orders
* Customers
* Products
* Payments
* Reviews

---

## 🧹 Data Preparation

* Converted data types (TEXT → numeric, timestamps)
* Created primary and foreign keys
* Handled duplicates and inconsistencies
* Fixed revenue calculation (avoided duplication by using order_items)

---

## 📈 Analysis

### 💰 Revenue

* Total revenue: **16,008,872**
* Strong growth in 2017–2018
* Peak month: **November 2017**
* Average order value: **160.99**

---

### 👤 Customers

* Total customers: **96,096**
* Retention rate: **3.12%**
* Average orders per customer: **1.03**

👉 Most customers make only one purchase → low retention

---

### 🛒 Products

* Revenue distributed across many products

* Top categories:

  * Beauty & Health
  * Watches & Gifts
  * Home & Living

* Pareto insight:

  * ~28% of products generate 80% of revenue

👉 Business is diversified and not dependent on a few products

---

### ⭐ Customer Satisfaction

* Average rating: **4.09**

#### Key insights:

* On-time delivery → **4.29 rating**
* Delayed delivery → **2.57 rating**

👉 Delivery delays significantly reduce customer satisfaction

* High-value orders → lower ratings
  👉 Customers with higher spending have higher expectations

* Some sellers consistently receive ratings below 3.0
  👉 Indicates seller performance issues

---

## 🔍 Key Insights

* Customer retention is critically low
* Delivery delays are the strongest driver of негативних відгуків
* Seller performance varies and impacts customer experience
* Revenue is stable and diversified

---

## 💡 Recommendations

* Improve delivery reliability and reduce delays
* Implement retention strategies (loyalty programs, remarketing)
* Monitor and manage low-performing sellers
* Focus on high-performing product categories

---

## 🛠 Tools Used

* PostgreSQL
* SQL
* pgAdmin

---

## 📂 Project Structure

* sql/revenue.sql
* sql/customers.sql
* sql/products.sql
* sql/reviews.sql

---

## 🚀 Author

Aspiring Data Analyst focused on SQL and business analytics
