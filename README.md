# 📊 Retail Sales Analytics with PostgreSQL  

👨‍💻 **Author:** Vishal Kumar  
🔗 **LinkedIn:** [Vishal Kumar](https://www.linkedin.com/in/vishal013/)  

---

## 📖 Project Overview  
This repository contains **Task 6** from my **Data Analyst Internship at Elevate Labs**, where I performed a complete **end-to-end analysis** of retail sales data using **PostgreSQL**.  
The project demonstrates practical skills in **database management**, **data aggregation**, and **business intelligence** on a synthetic retail dataset.  

The dataset includes transaction-level details such as:  
- Product information  
- Pricing and quantities  
- Customer demographics  
- Payment methods  
- Purchase dates  

---

## 🛠 Key Steps & Implementation  

### 1️⃣ Database Schema Design  
- Designed a **PostgreSQL table** with appropriate data types (`INTEGER`, `TEXT`, `NUMERIC`, `DATE`).  
- Ensured schema compatibility for smooth **data loading and querying**.  

### 2️⃣ Data Import & ETL  
- Imported `synthetic_online_retail_data.csv` using bulk-loading commands (`COPY` and `\copy`).  
- Converted and parsed `order_date` into proper **DATE format**.  

### 3️⃣ Data Transformation & Preparation  
- Extracted **YEAR** and **MONTH** from `order_date` using `EXTRACT()` for time-series analysis.  
- Validated and cleaned records for accuracy.  

### 4️⃣ Analytical Querying  
- **Monthly Total Revenue**:  
  ```sql
  SUM(quantity * price)
