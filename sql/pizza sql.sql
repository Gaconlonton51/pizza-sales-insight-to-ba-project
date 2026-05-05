DESCRIBE pizzas.pizza_sales
;
SELECT order_date, order_time FROM pizzas.pizza_sales LIMIT 5;
SELECT order_date, order_time 
FROM pizzas.pizza_sales 
ORDER BY pizza_id DESC 
LIMIT 5;
-- Tắt chế độ bảo vệ
SET SQL_SAFE_UPDATES = 0;

-- Đổi định dạng chuỗi ngày tháng sang YYYY-MM-DD
UPDATE pizzas.pizza_sales 
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

-- CHuyển cột order_date thành dạng DATE sql
ALTER TABLE pizzas.pizza_sales 
MODIFY COLUMN order_date DATE;

-- chuyển cột order_time thành dạng TIME sql
ALTER TABLE pizzas.pizza_sales 
MODIFY COLUMN order_time TIME;

-- Bật lại chế độ bảo vệ 
SET SQL_SAFE_UPDATES = 1;

-- Tổng doanh thu
Select Sum(total_price) as total_revenue from pizzas.pizza_sales
;
SELECT ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizzas.pizza_sales
;
SELECT Round(Sum(total_price)/ count(distinct order_id), 2) from pizzas.pizza_sales 
;
SELECT 
    DAYNAME(order_date) AS order_day, 
    COUNT(DISTINCT order_id) AS total_orders 
FROM pizzas.pizza_sales 
GROUP BY DAYNAME(order_date)
;
SELECT 
    HOUR(order_time) AS order_hours, 
    COUNT(DISTINCT order_id) AS total_orders
FROM pizzas.pizza_sales
GROUP BY HOUR(order_time)
ORDER BY HOUR(order_time)
;
SELECT 
    pizza_category, 
    ROUND(SUM(total_price), 2) AS total_revenue,
    ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizzas.pizza_sales), 2) AS PCT
FROM pizzas.pizza_sales
GROUP BY pizza_category
;
SELECT 
    pizza_name, 
    ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizzas.pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5
;
SELECT 
    pizza_name, 
    ROUND(SUM(total_price), 2) AS Total_Revenue
FROM pizzas.pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;