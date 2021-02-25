SELECT product_name, ROUND(SUM((public.order_details.unit_price*quantity)-(public.order_details.unit_price*quantity*discount))) AS sum 
FROM public.order_details 
JOIN public.products
ON order_details.product_id = products.product_id
GROUP BY product_name
ORDER BY sum ASC
LIMIT 10
