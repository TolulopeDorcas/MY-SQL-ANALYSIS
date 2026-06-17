CREATE DATABASE DecodeLab;
USE DecodeLab;
select * from decodelab.project3;

RENAME TABLE decodelab.project3 TO ECOMMERCE_DATA;

SELECT count(*) AS TOTAL_ORDERS
FROM ECOMMERCE_DATA;

SELECT  count(*)
FROM  ECOMMERCE_DATA
WHERE PaymentMethod = 'Online';

SELECT  count(*)
FROM  ECOMMERCE_DATA
WHERE PaymentMethod = 'Cash';

SELECT  count(*)
FROM  ECOMMERCE_DATA
WHERE PaymentMethod = 'Credit card';

SELECT  count(*)
FROM  ECOMMERCE_DATA
WHERE PaymentMethod = 'Debit card';

SELECT  count(*)
FROM  ECOMMERCE_DATA
WHERE PaymentMethod = 'Gift card';

select Product, count(*) AS ORDERS, ROUND(AVG(UnitPrice*Quantity)) AS AVGORDERVALUE
FROM ECOMMERCE_DATA
GROUP BY Product
ORDER BY AVGORDERVALUE DESC;

-- CANCELLATION RATE BY PRODUCT
SELECT Product,
    COUNT(*) AS TOTALORDERS,
    count(CASE WHEN OrderStatus = 'Cancellled'then 1 end) as cancelledorders,
	count(case when OrderStatus='Returned'then 1 end) as returnedorders
    from ECOMMERCE_DATA
GROUP BY PRODUCT;

SELECT Product,
ROUND(min(UnitPrice*Quantity)) AS MIN_ORDER,
ROUND(max(UnitPrice*Quantity)) AS MAX_ORDER,
round(SUM(UnitPrice*Quantity)) AS TOTALREVENUE
FROM ECOMMERCE_DATA
GROUP BY Product;

-- PRODUCTS WITH EXTREME PRICE RANGE
SELECT Product,
ROUND(MAX(UnitPrice*Quantity)-MIN(UnitPrice*Quantity)) AS PRICERANGE,
ROUND(AVG(UnitPrice*Quantity)) AS AVERAGEPRICE
FROM ECOMMERCE_DATA
GROUP BY Product
HAVING PRICERANGE>1000
ORDER BY PRICERANGE DESC;





 
