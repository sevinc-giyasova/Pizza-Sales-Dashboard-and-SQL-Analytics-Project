SELECT 
    pizza_name, 
    sum(total_price)AS sum_price 
FROM public.pizza_sales
WHERE total_price > (SELECT avg(total_price) FROM public.pizza_sales)
GROUP BY pizza_name
ORDER BY sum(total_price) DESC