SELECT category_name AS category, COUNT(category_name) AS number_of_products FROM public.categories
JOIN public.products
ON products.category_id = categories.category_id
GROUP BY category_name
ORDER BY number_of_products DESC 