WITH cte AS (SELECT 
    pizza_category, 
    sum(total_price) AS sum_price
FROM public.pizza_sales
GROUP BY pizza_category)

SELECT *, 
    round (sum_price * 100 / sum(sum_price) OVER (),2) AS sales_share
FROM cte
ORDER BY sales_share DESC
LIMIT 3