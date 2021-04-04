--1
SELECT * FROM salesman;

--3
SELECT 5, 10, 15;

--4 
SELECT 10 + 15;

--5
SELECT 10 + 15 - 5 * 2;

--6
SELECT commission, name FROM salesman;

--7
SELECT ord_data as orderdate, salesman_id as salesman id, ord_no order as number, purch_amt as purchase amount from orders;

--8
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

--9
SELECT name, city FROM salesman WHERE city = 'Paris';

--10
SELECT * FROM customer WHERE grade = 200;

--11
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id=5001;


