-- RETRIVE ALL CUSTOMER DATA

SELECT *
FROM customers

-- RETRIEVE ALL ORDERS DATA

SELECT *
FROM orders

--Retrieve each customer's name, country, and score.

SELECT 
	first_name,
	country,
	score
FROM customers

-- Retrieve customers with a score not equal to zero

SELECT *
FROM customers
WHERE score != 0

-- retrieve customers who are from Germany

SELECT 
	first_name,
	country
FROM customers 
WHERE country = 'Germany'

-- Retrieve all customers and sort the results by the highest score first

SELECT
	first_name,
	score
FROM customers
ORDER BY score DESC

SELECT
	first_name,
	score
FROM customers
ORDER BY score ASC

/*
Retrieve all customers and sort the results by the country and then by the
highest score
*/

SELECT *
FROM customers
ORDER BY 
	country ASC,
	score DESC

	-- Retrieve the total score for each country

SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country


-- Find the total score and the total number of customers for each country

SELECT
	country,
	COUNT (id) AS total_customers,
	SUM (score) AS total_score
FROM customers
GROUP BY country

/* Find the average score for each country considering 
only customers with a score not equal to 0 and 
return only those countries with an average score greater than 430
*/
SELECT
	country,
	AVG (score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430

-- Return unique list of all countries

select distinct
	country
from customers

-- Retrieve only 3 customers

SELECT TOP 2 *
FROM customers
a
-- Retrieve the top 3 customers with the Highest Score

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- Retrieve the Lowest 2 customers based on the score

SELECT TOP 2 *
FROM customers 
ORDER BY score ASC

-- Get the two most recent orders

SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC