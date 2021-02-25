SELECT public.customers.customer_id, company_name, COUNT(public.customers.customer_id) AS Orders, 
STRING_AGG(orders.order_id ::varchar,',') AS order_ids
FROM public.customers
JOIN public.orders
ON public.customers.customer_id = public.orders.customer_id
WHERE country = 'USA'
GROUP BY public.customers.customer_id HAVING COUNT(public.customers.customer_id) < 5
ORDER BY Orders ASC;
