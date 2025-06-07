 -- EDA -- 
 SELECT * FROM category;
  SELECT * FROM customers;
 SELECT * FROM inventory;
  SELECT * FROM order_items;
 select * from payments;
  SELECT * FROM products;
 select * from sellers;
 SELECT * FROM shippings;

  SELECT * FROM shippings
  WHERE return_date is not null;

   SELECT * FROM orders
   where order_id = 6747;
  
   SELECT * FROM payments
   where order_id = 6747; 

   
 -- STEP 2 Data Quality Checks-- 
 SELECT 'Category' AS Table_Name, COUNT(*) AS Total_Rows, COUNT(category_id) AS Non_Null_Ids, COUNT(category_name) AS Non_Null_Names FROM Category
UNION
SELECT 'Customers', COUNT(*), COUNT(customer_id), COUNT(first_name) FROM Customers; 

SELECT category_id, COUNT(*) FROM Category GROUP BY category_id HAVING COUNT(*) > 1;

SELECT p.category_id FROM Products p LEFT JOIN Category c ON p.category_id = c.category_id WHERE c.category_id IS NULL;

-- STEP 3 Descriptive Statistics --
--Analyze basic statistics for product prices:--

SELECT MIN(price) AS Min_Price,
MAX(price) AS Max_Price, 
AVG(price) AS Avg_Price, 
STDDEV(price) AS Stddev_Price 
FROM Products;

--Evaluate the distribution of quantities in the Order_items table --
SELECT MIN(quantity) AS Min_Quantity,
MAX(quantity) AS Max_Quantity, 
AVG(quantity) AS Avg_Quantity 
FROM Order_items;

-- Count distinct categories and customers: --
SELECT COUNT(DISTINCT category_name) AS Unique_Categories FROM Category;
SELECT COUNT(DISTINCT first_name || ' ' || last_name) AS Unique_Customers FROM Customers;


--Step 4: Relationship Exploration--
--Objective: Understand relationships between key entities--
--Actions:
--Category-Level Analysis: Count products per category--

SELECT c.category_name,
COUNT(p.product_id) AS Product_Count 
FROM Category c
LEFT JOIN Products p 
ON c.category_id = p.category_id 
GROUP BY c.category_name;

--Customer Behavior: Count the number of orders per customer:

SELECT c.first_name || ' ' || c.last_name AS Customer_Name, 
COUNT(o.order_id) AS Total_Orders 
FROM Customers c LEFT JOIN Orders o 
ON c.customer_id = o.customer_id 
GROUP BY Customer_Name 
ORDER BY 1 LIMIT 5;

--Seller Performance: Analyze total orders and average order value per seller:

SELECT 
    s.seller_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price_per_unit * oi.quantity) AS total_revenue,
    ROUND(SUM(oi.price_per_unit * oi.quantity)::numeric / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM sellers s
LEFT JOIN orders o ON s.seller_id = o.seller_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY s.seller_name;

--Step 5: Trend Analysis --

--Objective: Analyze trends over time and across geographies. --
--Actions:
--Order Trends Over Time: Monthly aggregation of orders:--
SELECT DATE_TRUNC('month', order_date) AS Month,
COUNT(order_id) AS Total_Orders 
FROM Orders 
GROUP BY Month 
ORDER BY Month;

--State-Wise Customer Distribution:
SELECT state, 
COUNT(customer_id) AS Total_Customers 
FROM Customers 
GROUP BY state 
ORDER BY Total_Customers DESC;

--Step 6: Anomalies and Outliers --

--Objective: Detect anomalies and identify potential data issues.--
--Actions:
--Detect products with unusually high or low prices (outliers):--
SELECT * 
FROM Products
WHERE price < (SELECT AVG(price) - 3 * STDDEV(price) FROM Products) 
OR price > (SELECT AVG(price) + 3 * STDDEV(price) FROM Products);

--Identify orders with missing shipping or payment information:--
SELECT o.order_id, 
s.delivery_status,
p.payment_status
FROM Orders o
LEFT JOIN Shippings s
ON o.order_id = s.order_id 
LEFT JOIN Payments p 
ON o.order_id = p.order_id 
WHERE s.shipping_id IS NULL OR p.payment_id IS NULL;

--Step 7: Visualization Preparation -- 
--Objective: Summarize data for easy visualization and reporting.--
--Actions:
--Product Count and Total Sales by Category:
SELECT c.category_name,
COUNT(p.product_id) AS Product_Count,
SUM(oi.price_per_unit * oi.quantity) AS Total_Sales 
FROM Category c 
LEFT JOIN Products p 
ON c.category_id = p.category_id
LEFT JOIN Order_items oi 
ON p.product_id = oi.product_id
GROUP BY c.category_name;


   