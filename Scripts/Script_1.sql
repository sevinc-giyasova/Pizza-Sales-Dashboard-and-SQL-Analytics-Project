WITH cte AS (SELECT 
    pizza_category, 
    pizza_name, 
    sum (total_price) AS sum_price, 
    dense_rank() OVER (PARTITION BY pizza_category ORDER BY sum (total_price) DESC) AS dense_rnk
FROM public.pizza_sales
GROUP BY pizza_category, pizza_name)

SELECT * FROM cte
WHERE dense_rnk = 1