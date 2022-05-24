# 1. Union
SELECT column_name(s) FROM table_name1
UNION
SELECT column_name(s) FROM table_name2;

# 2. Left Join (not including the overlapping part)
# mysolution
SELECT name AS Customers
FROM Customers
LEFT JOIN Orders 
ON Customers.id = Orders.customerId
WHERE Orders.customerId IS NULL
# LeetCode solution
select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);

# 3. CASE WHEN
SELECT employee_id,
			 CASE WHEN employee_id % 2 != 0 AND name NOT LIKE 'M%' THEN salary
       ELSE 0 END AS bonus
FROM Employees;

