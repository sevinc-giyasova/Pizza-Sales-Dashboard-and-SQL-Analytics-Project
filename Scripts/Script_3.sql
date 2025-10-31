SELECT 
    pizza_size, 
    sum(total_price) AS sum_price 
FROM public.pizza_sales
GROUP BY pizza_size
ORDER BY sum(total_price) DESC
LIMIT 1