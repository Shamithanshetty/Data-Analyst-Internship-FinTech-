CREATE DATABASE sales_analysis;
USE sales_analysis;
SELECT * FROM sales_data;

       --  Customer  Order Analysis
-- Query 1: Total number of orders
SELECT COUNT(*) AS Total_Orders FROM sales_data;

-- Query 2: Orders by Region
SELECT Region, COUNT(*) AS Total_Orders FROM sales_data
GROUP BY Region
ORDER BY Total_Orders DESC;

-- Query 3: Orders by Sales Representative
SELECT Sales_Rep, COUNT(*) AS Total_Orders
FROM sales_data
GROUP BY Sales_Rep
ORDER BY Total_Orders DESC;

            -- Revenue Analysis
-- Query 4: Total revenue
SELECT SUM(Sales_Amount) AS Total_Revenue FROM sales_data;

-- Query 5: Revenue by region
SELECT Region, SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- Query 6: Revenue by Product Category
SELECT Product_Category, SUM(Sales_Amount) AS Total_Revenue
FROM sales_data
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

             -- Product Performance
-- Query 7: Revenue by Product
SELECT Product_ID, SUM(Sales_Amount) AS Total_Revenue 
FROM sales_data
GROUP BY Product_ID
ORDER BY Total_Revenue DESC;

-- Query 8: Quantity Sold by Product
SELECT Product_ID, SUM(Quantity_Sold) AS Total_Quantity
FROM sales_data
GROUP BY Product_ID
ORDER BY Total_Quantity DESC;

-- Query 9: Revenue + quantity by product
SELECT Product_ID, SUM(Sales_Amount) AS Total_Revenue, SUM(Quantity_Sold) AS Total_Quantity
FROM sales_data
GROUP BY Product_ID
ORDER BY Total_Revenue DESC;











