WITH cte AS (SELECT *, CASE
WHEN EXTRACT (HOUR FROM order_time) BETWEEN 6 AND 12 THEN 'Morning'
WHEN EXTRACT (HOUR FROM order_time) BETWEEN 13 AND 18 THEN 'Afternoon'
WHEN EXTRACT (HOUR FROM order_time) BETWEEN 19 AND 23 THEN 'Evening'
ELSE 'Night' END times_of_the_day
FROM public.pizza_sales)

SELECT times_of_the_day, 
        count(quantity) AS count_quantity 
FROM cte
GROUP BY times_of_the_day