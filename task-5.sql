SELECT EXTRACT (year from o.order_date) AS Year, 
EXTRACT (month FROM o.order_date) AS Month, 
COUNT(od.order_id), ROUND(SUM((od.unit_price*quantity)-(od.unit_price*quantity*discount))) AS sum 
FROM orders o, order_details od 
WHERE EXTRACT (year FROM o.order_date) = 1997
AND od.order_id = o.order_id
GROUP BY EXTRACT (year FROM o.order_date), EXTRACT(month FROM o.order_date)
;