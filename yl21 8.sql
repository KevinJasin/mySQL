SELECT title, round(SUM(price),2) AS Summa, count(*) 
AS Tellimuste_arv,
YEAR(order_date) 
AS Aasta
FROM d118820_work.orders o
LEFT JOIN books b
ON o.book_id = b.id
LEFT JOIN clients c
ON o.client_id = c.id
GROUP BY book_id
ORDER BY SUM(price) DESC
LIMIT 10
;
