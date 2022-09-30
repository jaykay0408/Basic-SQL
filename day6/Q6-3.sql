-- Q6-3: Practice of Aggregate functions
-- COUNT()
select COUNT(*) from nasdaq_company;
select COUNT(sector) from nasdaq_company;
select COUNT(DISTINCT sector) from nasdaq_company;

-- SUM()
select SUM(close_price) from nasdaq_company;
select SUM(DISTINCT close_price) from nasdaq_company;

-- AVG()
select AVG(close_price) from nasdaq_company;
select AVG(DISTINCT close_price) from nasdaq_company;

-- MIN(), MAX()
select MIN(close_price), MAX(close_price) from nasdaq_company;

-- STDDEV()
select STDDEV(close_price) from nasdaq_company;

-- GROUP BY WITH ROLLUP
select sector, industry, SUM(close_price)
from nasdaq_company
group by sector, industry WITH ROLLUP;

