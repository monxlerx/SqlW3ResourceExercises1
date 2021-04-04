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

--12
SELECT subject, winner FROM nobel_win WHERE year = 1970;

--13
SELECT * FROM nobel_win WHERE year = 1970 AND category = 'Literature';

--14
SELECT * FROM year, subject FROM nobel_win WHERE winner = 'Dennis Gabor';

--15
SELECT winner 
FROM nobel_win
WHERE year>=1950
AND subject='Physics';

--16 
SELECT year, subject, winner, country
FROM nobel_win
WHERE subject = 'Chemistry'
AND year>=1965 AND year<=1975;

--17
SELECT * FROM nobel_win
WHERE year >1972
AND winner IN ('Menachem Begin',
                  'Yitzhak Rabin');

--18
SELECT * FROM nobel_win
WHERE winner LIKE 'Louis %';

--19
SELECT * FROM nobel_win  WHERE (subject ='Physics' AND year=1970) UNION (SELECT * FROM nobel_win  WHERE (subject ='Economics' AND year=1971));

--20
SELECT * FROM nobel_win WHERE year = 1970 AND subject NOT IN ('Physiology', 'Economics');

--21
SELECT * FROM nobel_win WHERE (subject ='Physiology' AND year<1971) UNION (SELECT * FROM nobel_win WHERE (subject ='Peace' AND year>=1974));

--22
SELECT * FROM nobel_win WHERE winner = 'Johannes Georg Bednorz';

--23
SELECT * FROM nobel_win WHERE category NOT LIKE 'P%' ORDER BY year DESC, winner;

--24
SELECT *
FROM nobel_win
WHERE year=1970 
ORDER BY
 CASE
    WHEN subject IN ('Economics','Chemistry') THEN 1
    ELSE 0
 END ASC,
 subject,
 winner;

 --25 
 SELECT * FROM item_mast WHERE pro_price >= 200 and pro_price <= 600;

 --26
 SELECT AVG(pro_price) FROM item_mast WHERE pro_com = 16;

 --28
 SELECT pro_name, pro_price WHERE pro_price >= 250 ORDER BY pro_price DESC, pro_name;

 --29
 SELECT AVG(pro_price), pro_com
 FROM item_mast
 GROUP BY pro_com;

--30
SELECT pro_name, pro_price FROM item_mast WHERE pro_price = (SELECT MIN(pro_price) FROM item_mast);

--31
SELECT DISTINCT emp_name from emp_details;

--32
SELECT * FROM emp_details WHERE emp_name = 'Snares';

--33
SELECT * 
FROM emp_details 
WHERE emp_dept= 57;
