-- Insert new customers in a table

INSERT INTO customers (id, first_name, country, score )
VALUES 
	(6, 'Arpit', 'India', 970),
	(7, 'Robin', 'Russia', NULL)


INSERT INTO customers (id, first_name)
VALUES 
	(8, 'Shivani'),
	(9, 'Eureka')
	  
SELECT * FROM customers


-- Insert data from 'customers' into 'persons'

SELECT
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers

INSERT INTO persons(customers)

SELECT * FROM persons

-- Change the score of customer with ID 6 to 0

UPDATE customers
SET score = 0
WHERE id = 6

-- Change the score of customers with ID 9 to 0 and update the country to 'UK'

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 9

-- Update all customers with a NULL score by setting their score to 0

UPDATE customers
SET score = 0
WHERE score IS NULL

-- Delete all the customers with an ID greater than 5

DELETE FROM customers
WHERE id > 5

SELECT *
FROM customers

-- Delete all the data from table persons

DELETE FROM persons

------------ OR we can use -------------

TRUNCATE TABLE persons

SELECT * FROM persons
