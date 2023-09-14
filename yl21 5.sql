SELECT SUM(price) AS Summa, count(*)
AS Tellimuste_arv,
YEAR(order_date)
AS Aasta
FROM d118820_work.orders o
LEFT JOIN books b
ON o.book_id = b.id
GROUP BY YEAR(order_date)
;
