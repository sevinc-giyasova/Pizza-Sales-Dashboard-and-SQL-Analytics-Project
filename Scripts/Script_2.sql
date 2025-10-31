SELECT 
    count(quantity) AS count_quantity, 
    sum(total_price) AS sum_price 
FROM public.pizza_sales
WHERE EXTRACT (MONTH FROM order_date) = 1 AND EXTRACT (DAY FROM order_date) < 7