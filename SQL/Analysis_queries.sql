
select * from superstore_raw limit 10;

-- Step 1: High Level KPIs
-- Total number of customers
select COUNT(*) from customers;
/*
COUNT(*)
938 */

-- Total number of orders
select count(*) from orders;
/*count(*)
991*/

-- Total revenue (sum of sales)
select SUM(sales) As Total_revenue from order_items;
/* Total_revenue
507907.36 */

-- Total quantity sold
select SUM(quantity) As Total_quantity_sold from order_items;
/*Total_quantity_sold
5812*/

-- Total Profit 
select sum(profit) As Total_Profit from order_items;
/* Total_Profit
122783.86*/


-- Check for NULLs in key columns
-- Count NULLs in Customers
SELECT 'customers' AS Table_Name, COUNT(*) AS Null_Rows
FROM customers
WHERE customer_id IS NULL OR customer_name IS NULL OR region IS NULL
OR segment IS NULL OR country IS NULL OR city IS NULL OR state IS NULL
OR postal_code is NULL

UNION ALL

-- Count NULLs in Orders
SELECT 'orders', COUNT(*)
FROM orders
WHERE order_id IS NULL OR customer_id IS NULL OR order_date IS NULL OR ship_date IS NULL OR ship_mode IS NULL 

UNION ALL

-- Count NULLs in Products
SELECT 'products', COUNT(*)
FROM products
WHERE product_id IS NULL OR product_name IS NULL OR category IS NULL OR 
sub_category IS NULL

UNION ALL

-- Count NULLs in Order_Items
SELECT 'order_items', COUNT(*)
FROM order_items
WHERE order_id IS NULL OR product_id IS NULL OR quantity IS NULL OR sales IS NULL OR discount IS NULL OR profit IS NULL ;
/* Table_Name	Null_Rows
customers	0
orders	0
products	0
order_items	0 */


-- 2)Top-Selling Products- (Top 5 Products by Quantity Sold)
select p.product_name , SUM(oi.quantity) AS total_quantity from products p 
JOIN order_items oi on p.product_id = oi.product_id 
group by p.product_name 
order by total_quantity desc
LIMIT 5 ;

-- Category-wise Revenue & Profit
select  p.category , SUM(oi.sales) As Total_Revenue, SUM(oi.profit) As Total_Profit from products p 
JOIN order_items oi on p.product_id = oi.product_id 
group by  p.category ;


-- Monthly Revenue Trend
select Month(o.order_date) As Month , SUM(oi.sales) As Monthly_revenue 
from orders o 
JOIN order_items oi on o.order_id = oi.order_id 
group by Month(o.order_date)
order by Month(o.order_date);

--  4. Customer Segmentation
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.sales), 2) AS total_revenue,
    ROUND(AVG(oi.sales), 2) AS avg_order_value
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    c.customer_id, c.customer_name
ORDER BY 
    total_revenue DESC;

-- RFM analysis 
-- We'll use the latest order date per customer and subtract it from the maximum date in the dataset.
SELECT 
    customer_id,
    DATEDIFF(
        (SELECT MAX(order_date) FROM orders), 
        MAX(order_date)
    ) AS Recency
FROM orders
GROUP BY customer_id;

-- Step 2: Calculate Frequency
-- Count the number of unique orders per customer:
SELECT 
    customer_id,
    COUNT(DISTINCT order_id) AS Frequency
FROM orders
GROUP BY customer_id;

-- Step 3: Calculate Monetary
-- Sum of total sales per customer. 
SELECT 
    o.customer_id,
    ROUND(SUM(oi.sales), 2) AS Monetary
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id;
