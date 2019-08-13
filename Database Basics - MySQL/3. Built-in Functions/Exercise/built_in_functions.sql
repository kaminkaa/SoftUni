/* ###### 1 ###### */
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    SUBSTRING(first_name, 1, 2) = 'SA';

/* ###### 2 ###### */
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    last_name LIKE '%ei%';
    
/* ###### 3 ###### */
SELECT 
    first_name
FROM
    employees
WHERE
    department_id IN (3 , 10)
        AND YEAR(hire_date) BETWEEN 1995 AND 2005;
        
/* ###### 4 ###### */
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    job_title NOT LIKE '%engineer%';
    
/* ###### 5 ###### */
SELECT 
    name
FROM
    towns
WHERE
    CHAR_LENGTH(name) >= 5
        AND CHAR_LENGTH(name) <= 6
ORDER BY name;

/* ###### 6 ###### */
SELECT 
    *
FROM
    towns
WHERE
    name LIKE 'M%' OR name LIKE 'K%'
        OR name LIKE 'B%'
        OR name LIKE 'E%'
ORDER BY name ASC;

/* ###### 7 ###### */
SELECT 
    *
FROM
    towns
WHERE
    name NOT LIKE 'R%'
        AND name NOT LIKE 'B%'
        AND name NOT LIKE 'D%'
ORDER BY name;

/* ###### 8 ###### */
CREATE VIEW v_employees_hired_after_2000 AS
SELECT first_name, last_name FROM employees
WHERE YEAR(hire_date) > 2000;

SELECT 
    *
FROM
    v_employees_hired_after_2000;

/* ###### 9 ###### */
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    LENGTH(last_name) = 5;

/* ###### 10 ###### */
SELECT 
    country_name, iso_code
FROM
    countries
WHERE
    country_name LIKE '%A%A%A%'
ORDER BY iso_code;

/* ###### 11 ###### */
SELECT 
    peak_name,
    river_name,
    LOWER(CONCAT(p.peak_name,
                    LOWER(SUBSTRING(r.river_name, 2)))) AS `mix`
FROM
    peaks AS p,
    rivers AS r
WHERE
    RIGHT(p.peak_name, 1) = LEFT(r.river_name, 1)
ORDER BY `mix`;

/* ###### 12 ###### */
SELECT 
    name, DATE_FORMAT(start, '%Y-%m-%d') AS 'start'
FROM
    games
WHERE
    YEAR(start) >= 2011
        AND YEAR(start) <= 2012
ORDER BY start ASC , name
LIMIT 50;

/* ###### 13 ###### */
SELECT 
    `user_name` AS `Username`,
    SUBSTRING_INDEX(`email`, '@', - 1) AS 'Email Provider'
FROM
    `users`
ORDER BY `Email Provider` , `Username`;

/* ###### 14 ###### */
SELECT 
    user_name, ip_address
FROM
    users
WHERE
    ip_address LIKE '___.1%.%.___'
ORDER BY user_name;

/* ###### 15 ###### */
SELECT 
    `name` AS 'game',
    CASE
        WHEN HOUR(`start`) BETWEEN 0 AND 11 THEN 'Morning'
        WHEN HOUR(`start`) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN HOUR(`start`) BETWEEN 18 AND 23 THEN 'Evening'
    END AS 'Part of the Day',
    CASE
        WHEN `duration` <= 3 THEN 'Extra Short'
        WHEN `duration` BETWEEN 3 AND 6 THEN 'Short'
        WHEN `duration` BETWEEN 7 AND 10 THEN 'Long'
        ELSE 'Extra Long'
    END AS 'Duration'
FROM
    `games`;

/* ###### 16 ###### */
SELECT 
    product_name,
    order_date,
    DATE_ADD(order_date, INTERVAL 3 DAY) AS 'pay_due',
    DATE_ADD(order_date, INTERVAL 1 MONTH) AS 'order_due'
FROM
    orders;