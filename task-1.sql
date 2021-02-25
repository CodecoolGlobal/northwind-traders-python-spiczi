SELECT product_name AS product, company_name AS company FROM public.products
JOIN public.suppliers
ON products.supplier_id = suppliers.supplier_id
ORDER BY product_name ASC 