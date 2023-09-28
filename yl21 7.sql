SELECT first_name, round(SUM(price),2) AS Summa, count(*) 
AS Tellimuste_arv,
YEAR(order_date) 
AS Aasta
FROM d118820_work.orders o
LEFT JOIN books b
ON o.book_id = b.id
LEFT JOIN clients c
ON o.client_id = c.id
WHERE YEAR(order_date) = "2017"
GROUP BY client_id
ORDER BY SUM(price) DESC
;
