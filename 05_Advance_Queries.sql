-- Find the top 3 customers in each city based on their total spending
WITH
	TOTAL_SPENDING AS (
		SELECT
			C.CITY,
			C.CUSTOMER_ID,
			SUM(O.ORDER_VALUE) AS TOTAL_SPENT,
			DENSE_RANK() OVER (
				PARTITION BY
					C.CITY
				ORDER BY
					SUM(O.ORDER_VALUE) DESC
			) AS SPENDING_RANK
		FROM
			CUSTOMERS C
			INNER JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
		GROUP BY
			C.CITY,
			C.CUSTOMER_ID
	)
SELECT
	*
FROM
	TOTAL_SPENDING
WHERE
	SPENDING_RANK <= 3;
/* Find customers who are active in 2023 and have placed at least 2 orders but haven't placed any single
 order in 2024*/
SELECT
	CUSTOMER_ID
FROM
	ORDERS
WHERE
	EXTRACT(
		YEAR
		FROM
			ORDER_DATE
	) = 2023
GROUP BY
	CUSTOMER_ID
HAVING
	COUNT(ORDER_ID) >= 2
EXCEPT
SELECT
	CUSTOMER_ID
FROM
	ORDERS
WHERE
	EXTRACT(
		YEAR
		FROM
			ORDER_DATE
	) = 2024;
--Identify and label each customer based on their loyalty score and age
  SELECT 
    customer_id,
    loyalty_score,
    CASE 
        WHEN loyalty_score >= 85 AND age > 40 THEN 'Elite Elder'
        WHEN loyalty_score >= 85 THEN 'Elite'
        WHEN loyalty_score BETWEEN 50 AND 84 THEN 'Loyal'
        WHEN loyalty_score BETWEEN 20 AND 49 THEN 'Regular'
        ELSE 'New/At Risk'
    END AS customer_segment
FROM customers;



