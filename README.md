# Retail-Sales-Analytics-with-PostgreSQL
This repository contains Task 6 of my Data Analyst Internship at Elevate Labs, where I performed an end-to-end analysis of retail sales data using PostgreSQL. The project demonstrates practical database management, data aggregation, and business intelligence techniques on a synthetic retail dataset.

Project Overview
The aim of this project was to import a CSV dataset into a PostgreSQL database, structure the data effectively, and execute analytical SQL queries to uncover meaningful business insights. The dataset contains transaction-level details such as product information, pricing, quantities, customer demographics, payment methods, and purchase dates.

#Key Steps & Implementation

1.Database Schema Design

2.Created a well-structured PostgreSQL table with appropriate data types (INTEGER, TEXT, NUMERIC, DATE, etc.).

3.Ensured schema compatibility with the dataset for seamless loading and querying.

4.Data Import & ETL

5.Imported the synthetic_online_retail_data.csv file into PostgreSQL using bulk-loading commands (COPY and \copy).

6.Handled data type conversions (e.g., parsing order_date as DATE).

7.Data Transformation & Preparation

8.Extracted YEAR and MONTH from order_date using EXTRACT() for time-series analysis.

9.Validated and cleaned data where necessary for accurate calculations.

10.Analytical Querying

11.Calculated monthly total revenue using:

sql
Copy
Edit
SUM(quantity * price)
Counted order volumes using COUNT(*) (and simulated COUNT(DISTINCT order_id) logic when required).

12.Grouped results by YEAR and MONTH with GROUP BY.

13.Ordered results chronologically using ORDER BY.

14.Applied LIMIT to control result size for reporting.

15.Business Insights Generated

16.Identified monthly sales performance trends.

17.Highlighted seasonal fluctuations in revenue and order volume.

18.Provided insights that could be used for demand forecasting and strategic decision-making.

#Skills & Tools Used

1.PostgreSQL – SQL scripting, aggregation, filtering, grouping, sorting

2.ETL Processes – CSV-to-database loading & preparation

3.Data Modeling – Schema design & column data type selection

4.Business Intelligence – Revenue analysis, sales trend reporting, KPI extraction

