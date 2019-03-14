--IMPLICET INNER JOIN, I LIKE THIES BETTER--
select CONCAT(first_name,' ',last_name) AS 'Customer Name',
    amount, orders.id AS 'order number',
    customers.id as 'customer id'
from customers, orders
where customers.id = orders.customer_id;


-- IMPLICIT INNER JOIN

SELECT *
FROM customers, orders
WHERE customers.id = orders.customer_id;
-- IMPLICIT INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOINS

SELECT *
FROM customers
    JOIN orders
    ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers
    JOIN orders
    ON customers.id = orders.customer_id;

SELECT *
FROM orders
    JOIN customers
    ON customers.id = orders.customer_id;
