SELECT count(*) AS Tellimuste_arv, YEAR(order_date) AS Aasta  FROM d118820_work.orders
GROUP BY YEAR(order_date);
