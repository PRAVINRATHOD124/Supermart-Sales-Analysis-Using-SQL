CREATE DATABASE Supermart;
USE Supermart;

SELECT * FROM supermarts;


-- Q1. Find total sales by each Category.
SELECT Category, SUM(Sales) as Total_Sales
FROM supermarts 
group by Category;


-- Q2. Find the top-selling category in each region.
SELECT Region, Category, Total_Sales
FROM (
    SELECT 
        Region,
        Category,
        SUM(Sales) AS Total_Sales,
        RANK() OVER (PARTITION BY Region ORDER BY SUM(Sales) DESC) AS rnk
    FROM supermarts
    GROUP BY Region, Category
) t
WHERE rnk = 1;


-- Q3. Find customers with the highest total profit.
SELECT 
    Customer_Name,
    SUM(Profit) AS Total_Profit
FROM supermarts
GROUP BY Customer_Name
ORDER BY Total_Profit DESC;


-- Q4. Identify loss-making categories.
SELECT 
    Category,
    Customer_Name,
    SUM(Profit) AS Total_Profit
FROM supermarts
GROUP BY Category, Customer_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

-- Q4. Which category is most profitable?
SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM supermarts
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 1;

-- Q5. Which city has consistent high profits?
SELECT 
    City,
    SUM(Profit) AS Total_Profit
FROM supermarts
GROUP BY City
ORDER BY Total_Profit DESC
LIMIT 1;


-- Q6. Which State has consistent high profits?
SELECT 
    State,
    SUM(Profit) AS Total_Profit
FROM supermarts
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 1;

-- Q7. Find customers who placed more than one order
SELECT Customer_Name
FROM supermarts
GROUP BY Customer_Name
HAVING COUNT(ï»¿OrderID) > 1;

-- Q8. Get orders where discount is higher than average discount
SELECT ï»¿OrderID, Discount
FROM supermarts
WHERE Discount > (
    SELECT AVG(Discount)
    FROM supermarts
);


