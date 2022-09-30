-- Q6-1: Practice of String functions
-- CONCAT()
select concat(symbol, " ", company_name) as name
from nasdaq_company;

-- CAST(), CONVERT()
select
  cast(ipo_year as char(50)), cast(open_price as char(50))
from nasdaq_company
where symbol = 'MSFT';

select
  convert(ipo_year, char(50)), convert(open_price, char(50))
from nasdaq_company
where symbol = 'MSFT';

-- IFNULL(), COALESCE()
select symbol, ifnull(sector, 'This is NULL'), open_price
from nasdaq_company
where symbol = 'DBA';

-- LOWER(), UPPER()
select LOWER('AtoI SQL'), UPPER('AtoI SQL');

-- LTRIM(), RTRIM(), TRIM()
select LTRIM('     AtoI SQL'),
       RTRIM('AtoI SQL     '),
       TRIM('     AtoI SQL    '),
       TRIM('!' from '     AtoI SQL    !');

-- LENGTH()
select LENGTH('AtoI SQL!');

-- POSITION()
select POSITION('!' in 'AtoI SQL!');

-- LEFT(), RIGHT()
select LEFT('AtoI SQL!', 3);
select RIGHT('AtoI SQL!', 3);

-- SUBSTRING()
select SUBSTRING('AtoI SQL!', 6, 3);

-- REPLACE()
select REPLACE('AtoI SQL!', 'SQL', 'Python');

-- SPACE()
select SPACE(10);

-- REVERSE()
select REVERSE('AtoI SQL!');




