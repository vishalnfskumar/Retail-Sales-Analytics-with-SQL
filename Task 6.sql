CREATE TABLE synthetic_online_retail_data (
    customer_id      INTEGER,
    order_date       DATE,
    product_id       INTEGER,
    category_id      INTEGER,
    category_name    TEXT,
    product_name     TEXT,
    quantity         INTEGER,
    price            NUMERIC(10,2),
    payment_method   TEXT,
    city             TEXT,
    review_score     NUMERIC(3,1),
    gender           CHAR(1),
    age              INTEGER
);
select *from synthetic_online_retail_data
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * price) AS total_revenue,
    COUNT(*) AS total_orders
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year, month
LIMIT 12;


SELECT
    order_date,
    EXTRACT(MONTH FROM order_date) AS month
FROM synthetic_online_retail_data
LIMIT 20;



SELECT
    order_date,
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM synthetic_online_retail_data
LIMIT 20;


-- GROUP BY year/month--

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(*) AS total_orders
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year, month;
 -- Use SUM() for revenue:

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * price) AS total_revenue
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year, month;

--COUNT(DISTINCT order_id) for volume.

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(*) AS total_orders   -- replace with COUNT(DISTINCT order_id) if available
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year, month;


--ORDER BY for sorting--


SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * price) AS total_revenue
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year ASC, month ASC;  



 -- shows only the first 12 rows
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * price) AS total_revenue,
    COUNT(*) AS total_orders
FROM synthetic_online_retail_data
GROUP BY year, month
ORDER BY year, month
LIMIT 12; 






