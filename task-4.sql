SELECT country, COUNT (country) AS number_of_customers FROM public.customers
GROUP BY country HAVING COUNT (country) > 5
ORDER BY number_of_customers DESC
