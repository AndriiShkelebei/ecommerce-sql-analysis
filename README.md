# 🛒 E-commerce Data Analysis (SQL Project)

## 📌 Overview

This project analyzes an e-commerce dataset using SQL to uncover key business insights related to revenue, customer behavior, product performance, and customer satisfaction.

The goal is to simulate real-world data analyst tasks and demonstrate strong analytical and business thinking.

---

## 🎯 Business Questions

* How is revenue evolving over time?
* Do customers return or churn after the first purchase?
* Which products and categories drive the most revenue?
* What factors impact customer satisfaction?

---

## 🧹 Data Preparation

* Converted data types (dates, numeric values)
* Created primary and foreign keys
* Removed inconsistencies and duplicates
* Corrected revenue calculation to avoid double counting

---

## 📈 Key Results

### 💰 Revenue

* Total revenue: **16,008,872**
* Strong growth during 2017–2018
* Peak month: **November 2017**
* Average order value: **160.99**

---

### 👤 Customers

* Total customers: **96,096**
* Retention rate: **3.12%**
* Average orders per customer: **1.03**

👉 Most customers make only one purchase → **very low retention**

---

### 🛒 Products

* Revenue is widely distributed across products

* Top categories:

  * Beauty & Health
  * Watches & Gifts
  * Home & Living

* Pareto insight:

  * ~28% of products generate 80% of revenue

👉 Business is diversified and not dependent on a small number of products

---

### ⭐ Customer Satisfaction

* Average rating: **4.09**

#### Key Drivers:

* On-time delivery → **4.29 rating**
* Delayed delivery → **2.57 rating**

👉 Delivery delays reduce satisfaction by **~40%**

* High-value orders have lower ratings
  👉 Customers with higher spending have higher expectations

* Some sellers consistently receive ratings below 3.0
  👉 Indicates quality or service issues

---

## 🔍 Key Insights

* Customer retention is critically low and represents a major growth opportunity
* Delivery delays are the strongest driver of negative reviews
* Seller performance varies significantly and impacts customer experience
* Revenue is stable and well diversified across products

---

## 💡 Recommendations

* Improve delivery reliability and reduce delays
* Implement customer retention strategies (loyalty programs, remarketing)
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

Aspiring Data Analyst with a focus on SQL and business analytics
