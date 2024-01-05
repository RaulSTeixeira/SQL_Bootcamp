-- RDBMS used: PostgreSQL

--COMPLETE THE FOLLOWING TASKS!

-- 1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
-- The answer should be customers 187 and 148.

-- 2. How many films begin with the letter J?
-- The answer should be 20.

-- 3. What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?
-- The answer is Eddie Tomlin

-- 1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.

Select customer_id, staff_id, sum(amount)
From payment
Where staff_id = 2
Group By customer_id, staff_id
Having sum(amount)> 110;

-- 2. How many films begin with the letter J?

Select Count(title) from film
Where title Like 'J%';

-- 3. What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?

Select first_name, customer_id, address_id, last_name from customer
Where first_name like 'E%' and address_id < 500 
Order By customer DESC
Limit 1;

